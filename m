Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 059A0515FFA
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 21:10:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbiD3TOG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 15:14:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241276AbiD3TN7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 15:13:59 -0400
Received: from mail.multiname.org (unknown [IPv6:2a01:4f8:160:11d1::1:107])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D44C26E7
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 12:10:34 -0700 (PDT)
Received: from huygens.ccbib.org (unknown [10.0.10.112])
        by mail.multiname.org (Postfix) with SMTP id 4KrJpW2cSqzKtyYG;
        Sat, 30 Apr 2022 19:10:27 +0000 (UTC)
Received: by huygens.ccbib.org (sSMTP sendmail emulation); Sat, 30 Apr 2022 19:10:27 +0000
From:   Harald Geyer <harald@ccbib.org>
To:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        Torsten Duwe <duwe@suse.de>, Harald Geyer <harald@ccbib.org>
Subject: [PATCHv2] arm64: dts: allwinner: teres-i: Add GPIO port regulators
Date:   Sat, 30 Apr 2022 19:10:09 +0000
Message-Id: <20220430191009.73946-1-harald@ccbib.org>
X-Mailer: git-send-email 2.11.0
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RDNS_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.

Signed-off-by: Harald Geyer <harald@ccbib.org>
---
Changes since v1:
 * Add supplies for PD and PE even though they are matched from
   'regulator-name' properties, as this is a Linuxism.
 * Add generic IO voltage as supply for PF as this is an implicit
   (chip internal) dependency.

 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index aff0660b899c..1128030e4c25 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -197,6 +197,14 @@ &ohci1 {
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_dcdc1>;
+	vcc-pd-supply = <&reg_dldo2>;
+	vcc-pe-supply = <&reg_aldo1>;
+	vcc-pf-supply = <&reg_dcdc1>;  /* No dedicated supply-pin for this */
+	vcc-pg-supply = <&reg_aldo2>;
+};
+
 &pwm {
 	status = "okay";
 };
-- 
2.35.2

