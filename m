Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B640B6661E1
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 18:31:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231712AbjAKRad (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 12:30:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239674AbjAKR2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 12:28:48 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DC03E846
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 09:25:06 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id n12so16564442pjp.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 09:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/CxlYBi388NDPbDSoqcwBjvGrii9x3/S/0h+i6WeGA=;
        b=oo0eRw2g8jOAp10levb4WD5yMGtiaNPRCY0wUJNOLxMJq7zYYsp1Bf5FKtN/+8sx0e
         P2gv1oxrqaat+lnipA9FvzPpxUaGPxq0jV++nAKm/MqRpYwScgH8VshqZDpyS+S9VRRy
         hV1H+B5twRfEZmpY8NF6oVBprMp37v5ntum8Zf8e8UDmKUmnjl2WPQHWfl8qhIuubLI6
         GhCb/ddxSjDY+oeBOUHCi5DSgBcjDnwE7Q0JQvLxIuz8eVbfuO0mgIENwqTTgIrBx8kU
         bL9k99XLQNeXpnkSzSC0wrARqfWSnvQRrhnBsAfZJCwyH9oA6JXXed0KLsvWKd5TE0HV
         PK8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/CxlYBi388NDPbDSoqcwBjvGrii9x3/S/0h+i6WeGA=;
        b=4esE93WMfAmorA94b3FxaUDfXMSuAgGdIkljLLHzqdQb8bwCR1WW8uWm8h111EJlxc
         4VWx0U+8WM55fe3p/EEwwSlpf2lpNB//np4L9vXFz4IyI0BeUjIUbmOo4YCGDJoqh1ZR
         IjD03F6pLJlhE/dMtGP0Ct3Gm8A1U1Vw3VfDCw3FmXN5BMwOp+HsMdinkEmuM1dp8vV6
         dj93kCnb7llQc1glS6V9EB0cyIQ9h1tcGLkPLpeZbBuR0zicX9VCKiC22AmfGTF4dq4Q
         1QnmAho7qILJPakT6NNb7oYm49WPklVwki8W5IkkMB/zR4v7fZOeH1mMvhe5QEtogKMX
         Pe0Q==
X-Gm-Message-State: AFqh2kp7FIlxGpgEWRUNrZuWMauHohnOerUylFyJMlg3gLDfZ77KYDjP
        BaiPcjrx4Mmb2y/BtufcBgp3qw==
X-Google-Smtp-Source: AMrXdXs7OzbIhx9etHa36fQ9ETAVJ4i9nKt/8w1rFjvuwXDA0rzizVgdXyi7HaHdKxCzwFVrpb9iKw==
X-Received: by 2002:a17:90a:558c:b0:226:1189:ad3e with SMTP id c12-20020a17090a558c00b002261189ad3emr51627132pji.27.1673457905925;
        Wed, 11 Jan 2023 09:25:05 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id rm14-20020a17090b3ece00b00218fa115f83sm11110722pjb.57.2023.01.11.09.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 09:25:05 -0800 (PST)
From:   Anand Moon <anand@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johan Jonker <jbx6244@gmail.com>, Anand Moon <anand@edgeble.ai>,
        Jagan Teki <jagan@edgeble.ai>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v5 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date:   Wed, 11 Jan 2023 17:24:34 +0000
Message-Id: <20230111172437.5295-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111172437.5295-1-anand@edgeble.ai>
References: <20230111172437.5295-1-anand@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip RV1126 has GMAC 10/100/1000M ethernet controller.
Enable ethernet node on Neu2-IO board.

Co-Developed-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v5: add CoD of Jagan
v4: none
v3: Address review coments from Johan and Add SoB Jagan Teki.
v2: drop SoB of Jagan Teki.
---
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
index dded0a12f0cd..3340fc3f0739 100644
--- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -22,6 +22,43 @@ chosen {
 	};
 };
 
+&gmac {
+	assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
+			  <&cru CLK_GMAC_ETHERNET_OUT>;
+	assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
+	assigned-clock-rates = <125000000>, <0>, <25000000>;
+	clock_in_out = "input";
+	phy-handle = <&phy>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
+	tx_delay = <0x2a>;
+	rx_delay = <0x1a>;
+	status = "okay";
+};
+
+&mdio {
+	phy: ethernet-phy@0 {
+		compatible = "ethernet-phy-id001c.c916",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_phy_rst: eth-phy-rst {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.39.0

