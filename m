Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABE66502E34
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 19:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242861AbiDORGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 13:06:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236204AbiDORGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 13:06:11 -0400
X-Greylist: delayed 448 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 15 Apr 2022 10:03:41 PDT
Received: from mail.multiname.org (unknown [IPv6:2a01:4f8:160:11d1::1:107])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7504593AD
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 10:03:41 -0700 (PDT)
Received: from huygens.ccbib.org (unknown [10.0.10.112])
        by mail.multiname.org (Postfix) with SMTP id 4Kg2XV0TYRzKv0QF;
        Fri, 15 Apr 2022 16:56:09 +0000 (UTC)
Received: by huygens.ccbib.org (sSMTP sendmail emulation); Fri, 15 Apr 2022 16:56:09 +0000
From:   Harald Geyer <harald@ccbib.org>
To:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        Torsten Duwe <duwe@suse.de>, Harald Geyer <harald@ccbib.org>
Subject: [PATCH] arm64: dts: allwinner: teres-i: Add GPIO port regulators
Date:   Fri, 15 Apr 2022 16:56:05 +0000
Message-Id: <20220415165605.28560-1-harald@ccbib.org>
X-Mailer: git-send-email 2.11.0
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RDNS_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.

Usually supplies are linked via the 'regulator-name' property of
regulator nodes. However when regulators are shared we need to
declare the additional links in the pinctrl node.

Signed-off-by: Harald Geyer <harald@ccbib.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index aff0660b899c..cc316ef2e2d6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -197,6 +197,11 @@ &ohci1 {
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_dcdc1>;
+	vcc-pg-supply = <&reg_aldo2>;
+};
+
 &pwm {
 	status = "okay";
 };
-- 
2.35.2

