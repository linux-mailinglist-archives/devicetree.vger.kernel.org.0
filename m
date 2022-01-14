Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1603048E740
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 10:17:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237174AbiANJRw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 04:17:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237038AbiANJRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 04:17:52 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B23C7C061401
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 01:17:51 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id u15so12844205ple.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 01:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K49u+vw8xuJoyxVWZcA3NU+d4XvPmTqJkyhbFma1tEc=;
        b=EVupHttrxPcen6ULmEixZnPbT26g4c+94DyjVPU66nQYYT/5Ego7P6RHu0tJanvUrH
         8guNm0FdQveO46wxKD9SEyeO1sLcsuboP1p9BytGBbPXOE07McBST/jGPcHjXU98cuFL
         eUCb3cmm69qtqXb8LabZ/ZH5qBP794eqqa/XqLeZGEW3mCWgP4NwHIhRsqjMgfsImtyQ
         j5D12YxHNBxitsbn6L9UrZNArImktllj8Knsw3KhD1rb5CgKWXaF3RD7xlVinr8OLdEX
         QIbLoKcRC1uYTCHgQT1G7d0nqkJjlo89YF7cSPOy8fP4vJiys05E1TWfn/Z7VJIzhmAA
         ow2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K49u+vw8xuJoyxVWZcA3NU+d4XvPmTqJkyhbFma1tEc=;
        b=jaf4eTaeRYjbP1EoV3QsCIieMr/qWGMJSzMnjcCfwclAAZGLyhofCflpRjqGWA/X9Q
         oG+KuoNZVheW42p44fEPXQJ3odRaEPDqbgxrYLlNNr0fCa2IdJcqz8d9VnCrQ/iaMjFc
         BDK1rJUCmjAFn81GNHBL8nWVyS+1CslpkYQ3RH0u1uFePhPjOVmzztPTJ9skMlVVZ2f+
         jR7FRs9O85K391YUEW2LT6f4AGlimdEmSsyziRnwA9bNA8zZ0e/2ZzB2Fz5icLorfCw6
         fa86WHRbf1Ruow49THnDzmERc9/Erv68kv7MRGjZXAR5hwSX6D3LVYDhJFSm74XJt3mG
         WwIA==
X-Gm-Message-State: AOAM53101ewOYCCcgnBoLWNInhYChmDT4O27bMODXMw525YdyH7MDazU
        gSFsVRaLlP5ledOOMknSCQXyow==
X-Google-Smtp-Source: ABdhPJwgjZNZBcWY1WqDIfspOa+C3WcZH6OkqRDy57h33N56DUi3jBThAmxkLw4TGNzYi0naU9J2MQ==
X-Received: by 2002:a17:90a:4f4b:: with SMTP id w11mr18924303pjl.112.1642151871283;
        Fri, 14 Jan 2022 01:17:51 -0800 (PST)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id z3sm4237179pgc.45.2022.01.14.01.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jan 2022 01:17:50 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH v3 1/3] riscv: dts: Add dma-channels property in dma node
Date:   Fri, 14 Jan 2022 17:17:39 +0800
Message-Id: <163a2cf11b2aceee2a1b8dc83251576d2371d4a6.1642151791.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1642151791.git.zong.li@sifive.com>
References: <cover.1642151791.git.zong.li@sifive.com>
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

