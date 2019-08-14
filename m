Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D1A5B8CF27
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 11:18:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725888AbfHNJSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 05:18:37 -0400
Received: from albert.telenet-ops.be ([195.130.137.90]:48852 "EHLO
        albert.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725861AbfHNJSg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 05:18:36 -0400
Received: from ramsan ([84.194.98.4])
        by albert.telenet-ops.be with bizsmtp
        id oxJZ2000J05gfCL06xJZtd; Wed, 14 Aug 2019 11:18:35 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hxpQP-0003Ri-Bb; Wed, 14 Aug 2019 11:18:33 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hxpQP-0003Jh-AD; Wed, 14 Aug 2019 11:18:33 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2] scripts/dtc: dtx_diff - add color output support
Date:   Wed, 14 Aug 2019 11:18:32 +0200
Message-Id: <20190814091832.12707-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new -c/--color options, to enhance the diff output with color, and
improve the user's experience.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Document that -c/--color requires a diff command with color support,
  - Ignore -c/--color if diff command lacks color support.
---
 scripts/dtc/dtx_diff | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
index e9ad7834a22d9459..d3422ee15e300bc7 100755
--- a/scripts/dtc/dtx_diff
+++ b/scripts/dtc/dtx_diff
@@ -20,6 +20,8 @@ Usage:
 
 
       --annotate    synonym for -T
+      --color       synonym for -c (requires diff with --color support)
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
@@ -189,6 +192,13 @@ while [ $# -gt 0 ] ; do
 
 	case $1 in
 
+	-c | --color )
+		if diff --color /dev/null /dev/null 2>/dev/null ; then
+			diff_color="--color=always"
+		fi
+		shift
+		;;
+
 	-f )
 		diff_flags="--unified=999999"
 		shift
@@ -344,7 +354,7 @@ DTC="\
 
 if (( ${cmd_diff} )) ; then
 
-	diff ${diff_flags} --label "${dtx_file_1}" --label "${dtx_file_2}" \
+	diff ${diff_flags} ${diff_color} --label "${dtx_file_1}" --label "${dtx_file_2}" \
 		<(compile_to_dts "${dtx_file_1}" "${dtx_path_1_dtc_include}") \
 		<(compile_to_dts "${dtx_file_2}" "${dtx_path_2_dtc_include}")
 
-- 
2.17.1

