Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80D0E68C2CE
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 17:17:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231263AbjBFQRI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 11:17:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbjBFQRI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 11:17:08 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71B4830E5
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 08:17:03 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:5f4c:1e23:9c34:1a39])
        by xavier.telenet-ops.be with bizsmtp
        id HsH02900V3XDBUl01sH0VD; Mon, 06 Feb 2023 17:17:01 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtp (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1pP4Ad-008DXU-ML;
        Mon, 06 Feb 2023 17:17:00 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1pP4Au-00Emwu-IZ;
        Mon, 06 Feb 2023 17:17:00 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree-compiler@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] fdtoverlay: Remove bogus type info from help text
Date:   Mon,  6 Feb 2023 17:16:59 +0100
Message-Id: <20230206161659.3524743-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"fdtoverlay -h" shows a.o.:

    <type>	s=string, i=int, u=unsigned, x=hex
	    Optional modifier prefix:
		    hh or b=byte, h=2 byte, l=4 byte (default)

However, unlike fdtget and fdtput, fdtoverlay does not support the
"-t"/"--type" option.

Fixes: 42409146f2db22d7 ("fdtoverlay: A tool that applies overlays")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Applies to linux/scripts/dtc/, too.

 fdtoverlay.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fdtoverlay.c b/fdtoverlay.c
index 5350af65679f7fbd..cac6b6576c289c18 100644
--- a/fdtoverlay.c
+++ b/fdtoverlay.c
@@ -23,9 +23,7 @@
 /* Usage related data. */
 static const char usage_synopsis[] =
 	"apply a number of overlays to a base blob\n"
-	"	fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]\n"
-	"\n"
-	USAGE_TYPE_MSG;
+	"	fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]";
 static const char usage_short_opts[] = "i:o:v" USAGE_COMMON_SHORT_OPTS;
 static struct option const usage_long_opts[] = {
 	{"input",            required_argument, NULL, 'i'},
-- 
2.34.1

