Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7408B672CA1
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 00:31:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjARXbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 18:31:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjARXbt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 18:31:49 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F12CB2279B
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 15:31:47 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id r9so328204oie.13
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 15:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=WvB1eC/P4oWjyyHt2Xiv+jJzi+YM15ktxv3wiWEsWtOpmEYHlKGvdqSPPwNm2WkOOK
         /bCKJ654C7OctT4+0I3/y+W4BgDDIeA8B8R5KqNvloLDf0ory7cG2icncxD4uu7Qp7cO
         esjHouqMyqwV0Gq9h30VCS35hrl+WAGxq7iIEa0ZZdBnUT272nI+2QuA8L4fdh65XOpG
         tT0K1qDSRUkjqpg3xwWIBPjm+/28KfDQaIaun2wdPxJ4ndeCuY9dV10YFyeTDtDcj5WT
         po/7v9h71s/8buQt0WHwuyU3GSjoZdxzcCM25/eM9WL5yEPkuWhMdu/Rb7X0AgJDEKvs
         Kf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=Px8Vc4oxyuYFNQLqfYk4c1m8nP1mL9Wx9t5Bs1hkisO74afyd8t+27OoxPS28Zae44
         2yFgHIau6ZFIWvkdYaGZuDI2a6O3jBvOkwYCXUCtYRd4cdFdCXKhfi01pErHgjtLikvs
         4J3gHJicl4NCFAtR2ZU8eTnDCFZm9sR6zVFniCxpuGMBceHrTsEmWLr1y/bmtcbDGRY7
         yjiVJWDsUzaJ7p25AkpmYSAdocH74zos+fbkebxuRu6VoPzUoz6xPiJVwYW0FWMeXiEf
         0H7+Oo7SCJilNVXpTYpq7a1jLJi9guZaGIzJYgc4xlnZuyQuQN6R75UumnJXLZwreZE+
         UXow==
X-Gm-Message-State: AFqh2koPQOe629ldHCiJ9rk5W2JcMpT5XhA11W5eofSZD9wWWv62w/Si
        0Wkc2+FOBVQqcp3BjzLVG/4=
X-Google-Smtp-Source: AMrXdXtSTcEC2SF4tiWAFqMRl124wyleL7Bn9yOESTS8JR8iIMsWCMPS3GIN9xthV1gRZUrcMHsidA==
X-Received: by 2002:a05:6808:14d6:b0:361:6ef:bf32 with SMTP id f22-20020a05680814d600b0036106efbf32mr5946154oiw.57.1674084707339;
        Wed, 18 Jan 2023 15:31:47 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id q10-20020acad90a000000b00354932bae03sm16966933oig.10.2023.01.18.15.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 15:31:47 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V11 4/4] arm64: dts: rockchip: add display to RG503
Date:   Wed, 18 Jan 2023 17:31:35 -0600
Message-Id: <20230118233135.1174859-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118233135.1174859-1-macroalpha82@gmail.com>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add Samsung AMS495QA01 panel to RG503.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 5dafcc86296b..b4b2df821cba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -47,6 +47,21 @@ gpio_spi: spi {
 		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
+
+		panel@0 {
+			compatible = "samsung,ams495qa01";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&lcd_reset>;
+			reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc_3v3>;
+
+			port {
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
 	};
 
 	/* Channels reversed for both headphones and speakers. */
@@ -94,6 +109,32 @@ &cru {
 	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
 };
 
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+};
+
 &gpio_keys_control {
 	button-a {
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
@@ -146,6 +187,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 		};
 	};
 
+	gpio-lcd {
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
@@ -164,3 +212,10 @@ rk817_charger: charger {
 		rockchip,sleep-filter-current-microamp = <100000>;
 	};
 };
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.34.1

