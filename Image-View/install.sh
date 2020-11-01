image_view() {
 for i in album gallery image photo *; do
  local app="$(dumpsys package r | grep -A6 ".dir/image" | cut -d" " -f10 | cut -d"/" -f1 | sort | egrep -i "$i" | uniq | head -n1)"
  [ "$app" ] && break
 done
  [ "$app" ] || { ui_print " Image display not supported! Skipping"; return 1; }
  # Best to use a set name - in the event there's more than 1 picture in the directory you choose other than dev/tmp, installer will always use the right one
 for i in png jpg jpeg; do
  [ -f "$MODPATH/common/addon/Image-View/image.$i" ] && { local pic="image.$i"; break; }
 done
  [ "$pic" ] || { ui_print " Image display not supported! Skipping"; return 1; }
  cp -f $MODPATH/common/addon/Image-View/$pic $TMPDIR/$pic 2>/dev/null
  chcon u:object_r:system_file:s0 $TMPDIR/$pic
  (am start --user 0 -a android.intent.action.VIEW -t image/* -d file://$TMPDIR/$pic $app) >/dev/null && sleep 3 && killall $app || ui_print " Error displaying image! Skipping"; 
}
