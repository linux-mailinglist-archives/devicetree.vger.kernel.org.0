Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA5F4F1316
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 12:28:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353761AbiDDKaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 06:30:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245337AbiDDKaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 06:30:15 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C4DA3CA52
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 03:28:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 41900B8128F
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30A6DC34112;
        Mon,  4 Apr 2022 10:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649068096;
        bh=2wfmRz6l+pG2FSxfZK6bQul1hCfuJBdmCyXl3zxxdWw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=fn01HiAMV6x9AWE+aif4fnbjRKyyPkrApAwJEXdzx1mP9aicxEh4S4RClL+19biU7
         xUrxYsEWE8MSSB1awWuJZdSzk/JAKcJgjO7Cj1KNxRJDxOW1bK/FL1cUcJFPvxMAST
         3PyxZkvONzcqvK+5uuuCLt03RelzV+YVPJJlSer3p7st4Pfrp2XNR1tngL0ABMhLu0
         wT577Xu6NBDE7L53fRoWQxu75TyZSNekKRS6Ke+t9B6/llbpYi6g2JrYSYELH2pzf+
         3+wyMc5FwLGB2CWRHRassWzku1MtyzgPq36XNOOU6mhTVLreGE+JgbmJE7YSjLtfPh
         91lL2MfkiNnOA==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 2/2] ARM: dts: at91: Describe regulators on at91sam9g20ek
Date:   Mon,  4 Apr 2022 11:28:06 +0100
Message-Id: <20220404102806.581374-3-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220404102806.581374-1-broonie@kernel.org>
References: <20220404102806.581374-1-broonie@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2090; h=from:subject; bh=2wfmRz6l+pG2FSxfZK6bQul1hCfuJBdmCyXl3zxxdWw=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiSsg1ImQngzUfB+hM4dF2QvCdYteOq//mFrAeNXVk Z9i7mUSJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYkrINQAKCRAk1otyXVSH0EwXB/ 0TqxFfYdVTnMw0X4bagcqa3gLbweGDUapSDkWLBZEHfaKmQvEkGrcy07RZRbCM0LkFPQylLBHdpbP1 ebKEKNq3KysQ+5QZz9Xej1rxRNdtufc6lCo8z644XFmKgNj8DBz4r5sfYrGxVlYhxvOSvtOzkcpuyg 85coO5gnJqB01+anNb5D9uAavqumgk3vCXjQQHPW6wPAl0AM8gqO7r6aCVkZ0Ym7rRtYh8npc8wS1l 6zZbK0fEkAYu6Dtw6mMo27ecmYG8zVge7bke4AO7kxZWLW7tcqqUPTSz9ASO66xoB/VRH1oxIm9W80 ZZnyEtc7XA5zil7fMRiw80WKc8AFfn
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The at91sam9g20ek has no software controllable regulators, only some fixed
discrete regulators, but they are there and currently the wm8731 driver
does try to use them. Show the supplies in the DT and map them for the
wm8731 so things start up cleanly.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm/boot/dts/at91sam9g20ek_common.dtsi | 37 +++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/at91sam9g20ek_common.dtsi b/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
index ca03685f0f08..6978ccb0cb26 100644
--- a/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
+++ b/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
@@ -214,6 +214,7 @@ i2c-gpio-0 {
 		24c512@50 {
 			compatible = "atmel,24c512";
 			reg = <0x50>;
+			vcc-supply = <&reg_3v3>;
 		};
 
 		wm8731: wm8731@1b {
@@ -225,6 +226,11 @@ wm8731: wm8731@1b {
 			clock-names = "mclk";
 			assigned-clocks = <&pmc PMC_TYPE_SYSTEM 8>;
 			assigned-clock-rates = <12000000>;
+
+			HPVDD-supply = <&vcc_dac>;
+			AVDD-supply = <&vcc_dac>;
+			DCVDD-supply = <&reg_3v3>;
+			DBVDD-supply = <&reg_3v3>;
 		};
 	};
 
@@ -260,4 +266,35 @@ sound {
 		atmel,ssc-controller = <&ssc0>;
 		atmel,audio-codec = <&wm8731>;
 	};
+
+	reg_5v: fixedregulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_3v3: fixedregulator1 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		vin-supply = <&reg_5v>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_1v: fixedregulator2 {
+		compatible = "regulator-fixed";
+		regulator-name = "1V";
+		vin-supply = <&reg_5v>;
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+	};
+
+	vcc_dac: fixedregulator3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_DAC";
+		vin-supply = <&reg_3v3>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
 };
-- 
2.30.2

