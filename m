Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 232A56FB643
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233007AbjEHSRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:17:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233074AbjEHSRT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:17:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E873F5FC7
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:17:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5180A62F14
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 18:17:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17C4CC433A1;
        Mon,  8 May 2023 18:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683569834;
        bh=BeSBiMW5kmgs7+Z7icdUc3/2UWyKIKrlY/vXI6gIZDU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=F850zsgIjLZZIVsp/40NUEh0Et3PjVKwqFK17JJEOj4Qv2WUfB1tB58G2VLPTBQmG
         8XRfUAi8yafgVdWrpZ1vfyScdT8FxrJOdvC3iwtV1yUA8f0Fgs3Sh1j/iv2AGpGI4d
         njKbCwX2JHJpJQQPGGD+XLX60EZQdKDiUC2IU4au6A/AIBcr573u3Hti4OBRAJ8+1W
         SUHRBOJEVon0J31fEDuq7y/ZLzPp539+XRI0PVC2OXYcgCNjQ32XZvIjWYSJB9KhGj
         64wLFYsidBsWtjUzxndJ0BcJfZRqfopOiA90Meomd/ICeHOkUK6WFLVpwHN9DUXY1m
         bt/IdqNFsU9lg==
From:   Conor Dooley <conor@kernel.org>
To:     linux-riscv@lists.infradead.org
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
Subject: [RFC 6/6] riscv: dts: microchip: use new riscv,isa-extension-* properties for mpfs
Date:   Mon,  8 May 2023 19:16:26 +0100
Message-Id: <20230508-elf-dismay-799bb48a635e@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508-hypnotic-phobia-99598439d828@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2933; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=sxz5UhIOaJj8Re9+hSvtSwbaV+pJMl6xzcAp79D9KJ0=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmRNmWBZjpFz00vJS05+L9L+f2fzB2CqnuOxv4vyjCY1 aDQqX6io5SFQYyDQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABM5JcXIsDaoQu7ndSPHiFVZ b6r+XVDUX7+QO+WEwN/4JVafG774vWT4n/X1LGvk2k8PHu2w26F8MObA3czOT/KLMu2ezbrw/db +2UwA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs.dtsi | 42 ++++++++++++++++++++++---
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 104504352e99..53efb5e03c64 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -21,7 +21,11 @@ cpu0: cpu@0 {
 			i-cache-sets = <128>;
 			i-cache-size = <16384>;
 			reg = <0>;
-			riscv,isa = "rv64imac";
+			riscv,isa-base = "rv64i";
+			riscv,isa-extension-i = "v1.0.0";
+			riscv,isa-extension-m = "v1.0.0";
+			riscv,isa-extension-a = "v1.0.0";
+			riscv,isa-extension-c = "v1.0.0";
 			clocks = <&clkcfg CLK_CPU>;
 			status = "disabled";
 
@@ -47,7 +51,14 @@ cpu1: cpu@1 {
 			i-tlb-size = <32>;
 			mmu-type = "riscv,sv39";
 			reg = <1>;
-			riscv,isa = "rv64imafdc";
+			riscv,isa-base = "rv64i";
+			riscv,isa-extension-i = "v1.0.0";
+			riscv,isa-extension-m = "v1.0.0";
+			riscv,isa-extension-a = "v1.0.0";
+			riscv,isa-extension-f = "v1.0.0";
+			riscv,isa-extension-d = "v1.0.0";
+			riscv,isa-extension-c = "v1.0.0";
+			riscv,isa-extension-zicsr = "v1.0.0";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
@@ -75,7 +86,14 @@ cpu2: cpu@2 {
 			i-tlb-size = <32>;
 			mmu-type = "riscv,sv39";
 			reg = <2>;
-			riscv,isa = "rv64imafdc";
+			riscv,isa-base = "rv64i";
+			riscv,isa-extension-i = "v1.0.0";
+			riscv,isa-extension-m = "v1.0.0";
+			riscv,isa-extension-a = "v1.0.0";
+			riscv,isa-extension-f = "v1.0.0";
+			riscv,isa-extension-d = "v1.0.0";
+			riscv,isa-extension-c = "v1.0.0";
+			riscv,isa-extension-zicsr = "v1.0.0";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
@@ -103,7 +121,14 @@ cpu3: cpu@3 {
 			i-tlb-size = <32>;
 			mmu-type = "riscv,sv39";
 			reg = <3>;
-			riscv,isa = "rv64imafdc";
+			riscv,isa-base = "rv64i";
+			riscv,isa-extension-i = "v1.0.0";
+			riscv,isa-extension-m = "v1.0.0";
+			riscv,isa-extension-a = "v1.0.0";
+			riscv,isa-extension-f = "v1.0.0";
+			riscv,isa-extension-d = "v1.0.0";
+			riscv,isa-extension-c = "v1.0.0";
+			riscv,isa-extension-zicsr = "v1.0.0";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
@@ -131,7 +156,14 @@ cpu4: cpu@4 {
 			i-tlb-size = <32>;
 			mmu-type = "riscv,sv39";
 			reg = <4>;
-			riscv,isa = "rv64imafdc";
+			riscv,isa-base = "rv64i";
+			riscv,isa-extension-i = "v1.0.0";
+			riscv,isa-extension-m = "v1.0.0";
+			riscv,isa-extension-a = "v1.0.0";
+			riscv,isa-extension-f = "v1.0.0";
+			riscv,isa-extension-d = "v1.0.0";
+			riscv,isa-extension-c = "v1.0.0";
+			riscv,isa-extension-zicsr = "v1.0.0";
 			clocks = <&clkcfg CLK_CPU>;
 			tlb-split;
 			next-level-cache = <&cctrllr>;
-- 
2.39.2

