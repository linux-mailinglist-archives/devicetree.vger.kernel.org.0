Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74A9B484DBB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 06:44:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237536AbiAEFoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 00:44:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237533AbiAEFoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 00:44:14 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87ECFC061761
        for <devicetree@vger.kernel.org>; Tue,  4 Jan 2022 21:44:14 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id y9so6116579pgr.11
        for <devicetree@vger.kernel.org>; Tue, 04 Jan 2022 21:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K49u+vw8xuJoyxVWZcA3NU+d4XvPmTqJkyhbFma1tEc=;
        b=RUGYRR1RJQKJtUsWJ5uTAOkOhkJH9bu4UoUiYQ6kKHDxBWY5hKh/TwfbqSR1UZo4QB
         kAJ4aNcqR9tGhqq7pddSAxim7ptsvg9Ke2hIBRaclfX/3xnOAiBJrCA+drxUunvh85hg
         UvAlOe/ZnNWL/ZUicwzR8o28Xd8XwIFT5GAFFEiR+Q/gzdDMq5L3xdldGWGlgOf1BTqu
         babo3m/6lJwNgQA/8iX+shYU7Qo6eFbnDERAIdiRc/soLziGFaTsX3aPsNWevBi/E3In
         o1C8duEkKoWxXHA1MNyIF2CAPgKiZ0uWNSgJCPV71zPh0qadMAayJX3/QBhP0uumB2s1
         3O/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K49u+vw8xuJoyxVWZcA3NU+d4XvPmTqJkyhbFma1tEc=;
        b=X4HcdVvwuP4ZeBXwTcqyEf81jbnrHJJ0r5cX7dWgelH/ODAMd9f1yH8fwsOalXWiv5
         0cg+GuLWo8iL01wiiyp+SPD/JMB4R0sCugz85v3g28NOp3XrAV6XGcL5PKbS2L6w2Xmv
         Y5xM2vMZWL6hN5yIcoVd+yqqzPbtFaNWkXAVzHOLvNz15R+Dju2EBhg1jQfKGgSvoDGn
         wvxZavSVKUyKVXcxtGjVgtQayicIHxvoQWHIjt55XJ7uz9xGjuNJgOjr5B9vrfhL5ktR
         5B8GkIrD2lcp4LkFK5KhOVPv2ddc8tXvt3acdZVZDBaKJspb8Zo3/8J+4RLAAEo9AMPr
         HXdw==
X-Gm-Message-State: AOAM533Tr/wFBsAe4ZAzFJx3Zb8lAA2Z8qV6S32UeE39vKHW+do/5614
        9+tBg2AayqpVGp87Q7Kc+G9xXg==
X-Google-Smtp-Source: ABdhPJz1d/GHnBphP8/L6c4hZ+RtKg54y3QIKQ+HyWa3rLpUV2ja9CTDSCNACsrET9L5iBou/JXaFQ==
X-Received: by 2002:a63:3c19:: with SMTP id j25mr1258601pga.476.1641361454102;
        Tue, 04 Jan 2022 21:44:14 -0800 (PST)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id cu18sm1000574pjb.53.2022.01.04.21.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jan 2022 21:44:13 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH 1/3] riscv: dts: Add dma-channels property in dma node
Date:   Wed,  5 Jan 2022 13:43:58 +0800
Message-Id: <eeaf4cab4ec44ac95b002cdbf745d328fd46bb60.1641289490.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1641289490.git.zong.li@sifive.com>
References: <cover.1641289490.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dma-channels property, then we can determine how many channels there
by device tree.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 1 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index c9f6d205d2ba..3c48f2d7a4a4 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -188,6 +188,7 @@ dma@3000000 {
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic>;
 			interrupts = <23 24 25 26 27 28 29 30>;
+			dma-channels = <4>;
 			#dma-cells = <1>;
 		};
 
diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 0655b5c4201d..2bdfe7f06e4b 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -171,6 +171,7 @@ dma: dma@3000000 {
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic0>;
 			interrupts = <23 24 25 26 27 28 29 30>;
+			dma-channels = <4>;
 			#dma-cells = <1>;
 		};
 		uart1: serial@10011000 {
-- 
2.31.1

