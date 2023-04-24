Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E27C86ED315
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 19:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231827AbjDXRGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 13:06:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbjDXRGU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 13:06:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66AE54C17
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 10:06:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EDEE06267E
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 17:06:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0638C433D2;
        Mon, 24 Apr 2023 17:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682355978;
        bh=K3s5b8PcCEuf/EPN1XvvXhk/V3+22vKCJfwaVGjbx64=;
        h=From:To:Cc:Subject:Date:From;
        b=V889VIF09tNiMvUgztLiGZzJT6ls2KeG4pnNN6+bvYgZj9FBhXcGtQW0EZspDEON1
         w7MaLro1giG+2Jc/1h5PbcSwPbG3PsPg5/tVOXgVJLXj1JZYTyKE1+a1vwpLLZFkIQ
         +BhAIPp/ceSQ+UTrXfvmEnaogzG9kEJfxddHL7F/mtXsMVlP9aP2NC7Gs04tRv5R3Z
         oISQo4vyQPf7CH0g1CgSoP+Fg/Pt9N1LcvfHlNFGTac3/bVAQRYoRvnzMF7kNNUJhH
         D9Zv1+TFxqSKyTASKg4c/WkyFXegft8+yDsZM2lAIEhRhscNl8FQWL3tJd9CxZdqjw
         w/Rmlk8hxqM+Q==
From:   Conor Dooley <conor@kernel.org>
To:     palmer@dabbelt.com
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH RESEND] dt-bindings: riscv: add sv57 mmu-type
Date:   Mon, 24 Apr 2023 18:05:43 +0100
Message-Id: <20230424-rival-habitual-478567c516f0@spud>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=972; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=8JZJ6HmnuSAkNfOWr+4ZL5dzb89sjxCC25kT1YWF1Gw=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClu257mzXFIUOI9JPvDYF+AXj/v69wPMswaIUUbksyvv +KvjNfrKGVhEONgkBVTZEm83dcitf6Pyw7nnrcwc1iZQIYwcHEKwES6HzAyHFjLGSS8tTFm3qvd TW4t16tqQ+rcNI9uC//cV/P2qLvYQobf7PqpstlxgobiM3rMyx9sb2r7wyzM/0fht1DNQV+jecy cAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Dumping the dtb from new versions of QEMU warns that sv57 is an
undocumented mmu-type. The kernel has supported sv57 for about a year,
so bring it into the fold.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Resending with the missing CCs.
Palmer, you can take this for 6.4 if you want, otherwise I'll grab it
after the merge window. I doubt there's a rush when it's been missing
for a year or so.
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 4c7ce4a37052..25d6e8dbffb8 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -66,6 +66,7 @@ properties:
       - riscv,sv32
       - riscv,sv39
       - riscv,sv48
+      - riscv,sv57
       - riscv,none
 
   riscv,cbom-block-size:
-- 
2.39.2

