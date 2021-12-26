Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E29847F5D8
	for <lists+devicetree@lfdr.de>; Sun, 26 Dec 2021 09:28:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231868AbhLZIZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Dec 2021 03:25:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231846AbhLZIZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Dec 2021 03:25:46 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3906FC061401
        for <devicetree@vger.kernel.org>; Sun, 26 Dec 2021 00:25:46 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id p7so19876445ljj.1
        for <devicetree@vger.kernel.org>; Sun, 26 Dec 2021 00:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=chDftLlpfZefBu1kASm+Uj4rYg+k5HyDlp8m+xvFMms=;
        b=ciY9qesa9JzmNt+gT9BhWrbLzLFTY9TBsewQ5KoL0iIzeeORigyTVMQ8foohDGUjtb
         BklcsF9mVQ0OoIKTdOcHR03WGwPELKXBTwfh8f2nDBcnoHphCTHU4Gv9eP8RBPQ8rwvQ
         CxwlXNlRXKfFm/zyPuVuS6S1cb6z0Wm2HTGiUQlEPf1/rcQQuH/U+AF3g45qsWv+Cptn
         5UW9Flg4K8bGi2vFoJXDjnc6Y7CdosdEUHhyEZC93oRC+OoKf5+MvQjJgeYsxn6nvcIS
         Fifj87LwHvukYlI6uWxaEDYVlFA7TwyXIkdkoWRJCxBa6HRsYFK9E9R/I0homsHf6qPU
         oo2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=chDftLlpfZefBu1kASm+Uj4rYg+k5HyDlp8m+xvFMms=;
        b=bKFf/h7W9XXASewm3RFPUeATHzLgYMZHJ/vW8Sn9ZJDgXY4Z4/CA51E3zG7FdUnKSP
         cooZU/wDE6g6krWHe5nNp8Mmy54jl1h6rE02RJ+VDPQ1bEtlZfRay+pjaBbajRqZJ7mw
         Oy+fxWJ/SEb0vUR1m9fmKDJV0XbJBa7qtSJ1L+IGzj/f63JKWI3i9mGJNgQ0nwvTC3ur
         gyUwYvXUTms+SaAvKaV2vrojIV9vjrJZs+L4895RDJamTH6X9K0xULtyJgz3Mz6DnPPg
         Z636SutaYP5+jSr4YmSz2uqWoB/DR1qKotMNZk3UW9gvK4wbEhhL9e1N3+mNmkSbVhFb
         txZw==
X-Gm-Message-State: AOAM532aAZ5QixR5P3PzpKXTDxIzZzyZ/bB3ZgazfO6AbxvgqX+lbtDU
        ETO8U4zkolkYnaQFyRxEsshfdg==
X-Google-Smtp-Source: ABdhPJxfIcJHgOXxzJotXw6A6+bg7ygUciHJ5QpsAOxBT53Ymwkyh6N6PWya3XM+jIkIjkYDkOMbzw==
X-Received: by 2002:a2e:2ac5:: with SMTP id q188mr9877905ljq.222.1640507144521;
        Sun, 26 Dec 2021 00:25:44 -0800 (PST)
Received: from cobook.home (nikaet.starlink.ru. [94.141.168.29])
        by smtp.gmail.com with ESMTPSA id z5sm1309023lfd.184.2021.12.26.00.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Dec 2021 00:25:43 -0800 (PST)
From:   Nikita Yushchenko <nikita.yoush@cogentembedded.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Christian Gromm <christian.gromm@microchip.com>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Subject: [PATCH 3/3] arm64: dts: renesas: add MOST device
Date:   Sun, 26 Dec 2021 11:25:30 +0300
Message-Id: <20211226082530.2245198-4-nikita.yoush@cogentembedded.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211226082530.2245198-1-nikita.yoush@cogentembedded.com>
References: <20211226082530.2245198-1-nikita.yoush@cogentembedded.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds mlp device to dtsi files for R-Car Gen3 SoCs that have
it.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 arch/arm64/boot/dts/renesas/r8a77951.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/renesas/r8a77960.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 13 +++++++++++++
 6 files changed, 78 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77951.dtsi b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
index 1768a3e6bb8d..179d860ab9c3 100644
--- a/arch/arm64/boot/dts/renesas/r8a77951.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
@@ -2412,6 +2412,19 @@ ssi9: ssi-9 {
 			};
 		};
 
+		mlp: mlp@ec520000 {
+			compatible = "renesas,rcar-gen3-mlp";
+			reg = <0 0xec520000 0 0x800>;
+			interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 385 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 802>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		audma0: dma-controller@ec700000 {
 			compatible = "renesas,dmac-r8a7795",
 				     "renesas,rcar-dmac";
diff --git a/arch/arm64/boot/dts/renesas/r8a77960.dtsi b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
index 2bd8169735d3..e4777bb6701e 100644
--- a/arch/arm64/boot/dts/renesas/r8a77960.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
@@ -2284,6 +2284,19 @@ ssiu97: ssiu-51 {
 			};
 		};
 
+		mlp: mlp@ec520000 {
+			compatible = "renesas,rcar-gen3-mlp";
+			reg = <0 0xec520000 0 0x800>;
+			interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 385 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 802>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		audma0: dma-controller@ec700000 {
 			compatible = "renesas,dmac-r8a7796",
 				     "renesas,rcar-dmac";
diff --git a/arch/arm64/boot/dts/renesas/r8a77961.dtsi b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
index a34d5b1d6431..f97d70a3be52 100644
--- a/arch/arm64/boot/dts/renesas/r8a77961.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
@@ -2128,6 +2128,19 @@ ssiu97: ssiu-51 {
 			};
 		};
 
+		mlp: mlp@ec520000 {
+			compatible = "renesas,rcar-gen3-mlp";
+			reg = <0 0xec520000 0 0x800>;
+			interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 385 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 802>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		audma0: dma-controller@ec700000 {
 			compatible = "renesas,dmac-r8a77961",
 				     "renesas,rcar-dmac";
diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
index 08df75606430..fa8aa00b4b7d 100644
--- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
@@ -2147,6 +2147,19 @@ ssi9: ssi-9 {
 			};
 		};
 
+		mlp: mlp@ec520000 {
+			compatible = "renesas,rcar-gen3-mlp";
+			reg = <0 0xec520000 0 0x800>;
+			interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 385 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 802>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		audma0: dma-controller@ec700000 {
 			compatible = "renesas,dmac-r8a77965",
 				     "renesas,rcar-dmac";
diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index 0ea300a8147d..e76c7b0d3d4c 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1682,6 +1682,19 @@ ssi9: ssi-9 {
 			};
 		};
 
+		mlp: mlp@ec520000 {
+			compatible = "renesas,rcar-gen3-mlp";
+			reg = <0 0xec520000 0 0x800>;
+			interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 385 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 802>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		audma0: dma-controller@ec700000 {
 			compatible = "renesas,dmac-r8a77990",
 				     "renesas,rcar-dmac";
diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index 16ad5fc23a67..cd790b0a965a 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -1132,6 +1132,19 @@ ssi4: ssi-4 {
 			};
 		};
 
+		mlp: mlp@ec520000 {
+			compatible = "renesas,rcar-gen3-mlp";
+			reg = <0 0xec520000 0 0x800>;
+			interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 385 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 802>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		audma0: dma-controller@ec700000 {
 			compatible = "renesas,dmac-r8a77995",
 				     "renesas,rcar-dmac";
-- 
2.30.2

