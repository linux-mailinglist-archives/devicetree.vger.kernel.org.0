Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AC38708BCE
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 00:40:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjERWkQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 18:40:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230220AbjERWkQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 18:40:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A50D5E6B
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 15:40:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3982365290
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:40:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7611BC4339B;
        Thu, 18 May 2023 22:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684449613;
        bh=ypjNYLjW+D7UXqDeV7BW4n9xdA8f+pquBC6t0rUOM2Y=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=TRGgB1D9F10gnbSRtaCw0ZmGfoB8QCrg0UZgV0ymIOdAzKgnBBG4js8HxunGJRYPn
         GQ85QjENjGd20j2UXV9OpeGyp7HY43yb4Iu2e8qZKPiBeLwNW7RLnWzvhiV8O5P44j
         1a6TVbBXcpHB9tUZnqBMhmV/EbAIFIAK3x/u4yBYdbsXKgFW7dcEamYv5TEi5kGmgV
         6ycrwJ5AvW3gE8GGGu7FENWINRvayfkY5Na3+ffMmYK6groHYd8Tbbg7Vn8LXRhOtm
         H3jARotuWdHsOo3d/h4zw2w63SB1lGOGpLo/RlthYVhvKraIQFGQbmK5IEqmgefoRR
         /MjLJyb93YDTw==
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
Subject: [PATCH v2 5/8] RISC-V: rework comments in ISA string parser
Date:   Thu, 18 May 2023 23:39:06 +0100
Message-Id: <20230518-tactless-ascent-6b74f1119336@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230518-moneybags-rebalance-1484db493d6a@spud>
References: <20230518-moneybags-rebalance-1484db493d6a@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4612; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=MzEbrG92FOqTlvRzWi1g8GTF0L/yzRwWLOI3UI52hnc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDClpKzlYrNzSPpW1/Yy5Iymr2MD8JeDNjgdzfPbfSf07y d7x2qFFHaUsDGIcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZjIBH2G/w52Rut/dXN9jql+ tuWN34mr0z1WLVnR0/pJKsk84sxS130Mf4Uei/fE3GT5mK824VRbX/G2k4YJLRYuW6QPM368+yA jmxMA
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
index a79c5c52a174..cc5189c7c64e 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -146,7 +146,7 @@ void __init riscv_fill_hwcap(void)
 
 			switch (*ext) {
 			case 's':
-				/**
+				/*
 				 * Workaround for invalid single-letter 's' & 'u'(QEMU).
 				 * No need to set the bit in riscv_isa as 's' & 'u' are
 				 * not valid ISA extensions. It works until multi-letter
@@ -163,53 +163,101 @@ void __init riscv_fill_hwcap(void)
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

