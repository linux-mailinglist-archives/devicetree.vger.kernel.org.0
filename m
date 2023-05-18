Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1F2708BCF
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230255AbjERWkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230220AbjERWkS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40BD5E6E
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D200E65290
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1714CC433EF;
        Thu, 18 May 2023 22:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449616;
        bh=afQWXoYzF0WLcz51iGYlm7MBMrlTXwcNtm5mF8iSKdk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=qbRjT6EP3VRVcA8+Fq46EVTaTNMVgM7Y3QvCOguDQw7akUAkMEdenp49JdH46D4p2
         t7f1szYRrZEZcnJrk/mDBq13STJY+Ib663VhLnmn4HhnqHXDs9CQrd1CajK0abRfPu
         qFfYW5v3njZHalRM5bi5ZKbVPfBjbrpsXqX5dXVSwdI18tLisVXBiT+0ipgsQfn71L
         C7ukOJtOKt97HeHXxfRcb+5miDzpWlNN1dHVHlcaVf6GXy4/lfyUZ39LtW/uHgsYOS
         zNEv1Aegar3g7wI78YDZDQ211D6lGAM16JHlsf2trZAhARsODAFKdYZsYvnxNOYxkD
         kjn/N6hOknmCA==
From:   Conor Dooley <conor@kernel.org>
To:     palmer@dabbelt.com
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 6/8] RISC-V: remove decrement/increment dance in ISA string parser
Date:   Thu, 18 May 2023 23:39:07 +0100
Message-Id: <20230518-growl-nickname-f219c1cd04fa@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2940; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=EF/KeXcxvaaRALk3X1FMydI7oloFd9xS5158gUY26IE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpKzkOKbOrfhPyr17hfFvte+672O3R8oKCm1767jE/O mPfNrZlHaUsDGIcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZhIljEjw0Gn/H7Vg/LW/Hsf K2kLWLxZ/Gd3rGzSzIBDLlXipzbwljD8U/8idOmrymTtuuUssZdrS5zf8QtO3akYE18bmB1puG4 /AwA=
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

While expanding on the comments in the ISA string parsing code, I
noticed that the conditional decrement of `isa` at the end of the loop
was a bit odd.
The parsing code expects that at the start of the for loop, `isa` will
point to the first character of the next unparsed extension.
However, depending on what the next extension is, this may not be true.
Unless the next extension is a multi-letter extension preceded by an
underscore, `isa` will either point to the string's null-terminator or
to the first character of the next extension, once the switch statement
has been evaluated.
Obviously incrementing `isa` at the end of the loop could cause it to
increment past the null terminator or miss a single letter extension, so
`isa` is conditionally decremented, just so that the loop can increment
it again.

It's easier to understand the code if, instead of this decrement +
increment dance, we instead use a while loop & rely on the handling of
individual extension types to leave `isa` pointing to the first
character of the next extension.
As already mentioned, this won't be the case where the following
extension is multi-letter & preceded by an underscore. To handle that,
invert the check and increment rather than decrement.
Hopefully this eliminates a "huh?!?" moment the next time somebody tries
to understand this code.

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpufeature.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index cc5189c7c64e..bbf3cd203fad 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -139,7 +139,7 @@ void __init riscv_fill_hwcap(void)
 		isa += 4;
 
 		bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
-		for (; *isa; ++isa) {
+		while (*isa) {
 			const char *ext = isa++;
 			const char *ext_end = isa;
 			bool ext_long = false, ext_err = false;
@@ -252,14 +252,12 @@ void __init riscv_fill_hwcap(void)
 
 			/*
 			 * The parser expects that at the start of an iteration isa points to the
-			 * character before the start of the next extension. This will not be the
-			 * case if we have just parsed a single-letter extension and the next
-			 * extension is not a multi-letter extension prefixed with an "_". It is
-			 * also not the case at the end of the string, where it will point to the
-			 * terminating null character.
+			 * first character of the next extension. As we stop parsing an extension
+			 * on meeting a non-alphanumeric character, an extra increment is needed
+			 * where the succeeding extension is a multi-letter prefixed with an "_".
 			 */
-			if (*isa != '_')
-				--isa;
+			if (*isa == '_')
+				++isa;
 
 #define SET_ISA_EXT_MAP(name, bit)							\
 			do {								\
-- 
2.39.2

