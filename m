Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61AF2609073
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 01:40:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbiJVXkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 19:40:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbiJVXkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 19:40:35 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 907E0792C3
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 16:40:33 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id b18so8354127ljr.13
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 16:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C6At1H3szjViJnkV3q1VRKzRG4v2Bj/cByCEwQ1bgyM=;
        b=VQ7mbzj5hN8t52IfZwXU2t2B95RRp7vmkiDpjZTVDaEI1x0VBP/iysdDlLGUa6wPji
         U26MuG7nEDCxDQwr4XjJqN2lglZacSeRqq0UYk1GLdQiE8y1BqYHPFtR5DstYTRl6Zjh
         +thhymXHeveBJ8g4OBx7law2Q8osxes7zx8rA+3QoT4iY/4Ux44zYQgZTL7W443zyKjc
         LLxHO2qd4Zw84SYawq25Tc0tkXK+FwPfaqh36GjAT0tuNpnq9aK3APIr7L0fojratQIo
         iMpsILAzdk6v4zHxdclu/LFOTEJDXWydP7zQ7IsyTdt9g2m6OxUSFM8qh4pzevB2ThQV
         82iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6At1H3szjViJnkV3q1VRKzRG4v2Bj/cByCEwQ1bgyM=;
        b=F0ZODUzvwM2Ig9nePZJAeZ7/rQGtCscOUspJ1eRV2zhDgNG0gvwoqUTj9TNEqYZ1yc
         nJfvigTxzCYYRnpjBYRV/k7j3cXZajbBF4YC6u/3lfYVDpZyyRL8+R2JmBuNPqmZzhkk
         nq3k1A4yhIldzelXof0ECTDfV1UDhuC4zsK1ksC/DhVt7uP+bMiaP7TFtEHjBQoy/AyV
         t++HdCFrRJ/jsWtyy6lW8Bxhus5G3Tzo43gLhfGGEfWrf+U6BHjoCH828iAqO9iOdijM
         E8zgN668pfu677arGV6lh3MJYipQ5HfrVYxOwvPX8O/4uNgOOeqLWjySXG9rixqy1pvE
         sa6Q==
X-Gm-Message-State: ACrzQf3wG0InL6tvKbltS4SA6DkUO2c5p9qP0qmIAP6HWJc2lqvXaFiw
        ZMUE6TKLbZYo8xf3iTGlCSniPQ==
X-Google-Smtp-Source: AMsMyM78SWXFcbPfgcCDhdUH4DnOOhgkkgPfPbbUHfJQo1Nu6MQXuSWEQUlwUTBljuFsGMu/BNn5dg==
X-Received: by 2002:a2e:97d7:0:b0:277:4c7:c938 with SMTP id m23-20020a2e97d7000000b0027704c7c938mr571272ljj.294.1666482031813;
        Sat, 22 Oct 2022 16:40:31 -0700 (PDT)
Received: from gilgamesh.lab.semihalf.net ([83.142.187.85])
        by smtp.gmail.com with ESMTPSA id e10-20020a05651236ca00b004949f7cbb6esm3752602lfs.79.2022.10.22.16.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Oct 2022 16:40:31 -0700 (PDT)
From:   Marcin Wojtas <mw@semihalf.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hch@lst.de, kabel@kernel.org,
        jaz@semihalf.com, Marcin Wojtas <mw@semihalf.com>
Subject: [PATCH] ARM: dts: armada-38x: Mark devices as dma-coherent
Date:   Sun, 23 Oct 2022 01:40:24 +0200
Message-Id: <20221022234024.87475-1-mw@semihalf.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Armada 38x platforms marks all devices as coherent via
mvebu_hwcc_notifier(), whereas the standard way to determine
this is by of_dma_is_coherent(). Reflect the hardware
capabilities by adding 'dma-coherent' properties to the device tree.

Signed-off-by: Marcin Wojtas <mw@semihalf.com>
---
 arch/arm/boot/dts/armada-380.dtsi | 1 +
 arch/arm/boot/dts/armada-385.dtsi | 1 +
 arch/arm/boot/dts/armada-38x.dtsi | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/armada-380.dtsi b/arch/arm/boot/dts/armada-380.dtsi
index ce1dddb2269b..25d17550e2fc 100644
--- a/arch/arm/boot/dts/armada-380.dtsi
+++ b/arch/arm/boot/dts/armada-380.dtsi
@@ -38,6 +38,7 @@ pcie {
 			compatible = "marvell,armada-370-pcie";
 			status = "disabled";
 			device_type = "pci";
+			dma-coherent;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
diff --git a/arch/arm/boot/dts/armada-385.dtsi b/arch/arm/boot/dts/armada-385.dtsi
index 83392b92dae2..6fb8c254cbdc 100644
--- a/arch/arm/boot/dts/armada-385.dtsi
+++ b/arch/arm/boot/dts/armada-385.dtsi
@@ -37,6 +37,7 @@ pciec: pcie {
 			compatible = "marvell,armada-370-pcie";
 			status = "disabled";
 			device_type = "pci";
+			dma-coherent;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
index 446861b6b17b..5801873dfcbe 100644
--- a/arch/arm/boot/dts/armada-38x.dtsi
+++ b/arch/arm/boot/dts/armada-38x.dtsi
@@ -102,6 +102,7 @@ internal-regs {
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 MBUS_ID(0xf0, 0x01) 0 0x100000>;
+			dma-coherent;
 
 			sdramc: sdramc@1400 {
 				compatible = "marvell,armada-xp-sdram-controller";
-- 
2.29.0

