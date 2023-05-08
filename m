Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35BCE6FB63D
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:17:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbjEHSRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbjEHSRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:17:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DF535BBE
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:17:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9715262135
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 18:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6522DC433A0;
        Mon,  8 May 2023 18:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683569819;
        bh=05ZEnpDryaZ3pWwm2uM1BaK+nfW//+toX2uQFMeA9T4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=HJGrfWGsDd1s7R5AE+0X9NTaSLnSiTl1CDjI2qlfcq8hhAqOCmAzMcydtEFIvBxYf
         kEQuQgx6k6zACnTIy2DQIAThvlziT4MzdAtavBoIJ+AoY6AMxPuJU2dXPxW+YKuNqX
         ZcWyVTekYnD9VAlWfQ/qEk0odrHvs1Z4RfkKOJ84kpsCTlZja+VwTzuSkmWSxSUY65
         cAt7YdetUsJq7H6vdJPHzQtJoEEzngINLFx80lTw1eJvepAaziMwmcfh8NXI2fXban
         nScP2fYPcgIYUuIXBjKAceSEWgoe4x2zOVy7EpGAFoQeSPnkxqFwFQpSmiPXRRgqHR
         h0Yt4/U4EPHrg==
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
Subject: [RFC 1/6] dt-bindings: riscv: clarify what an unversioned extension means
Date:   Mon,  8 May 2023 19:16:21 +0100
Message-Id: <20230508-decibel-fender-532248c8f8ed@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508-hypnotic-phobia-99598439d828@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1402; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=pGmr6rcDfQk2g8LcKq7L3T1Gg5LY7Zpc7WjhfhPcmv8=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmRNqXs1UuN814vn8Sa0ftPPlY/qv0kw/MDHrvlzNnmL fZ+EqTUUcrCIMbBICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIkYqjAy9C6zY3LI67n333be fu4JGzQVn7mGCx7aetLUcHrggz8Z6gz/E/Ncdueu3ZM/WX156Ko9SwoPMs54b6hXwKaUckDT+Fw 3NwA=
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

C'est la vie, the spec folks reserve the ability to make incompatible
changes between major versions of an extension. Their idea of backwards
compatibility appears driven by the hardware perspective - it's
backwards compatible if a later version is a subset of the existing
extension. IOW, if you supported `x` in vN, you still support `x` in
vN+1.
However in software terms, code that was built for the vN's `x`
extension may not work with the new definition.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index db5253a2a74a..405915b04d69 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -91,6 +91,9 @@ properties:
       Notably, riscv,isa was defined prior to the creation of the
       Zicsr and Zifencei extensions and thus "i" implies
       "zicsr_zifencei".
+      For the sake of backwards compatibility, an unversioned
+      extension means that the hart/platform is capable of
+      supporting version 1.0.0 of the extension.
 
       While the isa strings in ISA specification are case
       insensitive, letters in the riscv,isa string must be all
-- 
2.39.2

