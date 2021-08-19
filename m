Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 015A33F1D57
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 17:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240315AbhHSPy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 11:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240568AbhHSPy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 11:54:59 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 656ABC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:54:21 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id q21so12333609ljj.6
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fDHw2TJGhHkXIJrzd0cTp/jlmRZGrq586KSEKRXMFUk=;
        b=n+vCDRt7CD1ah/xjdD+1V1FfRCkGgAN+T7AzB+xYAZ3prGlV24QZ36zV4sHhxrUQ7G
         6k9oTqEPIunXifTZG6i4mF4QKBbK4/G5gYt1CHI1bwuvU0655o+costcmbUtUT7rPMMl
         J+57phceuK4wCBZQrTvygnsEx9uzHgVP44bzylNRy7yCJjUL5NMkO+HuZxlbUalB2Hm7
         SCti/EmTpKWZkh23+KvXobsdl0IPQtLLspFQ9PYfHIASZcC6sUO2Y9cI7gqaTIOc3Lr4
         tlh8e1NFXCb+rPEHg5x9/LGlKu36rJqpDHK7K8XmZMizPH3nIJHpGZiRRVsLNoec5+s+
         s/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fDHw2TJGhHkXIJrzd0cTp/jlmRZGrq586KSEKRXMFUk=;
        b=d6pCrTfCX94rNdU0mR2qHzu5cde/CpFLkfysyeMG3H91Qh4lSXhJWq00T5YJJZlwtq
         WQ6An5RZJhurB0h42M6b3n07dEmHP8f8kweGOPlJlpUk4J24SdI4IKYJQlf5yEL3mT9w
         W+dcRL33ZPON6vE4vrcIDTw3vSEbjHOB/g5YsfLbZsHxvhMWa7hDmOMsqk6+uRhdjG+v
         ZSnbfSG3cNhCPjT3GQyxwd+7bXJD5T04msymdrLpzga+kZek0x3/8ZQBVOoTGP07+Rhp
         KxaqNegSNYJJpnBaU9iXvF/YLMpAOBD+E6sHuQj3FJaiNJHeBY0eMeoRyadA5NjD2Kx9
         4ggg==
X-Gm-Message-State: AOAM531F9pzC6KZtC497RSmecIcrg4AwEa4mOyXWc1riN0mzLUykH/0v
        lNqGSyja5ACiUi9TXncT7bg=
X-Google-Smtp-Source: ABdhPJzk+s87AHK6bwQ4csAICSLB06aw8MsI2jb29ilWffdu71TRq3Vv3Wgp+6yVANuDznAAZR4sMQ==
X-Received: by 2002:a05:651c:39c:: with SMTP id e28mr12421491ljp.498.1629388457670;
        Thu, 19 Aug 2021 08:54:17 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id y41sm343870lfa.113.2021.08.19.08.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 08:54:17 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH WIP] arm64: dts: broadcom: bcm4908: Add PCIe controllers
Date:   Thu, 19 Aug 2021 17:54:08 +0200
Message-Id: <20210819155408.25770-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 SoC has 3 PCIe controllers. Describe them.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This is WIP. It's enough to initialize PCIe controllers and detect
attached devices. Checking DTS files however results in complains about
missing "dma-ranges", interrupt mapping & "msi-controller".
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 53 ++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 984c737fa627..f09611697863 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -267,6 +267,57 @@ pmb: power-controller@2800c0 {
 		};
 	};
 
+	pcie@80040000 {
+		compatible = "brcm,bcm4908-pcie";
+		reg = <0x0 0x80040000 0x0 0xa000>;
+		power-domains = <&pmb BCM_PMB_PCIE0>;
+		resets = <&pcie_reset 0>;
+		reset-names = "perst";
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "pcie";
+		device_type = "pci";
+		bus-range = <0x00 0xff>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		// BUS_ADDRESS(3)  CPU_PHYSICAL(2)  SIZE(2)
+		ranges = <0x02000000 0x0 0xc0000000  0x0 0xc0000000  0x0 0x10000000>;
+	};
+
+	pcie@80050000 {
+		compatible = "brcm,bcm4908-pcie";
+		reg = <0x0 0x80050000 0x0 0xa000>;
+		power-domains = <&pmb BCM_PMB_PCIE1>;
+		resets = <&pcie_reset 1>;
+		reset-names = "perst";
+		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "pcie";
+		device_type = "pci";
+		bus-range = <0x00 0xff>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		// BUS_ADDRESS(3)  CPU_PHYSICAL(2)  SIZE(2)
+		ranges = <0x02000000 0x0 0xd0000000  0x0 0xd0000000  0x0 0x10000000>;
+	};
+
+	pcie@80060000 {
+		compatible = "brcm,bcm4908-pcie";
+		reg = <0x0 0x80060000 0x0 0xa000>;
+		power-domains = <&pmb BCM_PMB_PCIE2>;
+		resets = <&pcie_reset 2>;
+		reset-names = "perst";
+		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "pcie";
+		device_type = "pci";
+		bus-range = <0x00 0xff>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		// BUS_ADDRESS(3)  CPU_PHYSICAL(2)  SIZE(2)
+		ranges = <0x02000000 0x0 0xe0000000  0x0 0xe0000000  0x0 0x10000000>;
+	};
+
 	bus@ff800000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -320,7 +371,7 @@ misc@2600 {
 			#size-cells = <1>;
 			ranges = <0x00 0x2600 0xe4>;
 
-			reset-controller@2644 {
+			pcie_reset: reset-controller@2644 {
 				compatible = "brcm,bcm4908-misc-pcie-reset";
 				reg = <0x44 0x04>;
 				#reset-cells = <1>;
-- 
2.26.2

