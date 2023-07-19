Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1162759903
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 17:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231460AbjGSPA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 11:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231393AbjGSPA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 11:00:26 -0400
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF19F1986
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 08:00:20 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:51f7:4083:c317:cdf])
        by andre.telenet-ops.be with bizsmtp
        id P30G2A00L2xuRWb0130GGT; Wed, 19 Jul 2023 17:00:16 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtp (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1qM8es-001tPx-F6;
        Wed, 19 Jul 2023 17:00:16 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1qM8f2-001Ati-GE;
        Wed, 19 Jul 2023 17:00:16 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>
Cc:     devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 12/13] of: unittest-data: Fix whitespace - indentation
Date:   Wed, 19 Jul 2023 17:00:12 +0200
Message-Id: <e8df93eede70a71783249c481c4c6242846cefab.1689776064.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1689776064.git.geert+renesas@glider.be>
References: <cover.1689776064.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Single space for each indentation level.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/of/unittest-data/overlay_bad_add_dup_node.dtso | 6 +++---
 drivers/of/unittest-data/overlay_bad_add_dup_prop.dtso | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/of/unittest-data/overlay_bad_add_dup_node.dtso b/drivers/of/unittest-data/overlay_bad_add_dup_node.dtso
index a8d8534f725c10ea..11aa1401244d9685 100644
--- a/drivers/of/unittest-data/overlay_bad_add_dup_node.dtso
+++ b/drivers/of/unittest-data/overlay_bad_add_dup_node.dtso
@@ -21,7 +21,7 @@ controller {
 };
 
 &spin_ctrl_1 {
-		controller {
-			power_bus_emergency = < 0x101 0x102 >;
-		};
+	controller {
+		power_bus_emergency = < 0x101 0x102 >;
+	};
 };
diff --git a/drivers/of/unittest-data/overlay_bad_add_dup_prop.dtso b/drivers/of/unittest-data/overlay_bad_add_dup_prop.dtso
index 3f0ee9cbefb815be..5af099cc2174e273 100644
--- a/drivers/of/unittest-data/overlay_bad_add_dup_prop.dtso
+++ b/drivers/of/unittest-data/overlay_bad_add_dup_prop.dtso
@@ -32,7 +32,7 @@ electric {
 };
 
 &spin_ctrl_1 {
-		electric {
-			rpm_avail = < 100 200 >;
-		};
+	electric {
+		rpm_avail = < 100 200 >;
+	};
 };
-- 
2.34.1

