Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7846426298A
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 10:06:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729993AbgIIIGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 04:06:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728347AbgIIIGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 04:06:09 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23EC4C061755
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 01:06:09 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id m8so1516535pgi.3
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 01:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jVlYlbWkozbz0sLJ6S/+BIlF4v5FRp4qwtHLHAvdMQ8=;
        b=Jbdhf4gHp3pe7ZAg6MfN+hmU7XutrDtvHYeWgzZC69kwrslIzxW3C5cjPf9rdszvVs
         IlpM/YR2tNGDZg3yTGtyhT7TFvneCjyhGgODs4OAECJ+6GHWMFzU+tbdmCPJtFaUGmnq
         1aG+i5wU/AK9VW/a8k5N6GsGYvM5QgSw6ixoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jVlYlbWkozbz0sLJ6S/+BIlF4v5FRp4qwtHLHAvdMQ8=;
        b=H0elce6wth1U8gPMwawmKhDrM7WzAiujdtwgzjHuckclRdfDRRkK+vB/B7iyXLzJYG
         NVvL07Inf25PUDVyPIqjF1fLOjh3IrLSLnmBbQUHCdvxc+oBEKEYh74fKsSdu2BWKD99
         8GV2usVbunrkMW0GRdPm/x16UObNTR2KgySNdkPMg0WzgE4E9/HQUfxtjoAtw5BvbQC8
         9YbjTbnnimu3wOhHA4yXO5nVIJWcNUMId3B3EF48en74GJl8whAeu5wXd+FMawcv8DVg
         Csj6b+965kcoTjJXGezXTP/oO+8tMoNR5YTyRHrectewfQpgeucZHEJvY0gWLmKPFwsL
         qYmw==
X-Gm-Message-State: AOAM530rtZC817rbSF9hvE+RX9zI4rOZeg2M8szX8q6c0AR+epa9E5KP
        O0xs4EoHCuWjZBpnEpAA75X49A==
X-Google-Smtp-Source: ABdhPJzwx8jiPPdem7eCjQdoXrfB3KZxZs1HdZ8y27DOvo/H7K6FuYkhAgGi5eOJxtphcwcCI89QLA==
X-Received: by 2002:a63:5c66:: with SMTP id n38mr2053035pgm.217.1599638768656;
        Wed, 09 Sep 2020 01:06:08 -0700 (PDT)
Received: from kafuu-chino.c.googlers.com.com (105.219.229.35.bc.googleusercontent.com. [35.229.219.105])
        by smtp.googlemail.com with ESMTPSA id d8sm1260489pjs.47.2020.09.09.01.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 01:06:08 -0700 (PDT)
From:   Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Pi-Hsun Shih <pihsun@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support),
        linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC
        support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: mt8183-kukui: add scp node
Date:   Wed,  9 Sep 2020 16:05:58 +0800
Message-Id: <20200909080558.2409470-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add scp node to mt8183-kukui

Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index f0a070535b34..85f7c33ba446 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -90,6 +90,18 @@ pp3300_alw: regulator6 {
 		regulator-max-microvolt = <3300000>;
 	};
 
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		scp_mem_reserved: scp_mem_region {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+	};
+
 	max98357a: codec0 {
 		compatible = "maxim,max98357a";
 		sdmode-gpios = <&pio 175 0>;
@@ -524,6 +536,13 @@ pins_clk {
 		};
 	};
 
+	scp_pins: scp {
+		pins_scp_uart {
+			pinmux = <PINMUX_GPIO110__FUNC_TP_URXD1_AO>,
+				 <PINMUX_GPIO112__FUNC_TP_UTXD1_AO>;
+		};
+	};
+
 	spi0_pins: spi0 {
 		pins_spi{
 			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
@@ -651,6 +670,17 @@ pins_wifi_wakeup {
 	};
 };
 
+&scp {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&scp_pins>;
+
+	cros_ec {
+		compatible = "google,cros-ec-rpmsg";
+		mtk,rpmsg-name = "cros-ec-rpmsg";
+	};
+};
+
 &soc_data {
 	status = "okay";
 };
-- 
2.28.0.526.ge36021eeef-goog

