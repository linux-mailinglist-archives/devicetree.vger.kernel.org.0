Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8088B726BF0
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:29:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233629AbjFGU3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233580AbjFGU3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:29:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE842685
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:29:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 17EE6644CB
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 20:28:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 240AFC433D2;
        Wed,  7 Jun 2023 20:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686169738;
        bh=vFxtHREVJ9UNBDng1m71MFH7Sb5ddr33ZSLOi8jzDkE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=hVU/uMrosox7GhZBtN3DjCMhKJnUZE3rQcYVmRehFgQzXHiqV1CJWoD2BMB++Dfs3
         y75HSiWEFpNlJtmqvPaIT8jr3AtnFW8NSMDkaMx/yDBNkMU7dqQJAu91ABT0aEtk0Z
         UEooWXMKcEsp4MDgxp6nearkENg7oWO3Sf1ByOab5n6niw+uu7HP9W+dTFIoO5Gsuy
         8STDiuf7LJVAOJZ3PrW238+kVFbSjbajIBGA5CpAvBOUC8oNBvi4ffpp2xA+p/D71n
         svPKzM4VpK3HiZBFrnHW2wCzucMjpWVeN6N1m1WYk8kvAcf7xeH/DrMSQLLq/tzy6S
         RJBm9GNhvzZgA==
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
Subject: [PATCH v3 6/7] dt-bindings: riscv: explicitly mention assumption of Zicntr & Zihpm support
Date:   Wed,  7 Jun 2023 21:28:30 +0100
Message-Id: <20230607-rerun-retinal-5e8ba89e98f1@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1333; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=FqaBAVwOvKHQOTc+2d9mFz4gWPu5PBX8oewfgU7Ysuc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkNL7JE9b1ZHx2YWfOowT5n/abnKddnzDD5eONE1I4Aj eqjT1kYO0pZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjARmyBGhi8+3BME1ogvqma3 mvMwPkPAUu/d7Iz1W9Kyiyc0+mqEPmdkaN624Hz04roMl8VSr5e1xM71clQ5nrNgX4BCPMOZoKK vXAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
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

