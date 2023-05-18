Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BA60708BD2
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230389AbjERWkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230299AbjERWkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2397EE64
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AC045652BB
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB7C1C4339E;
        Thu, 18 May 2023 22:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449619;
        bh=vFxtHREVJ9UNBDng1m71MFH7Sb5ddr33ZSLOi8jzDkE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=iZAiGKpLFBCWpXjnHOa0G1uBBP6KR0AVjLr3F3bOIs50/DE+ordRlvZ+wXweBWtHX
         8Uefj8GUC51cJShihnA0CDlTaEYh+0qfD1OhCfBlEZdk1ye0rW6ZY/7qhM9gK3Zn+5
         Dc+NjD7HRCODaVds/NAWofa+rGrVvH2sgFWxFPqoWNJOoTggFb9uXljbANRxwl3nnr
         9Y/Felf32eGyBcYagmm7HPvp6gkvnaiUMTQM2RardFd+pKxrXkEwEoZxu63i+hsPGB
         R5hBOap+FdNV5co0HXg4lglkGxQjLPiIbhZwipQN2BWRLuiRnq+uFoJuxnAlx3UcZ5
         cqJi2RlO/1YHQ==
From:   Conor Dooley <conor@kernel.org>
To:     palmer@dabbelt.com
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@rivosinc.com>
Subject: [PATCH v2 7/8] dt-bindings: riscv: explicitly mention assumption of Zicntr & Zihpm support
Date:   Thu, 18 May 2023 23:39:08 +0100
Message-Id: <20230518-earthy-subduing-0ccc26d9c99a@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1333; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=FqaBAVwOvKHQOTc+2d9mFz4gWPu5PBX8oewfgU7Ysuc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpKzk3xnye17G69sI9nzOFoiUMsk2HeFdarN6zUWnJN YWOamnhjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEzEV4WR4W71PF2xltPzuuIF zwqzPyi8Jspt7zll5SHZ5m3VV95Pms7IsCG6wZB9oenG2QfEl645saoh6eTC3YmlzPee+e2+xGw 1lxMA
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

Similar to commit 41ebfc91f785 ("dt-bindings: riscv: explicitly mention
assumption of Zicsr & Zifencei support"), the Zicntr and Zihpm
extensions also used to be part of the base ISA but were removed after
the bindings were merged. Document the assumption of their presence in
the base ISA.

Suggested-by: Palmer Dabbelt <palmer@rivosinc.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index db5253a2a74a..d5208881a1fb 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -89,8 +89,8 @@ properties:
       Due to revisions of the ISA specification, some deviations
       have arisen over time.
       Notably, riscv,isa was defined prior to the creation of the
-      Zicsr and Zifencei extensions and thus "i" implies
-      "zicsr_zifencei".
+      Zicntr, Zicsr, Zifencei and Zihpm extensions and thus "i"
+      implies "zicntr_zicsr_zifencei_zihpm".
 
       While the isa strings in ISA specification are case
       insensitive, letters in the riscv,isa string must be all
-- 
2.39.2

