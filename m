Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF8296EF28C
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 12:47:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240024AbjDZKrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 06:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240624AbjDZKqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 06:46:23 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA2C05B95
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1682505922; x=1714041922;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=P7aomWah/OpA02/AqRra4XwMTh/phPJAkXHsrsHN6yA=;
  b=bTDZMWIUlhYzzP6FpMMYe3AX++PnpR8YgrQcFDTEY1/012qVSWk0dXML
   wCh1og6AvafQZMfLuGe1I/AX2D9swrkKnd46gAwBGgKIFw10DYpahWvWT
   WydZ3Ah3fBJgPFb3lwJXoh3gFdXgS2vRBFMAvmzIE9003RRHAGtN6r4gI
   PiS+psap7MITsMR4DqnRsH16WuIfPXI2vIhHHGA0WRrvoXjKr2DrXwZTn
   vL0pFAHVhhBAn6OIx3QLqud1k/ebWpkQYLw6gr5GAUeEXpmsg618vVVBb
   watJ/oXY1SmFi2SbXEEd2ylEbXN9WuLnZiv+fr7ZN3BTD5Fz5J3W+3bBq
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,227,1677567600"; 
   d="scan'208";a="212354511"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Apr 2023 03:44:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 26 Apr 2023 03:44:09 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 26 Apr 2023 03:44:07 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     <palmer@dabbelt.com>
CC:     <conor@kernel.org>, <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions starting with caps
Date:   Wed, 26 Apr 2023 11:43:24 +0100
Message-ID: <20230426-devalue-enlarging-afb4fa1bb247@wendy>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426-satin-avenging-086d4e79a8dd@wendy>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2139; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=P7aomWah/OpA02/AqRra4XwMTh/phPJAkXHsrsHN6yA=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmeDJ5JMyw9lrx/cCJ8ldBs2bs1V7t1Hoe5+6v63CrbZdko smZDRykLgxgHg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACbymZ2R4eOr8mkzeZ9HL1dPN47Z21 c+O3XFIdu3uoc5XHd/0V+WvY7hf91R25uqltu5ryz3u76K/b90ePGJvsvMufY5YTcjeduceAE=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Yangyu Chen reported that if an multi-letter extension begins with a
capital letter the parser will treat the remainder of that multi-letter
extension as single-letter extensions.

Certain versions of rocket-chip will export devicetree containing
rv64ima_Zifencei, which is parsed by the kernel as rv64imafc.

While capital letters in riscv,isa are invalid and the validation of
devicetree's isn't the kernel's job, we should behave more gracefully
here. Rather than abort parsing on meeting a capital letter, mark the
extension as an error & allow the parser to skip ahead to the next
extension.

Reported-by: Yangyu Chen <cyy@cyyself.name>
Link: https://lore.kernel.org/all/tencent_1647475C9618C390BEC601BE2CC1206D0C07@qq.com/
Fixes: 2a31c54be097 ("RISC-V: Minimal parser for "riscv, isa" strings")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/kernel/cpufeature.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 52585e088873..93850540b0b4 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -142,6 +142,10 @@ void __init riscv_fill_hwcap(void)
 			const char *ext_end = isa;
 			bool ext_long = false, ext_err = false;
 
+			if (unlikely(!islower(*ext))) {
+				ext_err = true;
+			}
+
 			switch (*ext) {
 			case 's':
 				/**
@@ -156,6 +160,15 @@ void __init riscv_fill_hwcap(void)
 					break;
 				}
 				fallthrough;
+			case 'S':
+			case 'X':
+			case 'Z':
+				/*
+				 * As the riscv,isa string must be lower-case,
+				 * S, X and Z are not valid characters. Parse
+				 * the invalid extension anyway, to skip ahead
+				 * to the next valid one.
+				 */
 			case 'x':
 			case 'z':
 				ext_long = true;
@@ -185,10 +198,8 @@ void __init riscv_fill_hwcap(void)
 				++ext_end;
 				break;
 			default:
-				if (unlikely(!islower(*ext))) {
-					ext_err = true;
+				if (unlikely(ext_err))
 					break;
-				}
 				/* Find next extension */
 				if (!isdigit(*isa))
 					break;
-- 
2.39.2

