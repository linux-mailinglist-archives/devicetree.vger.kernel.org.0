Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9999D25F84F
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 12:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728820AbgIGKbZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 06:31:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728941AbgIGK2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 06:28:10 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85DB1C061573
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 03:28:09 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id lo4so17551234ejb.8
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 03:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zC3AjkfkprEZqAAF7NrLvBA7iHOLdrgU623W0AvOrc8=;
        b=xev6xkOJ3ERQwgt6zd2d2oVhYHp0aaQN+/YNUtlkUOMGMF2VXFkbu+9pSzDWQi4XwK
         xiRo7rK9+zdGFIEjrIitRpwib9Tnt8MJ0Muzfjakz/vh5LZmf0a+8xElnG6wmoWUbPrB
         RLdPZSvIY2uZ9wA3xlid8F/FztYI1KRLTZXxpq3m1XP7w/kyD7Vqa7gbQeHS+Ck4/yp0
         EpiV2JG3qRp2csIp+UG9r83UYnOZsRvPkqHR9UxSu8YqcBJL8Zn1sokUpOu+7dC1O1rJ
         zI7RybFJm0F2fz1U/82/DpY4P2SILSRC7nw/nxwnG7BI88LWOWm6y7Icjn+r+1UtW+49
         A3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zC3AjkfkprEZqAAF7NrLvBA7iHOLdrgU623W0AvOrc8=;
        b=K1/T48VlUdJn9CBI/43BvRDW/TB9ZjrZU/lYO4OE2a4NfJelUdJ25MWXyauZ+iO97g
         vzflM+NEZBWj6aTdzutlVhn+8Y3MwMhzAs9lERR92LXLWurDSdNrfUlCGjKYcL8PhJrB
         eqa3Uiy5bAnF0XjpqSbwZDF9OShw/Cbe1l+Ik0M/78ik85fScMTHrK4L4FH4wHa4u687
         dfNnPWYWq2mX6O/IRsXoTGNOxDwnG/l4JzGInxRf7XkyOpih4xXpfT22LA3V27cp/Sb+
         b5WoEB9J641j1CMZwIqZpIeXe6+gLNPronqPQdm+SJiMkCBtFBRqPTc1SxkGVr8Hl53G
         REJw==
X-Gm-Message-State: AOAM533cTT62WDBuICAoz1Y2d6Vorrc9QVQylPPf1j5R+YBRDH64r671
        lk/wB5U9NHY6yu9gbl3TKyGTCw==
X-Google-Smtp-Source: ABdhPJxnWiMooG/MtjMpEbVaVBmU0gLwXtAR25UcFbu/9ktwRSIUjbuBbod67GMd2Ea/Y26JYFdtVA==
X-Received: by 2002:a17:906:9443:: with SMTP id z3mr21320271ejx.156.1599474488206;
        Mon, 07 Sep 2020 03:28:08 -0700 (PDT)
Received: from localhost.localdomain (dh207-98-39.xnet.hr. [88.207.98.39])
        by smtp.googlemail.com with ESMTPSA id dm22sm14767031edb.49.2020.09.07.03.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:28:07 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        John Crispin <john@phrozen.org>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Vinod Koul <vkoul@kernel.org>
Subject: [RESEND PATCH v7] ARM: dts: qcom: ipq4019: add USB devicetree nodes
Date:   Mon,  7 Sep 2020 12:28:02 +0200
Message-Id: <20200907102802.11276-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since we now have driver for the USB PHY, lets add the necessary nodes to DTSI.

Signed-off-by: John Crispin <john@phrozen.org>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
---
 arch/arm/boot/dts/qcom-ipq4019.dtsi | 74 +++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
index 74d8e2c8e4b3..8b72a149bc33 100644
--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -605,5 +605,79 @@ ethphy4: ethernet-phy@4 {
 				reg = <4>;
 			};
 		};
+
+		usb3_ss_phy: ssphy@9a000 {
+			compatible = "qcom,usb-ss-ipq4019-phy";
+			#phy-cells = <0>;
+			reg = <0x9a000 0x800>;
+			reg-names = "phy_base";
+			resets = <&gcc USB3_UNIPHY_PHY_ARES>;
+			reset-names = "por_rst";
+			status = "disabled";
+		};
+
+		usb3_hs_phy: hsphy@a6000 {
+			compatible = "qcom,usb-hs-ipq4019-phy";
+			#phy-cells = <0>;
+			reg = <0xa6000 0x40>;
+			reg-names = "phy_base";
+			resets = <&gcc USB3_HSPHY_POR_ARES>, <&gcc USB3_HSPHY_S_ARES>;
+			reset-names = "por_rst", "srif_rst";
+			status = "disabled";
+		};
+
+		usb3@8af8800 {
+			compatible = "qcom,dwc3";
+			reg = <0x8af8800 0x100>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clocks = <&gcc GCC_USB3_MASTER_CLK>,
+				 <&gcc GCC_USB3_SLEEP_CLK>,
+				 <&gcc GCC_USB3_MOCK_UTMI_CLK>;
+			clock-names = "master", "sleep", "mock_utmi";
+			ranges;
+			status = "disabled";
+
+			dwc3@8a00000 {
+				compatible = "snps,dwc3";
+				reg = <0x8a00000 0xf8000>;
+				interrupts = <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_hs_phy>, <&usb3_ss_phy>;
+				phy-names = "usb2-phy", "usb3-phy";
+				dr_mode = "host";
+			};
+		};
+
+		usb2_hs_phy: hsphy@a8000 {
+			compatible = "qcom,usb-hs-ipq4019-phy";
+			#phy-cells = <0>;
+			reg = <0xa8000 0x40>;
+			reg-names = "phy_base";
+			resets = <&gcc USB2_HSPHY_POR_ARES>, <&gcc USB2_HSPHY_S_ARES>;
+			reset-names = "por_rst", "srif_rst";
+			status = "disabled";
+		};
+
+		usb2@60f8800 {
+			compatible = "qcom,dwc3";
+			reg = <0x60f8800 0x100>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clocks = <&gcc GCC_USB2_MASTER_CLK>,
+				 <&gcc GCC_USB2_SLEEP_CLK>,
+				 <&gcc GCC_USB2_MOCK_UTMI_CLK>;
+			clock-names = "master", "sleep", "mock_utmi";
+			ranges;
+			status = "disabled";
+
+			dwc3@6000000 {
+				compatible = "snps,dwc3";
+				reg = <0x6000000 0xf8000>;
+				interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb2_hs_phy>;
+				phy-names = "usb2-phy";
+				dr_mode = "host";
+			};
+		};
 	};
 };
-- 
2.26.2

