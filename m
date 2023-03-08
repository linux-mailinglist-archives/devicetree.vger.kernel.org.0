Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCEED6B07B9
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:01:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231436AbjCHNBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:01:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbjCHNAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:00:37 -0500
Received: from smtp-8faa.mail.infomaniak.ch (smtp-8faa.mail.infomaniak.ch [IPv6:2001:1600:4:17::8faa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DCC4C4895
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:59:58 -0800 (PST)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWsgG2jSXzMq1SS;
        Wed,  8 Mar 2023 13:53:14 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWsgF62cCzMslsN;
        Wed,  8 Mar 2023 13:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678279994;
        bh=3Fq7e9gmvQWCP55e4sk+hcFy+Fc7/kfRQcUVSGJF8k0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ZVu4KzasXOCai9IGFhoTUTzv11Dz3wOyKNN+emCN4z9dpQp8UleEgvaOclCS+dNq3
         y6QCB3OiOpx7VksRS1jeqA1QymViSYjs5MMxibDMGV/pCB5UyjFkqIphijM4L+FBDi
         ppHkjTEcfKrrANYWHs3AysMZrW002rAGOC1C4s9M=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 13/25] arm64: dts: colibri-imx8x: Add gpio-line-names
Date:   Wed,  8 Mar 2023 13:52:47 +0100
Message-Id: <20230308125300.58244-14-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308125300.58244-1-dev@pschenker.ch>
References: <20230308125300.58244-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Philippe Schenker <philippe.schenker@toradex.com>

This commit adds gpio-line-names in line with other SoM from Toradex.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 .../boot/dts/freescale/imx8x-colibri.dtsi     | 152 ++++++++++++++++++
 1 file changed, 152 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index cfa2c569e01c..9555cfa8b27e 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -98,6 +98,158 @@ &lpspi2 {
 	cs-gpios = <&lsio_gpio1 0 GPIO_ACTIVE_LOW>;
 };
 
+&lsio_gpio0 {
+	gpio-line-names = "",
+			  "SODIMM_70",
+			  "SODIMM_60",
+			  "SODIMM_58",
+			  "SODIMM_78",
+			  "SODIMM_72",
+			  "SODIMM_80",
+			  "SODIMM_46",
+			  "SODIMM_62",
+			  "SODIMM_48",
+			  "SODIMM_74",
+			  "SODIMM_50",
+			  "SODIMM_52",
+			  "SODIMM_54",
+			  "SODIMM_66",
+			  "SODIMM_64",
+			  "SODIMM_68",
+			  "",
+			  "",
+			  "SODIMM_82",
+			  "SODIMM_56",
+			  "SODIMM_28",
+			  "SODIMM_30",
+			  "",
+			  "SODIMM_61",
+			  "SODIMM_103",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_25",
+			  "SODIMM_27",
+			  "SODIMM_100";
+};
+
+&lsio_gpio1 {
+	gpio-line-names = "SODIMM_86",
+			  "SODIMM_92",
+			  "SODIMM_90",
+			  "SODIMM_88",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_59",
+			  "",
+			  "SODIMM_6",
+			  "SODIMM_8",
+			  "",
+			  "",
+			  "SODIMM_2",
+			  "SODIMM_4",
+			  "SODIMM_34",
+			  "SODIMM_32",
+			  "SODIMM_63",
+			  "SODIMM_55",
+			  "SODIMM_33",
+			  "SODIMM_35",
+			  "SODIMM_36",
+			  "SODIMM_38",
+			  "SODIMM_21",
+			  "SODIMM_19",
+			  "SODIMM_140",
+			  "SODIMM_142",
+			  "SODIMM_196",
+			  "SODIMM_194",
+			  "SODIMM_186",
+			  "SODIMM_188",
+			  "SODIMM_138";
+};
+
+&lsio_gpio2 {
+	gpio-line-names = "SODIMM_23",
+			  "",
+			  "",
+			  "SODIMM_144";
+};
+
+&lsio_gpio3 {
+	gpio-line-names = "SODIMM_96",
+			  "SODIMM_75",
+			  "SODIMM_37",
+			  "SODIMM_29",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_43",
+			  "SODIMM_45",
+			  "SODIMM_69",
+			  "SODIMM_71",
+			  "SODIMM_73",
+			  "SODIMM_77",
+			  "SODIMM_89",
+			  "SODIMM_93",
+			  "SODIMM_95",
+			  "SODIMM_99",
+			  "SODIMM_105",
+			  "SODIMM_107",
+			  "SODIMM_98",
+			  "SODIMM_102",
+			  "SODIMM_104",
+			  "SODIMM_106";
+};
+
+&lsio_gpio4 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "SODIMM_129",
+			  "SODIMM_133",
+			  "SODIMM_127",
+			  "SODIMM_131",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_44",
+			  "",
+			  "SODIMM_76",
+			  "SODIMM_31",
+			  "SODIMM_47",
+			  "SODIMM_190",
+			  "SODIMM_192",
+			  "SODIMM_49",
+			  "SODIMM_51",
+			  "SODIMM_53";
+};
+
+&lsio_gpio5 {
+	gpio-line-names = "",
+			  "SODIMM_57",
+			  "SODIMM_65",
+			  "SODIMM_85",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SODIMM_135",
+			  "SODIMM_137",
+			  "UNUSABLE_SODIMM_180",
+			  "UNUSABLE_SODIMM_184";
+};
+
 /* On-module eMMC */
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-- 
2.39.2

