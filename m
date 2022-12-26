Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC7D9656078
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 07:37:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231774AbiLZGhj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 01:37:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231678AbiLZGhP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 01:37:15 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D235F9E
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:36:55 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id 36so6719194pgp.10
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rW+W8L4hEp5lOoEXBkKxHWasEwBBhWGhqBiD8Bx3Ygo=;
        b=voBlDzsBgXxobxqDnz/UaPsHRfWs7i9nstSae/q3NRBCxfuyzy1+Ep+jWlbAoD5jYA
         WyNKywWNaYysqNCSjfSzZ7829lKS+/ZwXBDxovBWTxNi7i/8FRCN23iXQIYQVCpN53dG
         E+Yvfbq04uqXoW60RyAOQasa+JXJmKHyQZ1hBrjR8Dbky8ygnPj9oC9pmrpqKhk4ieHT
         59pb3fUEa7iub7UP0FS3vBZix9UqCdmOqWAHl23ywrlGWIvbjLAZu2PQV9i3it0S5XnE
         iXEOb8VGVNXQ22Of6JxWEUwcvWDsGHwMvmUsR4K5wuZ2LN932Cx1Ij3+lKvrFOti5Fnn
         DSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rW+W8L4hEp5lOoEXBkKxHWasEwBBhWGhqBiD8Bx3Ygo=;
        b=JauoIfLSzQdhZm2CCKik80ZEYSX0vXlumlozHT/1GBcuzgM2Y1Rr9UXfa0BNP/9ZD2
         r3IZXsOmp/wLBuWwQkzB92AmlrYA3/wp3Sofu8GhHZMI6nXQuZ5YdzSdSfkmFC/dRA+a
         zeCx3Aqt6z+zQGT5jdrZ1oOMYYOj67hRlPvUXZjPp9GSlHCScobFfzgPZlGBlanc3RiS
         UOSEQueeiHlU3WG/3rzvQSBiPRlcJXqQgHIhDDzqs7hHVaEnzufRDdZG6pF5uQrAnLB5
         R2hgRbiMU5bqrA5BqLBVgD9mg/veFyK1QtrL1pvkTj09PY+kdOS3LRaVX/XET2yENg7M
         EcpQ==
X-Gm-Message-State: AFqh2krmW6Wyyv3z/jmBwBro9Z5bA6YrSKKOQhaCNlRa6LcWheVJfFW2
        nPVhYwZdDcdfNanqanYkoGmM9A==
X-Google-Smtp-Source: AMrXdXti84xoOVGf5X7VMNv6CCR7z2+EuYq84JZ3OTs8Oj1rP2mwcDoTDui1+Kx1tgTYoaNYTs1+JA==
X-Received: by 2002:aa7:9f8d:0:b0:57f:ca45:66c9 with SMTP id z13-20020aa79f8d000000b0057fca4566c9mr20282753pfr.13.1672036615502;
        Sun, 25 Dec 2022 22:36:55 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id 31-20020a63145f000000b0047048c201e3sm5730659pgu.33.2022.12.25.22.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 22:36:55 -0800 (PST)
From:   Anand Moon <anand@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Anand Moon <anand@edgeble.ai>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCHv2 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date:   Mon, 26 Dec 2022 06:36:22 +0000
Message-Id: <20221226063625.1913-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
References: <20221226063625.1913-1-anand@edgeble.ai>
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

Signed-off-by: Anand Moon <anand@edgeble.ai>
---
drop SoB of Jagan Teki
---
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
index dded0a12f0cd..bd592026eae6 100644
--- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -22,6 +22,43 @@ chosen {
 	};
 };
 
+&gmac {
+	clock_in_out = "input";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
+	phy-mode = "rgmii";
+	phy-handle = <&phy>;
+	assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
+			<&cru CLK_GMAC_ETHERNET_OUT>;
+	assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
+	assigned-clock-rates = <125000000>, <0>, <25000000>;
+	phy-supply = <&vcc_3v3>;
+	tx_delay = <0x2a>;
+	rx_delay = <0x1a>;
+	status = "okay";
+};
+
+&mdio {
+	phy: phy@0 {
+		compatible = "ethernet-phy-id001c.c916",
+			       "ethernet-phy-ieee802.3-c22";
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

