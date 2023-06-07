Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39A03726BEB
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233604AbjFGU3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:29:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233549AbjFGU3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:29:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7553726B8
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:28:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4CD90644C9
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 20:28:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82497C433A0;
        Wed,  7 Jun 2023 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686169735;
        bh=42Kr9DzcOlyMxwqIlPuzrYxXlGgPnmpJsSEXMJrIrpM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=JEUvlFkCHtsoStuAUAN1kg1abUypK2wAJ0nXv/XlOUUH+7v/E6fas34a6PfjK0xP1
         AVd9JohTDay4aRP7CbeIdxjS+Rt9qaIoabwmjAChDHAHfmcl+8tMGlItmeVyUtiNnB
         g4wsfdiQoy1wLwEOAwQ4rBgJOPknKVW5dqnH8o5cGR1JA5rEb8/gVvBg17eobBO/wF
         HauNqFjHNykQ8IPtICGqHerhDYRjsKLDzejSlr07wru9Nm4wArMk5oOSx0aoDrYm0w
         SMPz0VPufBX4tDDC6pcU04B9XApc+stdrHEOJ/aw9HwuNEPW7PkJui2OE6Ls9dfky7
         n+EEV0/u6cy0Q==
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
Subject: [PATCH v3 5/7] RISC-V: remove decrement/increment dance in ISA string parser
Date:   Wed,  7 Jun 2023 21:28:29 +0100
Message-Id: <20230607-estate-left-f20faabefb89@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2940; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=MU74K4Z8b6PROrfxVKK7QLzTi9OJvvgiRmgVU5FGIKM=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkNLzKXrIpN0f6tv+Bou25zxfp7eQUeM/oEnXzmNP0+p VKta/ypo5SFQYyDQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABPptmH4K58Zdr3r/L8+od4L PXa+zF3PXyR59QU4ZRwLFZkonOXuyfA/btcl4Y3qN38fzRdnTNz1Zvn90DnzpjyzKToc1BHy79U WdgA=
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
index 7dd4589e79a4..84dc44a3e6e5 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -157,7 +157,7 @@ void __init riscv_fill_hwcap(void)
 		isa += 4;
 
 		bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
-		for (; *isa; ++isa) {
+		while (*isa) {
 			const char *ext = isa++;
 			const char *ext_end = isa;
 			bool ext_long = false, ext_err = false;
@@ -270,14 +270,12 @@ void __init riscv_fill_hwcap(void)
 
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

