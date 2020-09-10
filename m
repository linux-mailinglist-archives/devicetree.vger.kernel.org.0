Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19177264045
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 10:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726961AbgIJIoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 04:44:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729911AbgIJInP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 04:43:15 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4134BC061757
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 01:43:12 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id bh1so577762plb.12
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 01:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L/4Xswe1tVbEt+VyZpLZ8Ecncq7V2PHXxgjqAkpGaWM=;
        b=Ddx81Q2028XCjXda3WQUN/JfV+7gvnOmVq07tcxMEZuH5m2W9lTVzg1qfm/tui6/y8
         opDmSPbFMVgouFm7GUdLzZkvTwLlTiPQkxPk9Tr028N9kfVY3Tsz27OL8ndIU1KXI2ZX
         jqOQ8Bk4v6H040D3ts9qOQN/+ihrMvStIPOwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L/4Xswe1tVbEt+VyZpLZ8Ecncq7V2PHXxgjqAkpGaWM=;
        b=AM1hUnmkY0gyeZsAeteIu6vq4wrJQGg2Ecg03zdksRhdSnqqikbQVYE9zuAOVVNhI+
         wxjjI9KEblz+QRplMDpKz0lCt0e+n/OvEiGaxhyldLGKtrFdiE57S5MNYrJGEluYAq6n
         wizwa7hfe1FhiJjgTCyavZD+Pvz2qGZttnR8W4YZLr0e1XRPwAn9mO1mJ21Rv+0cINIv
         s7YJWwTFXQw16Kg901N8RhlYocQ5q4zTXFp+WpmWq7fdMCbYBYd8Jfpf+hWKtsuQKJeP
         P28xEntN/eoBaXHmmYJe0JM8zTthKL+rYQDt4ZLNjwOU7hOjCFNY91NeFDv9l/2n0Enp
         CMHQ==
X-Gm-Message-State: AOAM5322OqdKAwBqgihKOJQ01kzsUAcsC4L+KurTE820ZU2dBvy+aIkL
        xlx30hMaDgy78kTdDBfGsOUYuQ==
X-Google-Smtp-Source: ABdhPJyEjD3DEgOoB0pkV8GVysZA4xYfdxxHJRksSsko7ICb4IzBqS75bczDOL25rNltJZ8HZ8ggmw==
X-Received: by 2002:a17:902:aa4b:b029:d0:cbe1:e739 with SMTP id c11-20020a170902aa4bb02900d0cbe1e739mr4891936plr.20.1599727392093;
        Thu, 10 Sep 2020 01:43:12 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id x29sm4357645pga.23.2020.09.10.01.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 01:43:11 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-mediatek@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 1/2] arm64: dts: mt8173: Set uart to mmio32 iotype
Date:   Thu, 10 Sep 2020 16:43:03 +0800
Message-Id: <20200910084304.3429494-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set uart iotype to mmio32 to make earlycon work with stdout-path.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 5e046f9d48ce9..ca6ea71f5f435 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -613,6 +613,8 @@ uart0: serial@11002000 {
 			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&pericfg CLK_PERI_UART0_SEL>, <&pericfg CLK_PERI_UART0>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
@@ -623,6 +625,8 @@ uart1: serial@11003000 {
 			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&pericfg CLK_PERI_UART1_SEL>, <&pericfg CLK_PERI_UART1>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
@@ -633,6 +637,8 @@ uart2: serial@11004000 {
 			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&pericfg CLK_PERI_UART2_SEL>, <&pericfg CLK_PERI_UART2>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
@@ -643,6 +649,8 @@ uart3: serial@11005000 {
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&pericfg CLK_PERI_UART3_SEL>, <&pericfg CLK_PERI_UART3>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
-- 
2.28.0.526.ge36021eeef-goog

