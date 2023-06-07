Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 137B9726BF6
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:29:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233589AbjFGU3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:29:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233583AbjFGU3V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:29:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 504C7269D
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:29:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A77AB644C7
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 20:28:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE8C0C4339E;
        Wed,  7 Jun 2023 20:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686169733;
        bh=eY1UqwYJntMLMU5Yd8lkw/zWfSR41OHe1x/9kSmW+Ek=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ApBq1xCZHN18wc0R9zdT9eYGRLFkA6Xtg9RKeBK1uqlfn1dqJN+WMxfBH91SyGYTU
         /vFDACsUiC8E8iX1AIZIDOc37VngXOCJ/B0e8EDXAZlbApb038tasCxdrsE+XidvPP
         wuljKsHEZbxxrepFeDqdWN70kGasU4E9lB1jqWrzTzQHU/DS5/loxvZSwGFZyeJpct
         OBgimt/NtihYGQ6rJXJ4USE3mQJxPqtV2LLh7apiRo2yB8AMnQ2ZuEEDsrI9oyvWZW
         noxfeEw4wDNkjFqtvkdLS0EcvMSmYJXUIJPVouAPjvUgtrflsL0RQQO3WfGdHZKUqT
         PRmKof92hqkFw==
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
Subject: [PATCH v3 4/7] RISC-V: rework comments in ISA string parser
Date:   Wed,  7 Jun 2023 21:28:28 +0100
Message-Id: <20230607-headpiece-tannery-83ed5cc4856a@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4612; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=pRBb9rN0x8kEbAvR9LC8Ni1TdOFEl8xAcaZ/+5Mew2g=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkNLzKrH83bnrv7k1D3pvfXf7RpsX4parjaJSAX6fKFS bRs4RrvjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAExkaycjw15Wta0lkdNa3hw6 6c02eRH7ooSZby/tLf9ZX2t168zRu8KMDPs8Aq+taBd6dN7yyJLFgVFSqrp9833L92+Q4i6e2n5 mAyMA
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

I have found these comments to not be at all helpful whenever I look at
the parser. Further, the comments in the default case (single letter
parser) are not quite right either.
Group the comments into a larger one at the start of each case, that
attempts to explain things at a higher level.

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpufeature.c | 70 ++++++++++++++++++++++++++++------
 1 file changed, 59 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c3851c8cfa9c..7dd4589e79a4 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -164,7 +164,7 @@ void __init riscv_fill_hwcap(void)
 
 			switch (*ext) {
 			case 's':
-				/**
+				/*
 				 * Workaround for invalid single-letter 's' & 'u'(QEMU).
 				 * No need to set the bit in riscv_isa as 's' & 'u' are
 				 * not valid ISA extensions. It works until multi-letter
@@ -181,53 +181,101 @@ void __init riscv_fill_hwcap(void)
 			case 'X':
 			case 'z':
 			case 'Z':
+				/*
+				 * Before attempting to parse the extension itself, we find its end.
+				 * As multi-letter extensions must be split from other multi-letter
+				 * extensions with an "_", the end of a multi-letter extension will
+				 * either be the null character or the "_" at the start of the next
+				 * multi-letter extension.
+				 *
+				 * Next, as the extensions version is currently ignored, we
+				 * eliminate that portion. This is done by parsing backwards from
+				 * the end of the extension, removing any numbers. This may be a
+				 * major or minor number however, so the process is repeated if a
+				 * minor number was found.
+				 *
+				 * ext_end is intended to represent the first character *after* the
+				 * name portion of an extension, but will be decremented to the last
+				 * character itself while eliminating the extensions version number.
+				 * A simple re-increment solves this problem.
+				 */
 				ext_long = true;
-				/* Multi-letter extension must be delimited */
 				for (; *isa && *isa != '_'; ++isa)
 					if (unlikely(!isalnum(*isa)))
 						ext_err = true;
-				/* Parse backwards */
+
 				ext_end = isa;
 				if (unlikely(ext_err))
 					break;
+
 				if (!isdigit(ext_end[-1]))
 					break;
-				/* Skip the minor version */
+
 				while (isdigit(*--ext_end))
 					;
-				if (tolower(ext_end[0]) != 'p'
-				    || !isdigit(ext_end[-1])) {
-					/* Advance it to offset the pre-decrement */
+
+				if (tolower(ext_end[0]) != 'p' || !isdigit(ext_end[-1])) {
 					++ext_end;
 					break;
 				}
-				/* Skip the major version */
+
 				while (isdigit(*--ext_end))
 					;
+
 				++ext_end;
 				break;
 			default:
+				/*
+				 * Things are a little easier for single-letter extensions, as they
+				 * are parsed forwards.
+				 *
+				 * After checking that our starting position is valid, we need to
+				 * ensure that, when isa was incremented at the start of the loop,
+				 * that it arrived at the start of the next extension.
+				 *
+				 * If we are already on a non-digit, there is nothing to do. Either
+				 * we have a multi-letter extension's _, or the start of an
+				 * extension.
+				 *
+				 * Otherwise we have found the current extension's major version
+				 * number. Parse past it, and a subsequent p/minor version number
+				 * if present. The `p` extension must not appear immediately after
+				 * a number, so there is no fear of missing it.
+				 *
+				 */
 				if (unlikely(!isalpha(*ext))) {
 					ext_err = true;
 					break;
 				}
-				/* Find next extension */
+
 				if (!isdigit(*isa))
 					break;
-				/* Skip the minor version */
+
 				while (isdigit(*++isa))
 					;
+
 				if (tolower(*isa) != 'p')
 					break;
+
 				if (!isdigit(*++isa)) {
 					--isa;
 					break;
 				}
-				/* Skip the major version */
+
 				while (isdigit(*++isa))
 					;
+
 				break;
 			}
+
+			/*
+			 * The parser expects that at the start of an iteration isa points to the
+			 * character before the start of the next extension. This will not be the
+			 * case if we have just parsed a single-letter extension and the next
+			 * extension is not a multi-letter extension prefixed with an "_". It is
+			 * also not the case at the end of the string, where it will point to the
+			 * terminating null character.
+			 */
 			if (*isa != '_')
 				--isa;
 
-- 
2.39.2

