Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64E827C174
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727872AbfGaMhp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:37:45 -0400
Received: from andre.telenet-ops.be ([195.130.132.53]:38958 "EHLO
        andre.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726259AbfGaMhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:37:45 -0400
Received: from ramsan ([84.194.98.4])
        by andre.telenet-ops.be with bizsmtp
        id jQdj2000L05gfCL01QdjJg; Wed, 31 Jul 2019 14:37:43 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hsnrT-0008U3-CT; Wed, 31 Jul 2019 14:37:43 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hsnrT-0003dh-Az; Wed, 31 Jul 2019 14:37:43 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] scripts/dtc: dtx_diff - add color output support
Date:   Wed, 31 Jul 2019 14:37:41 +0200
Message-Id: <20190731123741.13947-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new -c/--color options, to enhance the diff output with color, and
improve the user's experience.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 scripts/dtc/dtx_diff | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
index e9ad7834a22d9459..4e2c8617f69a333e 100755
--- a/scripts/dtc/dtx_diff
+++ b/scripts/dtc/dtx_diff
@@ -20,6 +20,8 @@ Usage:
 
 
       --annotate    synonym for -T
+      --color       synonym for -c
+       -c           enable colored output
        -f           print full dts in diff (--unified=99999)
        -h           synonym for --help
        -help        synonym for --help
@@ -178,6 +180,7 @@ compile_to_dts() {
 annotate=""
 cmd_diff=0
 diff_flags="-u"
+diff_color=""
 dtx_file_1=""
 dtx_file_2=""
 dtc_sort="-s"
@@ -189,6 +192,11 @@ while [ $# -gt 0 ] ; do
 
 	case $1 in
 
+	-c | --color )
+		diff_color="--color=always"
+		shift
+		;;
+
 	-f )
 		diff_flags="--unified=999999"
 		shift
@@ -344,7 +352,7 @@ DTC="\
 
 if (( ${cmd_diff} )) ; then
 
-	diff ${diff_flags} --label "${dtx_file_1}" --label "${dtx_file_2}" \
+	diff ${diff_flags} ${diff_color} --label "${dtx_file_1}" --label "${dtx_file_2}" \
 		<(compile_to_dts "${dtx_file_1}" "${dtx_path_1_dtc_include}") \
 		<(compile_to_dts "${dtx_file_2}" "${dtx_path_2_dtc_include}")
 
-- 
2.17.1

