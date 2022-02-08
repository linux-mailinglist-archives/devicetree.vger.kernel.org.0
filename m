Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 880384AD8BA
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245603AbiBHNPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357503AbiBHMdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:33:05 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA2ABC03FEC0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323584; x=1675859584;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vF8dUDxBLg/KOBc9PRSd0SMrgfYJLbgm+N3PEriXxXg=;
  b=CiOp0PSyIHdm+152HQafrkk7xQ1vU34w4cs0/G63MTtrbK7gD8KSLeJg
   jL3GLXkNLrNwtmPrwR1yyfcrAAqPU2D0X0clh9n6/e6e41xLxWKSfCZuu
   66iqbZRwTi8+AFddECrkGqKBpCqXNMlC3XC0XHH5Owp01k/gA/h+4KzeF
   X7ZDw6AGcNK+K9BxNok2TyeQXtFE+ERUCr+FFFBZ6iBakREiN3gGWED9h
   XJWznff0j6c41ddGRWlPxpGovhxX+KhOajLIFPum+jUq9F9sJT879YWvy
   0lUOS8SgYuVzfWf69L48mkExj6/Q5uDpF1vusn6mRkCrRoS4hcq2n3eK2
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960357"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 13:32:59 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 13:32:59 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 13:32:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323579; x=1675859579;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vF8dUDxBLg/KOBc9PRSd0SMrgfYJLbgm+N3PEriXxXg=;
  b=iptnQOEPq+X+36ozhw2m7ykG1Fy327s1c+b+QbAgAEBBPzJI/bYTXcVW
   PPmO7XZn/LM2kUuj2OnuHBlJEcinvj3GUimgm91e/gIJgMsbbVN1/WQJg
   9pi4kWoDEwfMmeeGCUaSgNeHyFpiLAA6Q+fATNGMOJZf43WNqdRYnGsCE
   lubjBj+vkNpXAlg4kUAg1HmoG8lKnuVq5XzjI9H80UR1fmeNtsdTQVLdh
   Nu//EizNDHvrnmQh4LYtpZTj4RpixTR6D7RwmOY6Dpv2Gek+PChVka2jN
   R46CwMOwwVXCF8bZtdUPY1CadeFGmfDyORVZgwECTNMtjn3STch4M7hVz
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960356"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 13:32:59 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C2F1328007C;
        Tue,  8 Feb 2022 13:32:58 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] ARM: dts: imx6qdl-mba6: Move pinmux to regulator node
Date:   Tue,  8 Feb 2022 13:32:48 +0100
Message-Id: <20220208123248.821826-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
References: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

GPIO2_IO00 is used by reg_pcie, move the pinmuxing to this node as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 9aacc1a62189..f4dca20669d6 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -86,6 +86,8 @@ reg_mba6_3p3v: regulator-mba6-3p3v {
 
 	reg_pcie: regulator-pcie {
 		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_regpcie>;
 		regulator-name = "supply-pcie";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
@@ -436,8 +438,6 @@ pinctrl_pcie: pciegrp {
 			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x001b0f0 /* #PCIE.WAKE */
 			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07 0x001b0f0 /* #PCIE.RST */
 			MX6QDL_PAD_NANDF_CS0__GPIO6_IO11 0x001b0f0 /* #PCIE.DIS */
-			/* HYS = 1, DSE = 110, PUE+PKE, SPEED = HIGH (11)*/
-			MX6QDL_PAD_NANDF_D0__GPIO2_IO00 0x00130f0 /* PCIE.PWR_EN */
 		>;
 	};
 
@@ -462,6 +462,13 @@ MX6QDL_PAD_SD4_DAT2__PWM4_OUT 0x00003050
 		>;
 	};
 
+	pinctrl_regpcie: regpciegrp {
+		fsl,pins = <
+			/* HYS = 1, DSE = 110, PUE+PKE, SPEED = HIGH (11)*/
+			MX6QDL_PAD_NANDF_D0__GPIO2_IO00 0x00130f0 /* PCIE.PWR_EN */
+		>;
+	};
+
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA 0x1b099
-- 
2.25.1

