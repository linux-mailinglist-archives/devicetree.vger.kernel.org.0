Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22DCC6EF289
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 12:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232133AbjDZKqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 06:46:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240601AbjDZKp6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 06:45:58 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415E35BA1
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1682505906; x=1714041906;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ricgD7/YwtaexpP9atX1g+908o4ZNkj1Y0ZHbO2s7NE=;
  b=xwerSYUz0OKMPgVJFFe3MhGT/elKodVFnr4WBrQ+rNHRR16vPiNOQatr
   lkgAUYhxMK6pc4MvCoW90MgfnAzIxXd6oI5P9uL5QvaOs6g6CaXwLTSB5
   XmSYvKX7ntyt1ESOSgaLWj4q0slXDoHooNNrlnoK3XjxyzIYUIGNL9oTV
   KR/gD0HwJsEtxznqnUtARTEOQjisaTOXPQIebnsa8f/goEnPNHFU3XQL6
   Ulq+e7Xde3SwjVlT+IcjGUhCApkn/VxI7YSEWTV+M+1/5IP80Ys++djbp
   B/dlzzudd1YAKTvngV58DMRVmLDKHwnNzjYgiKUcQPjdYM1PMixoVrfB4
   g==;
X-IronPort-AV: E=Sophos;i="5.99,227,1677567600"; 
   d="scan'208";a="210769068"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Apr 2023 03:44:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 26 Apr 2023 03:44:12 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 26 Apr 2023 03:44:10 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     <palmer@dabbelt.com>
CC:     <conor@kernel.org>, <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH v1 2/2] dt-bindings: riscv: drop invalid comment about riscv,isa lower-case reasoning
Date:   Wed, 26 Apr 2023 11:43:25 +0100
Message-ID: <20230426-payphone-nautical-7098d15035c8@wendy>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426-satin-avenging-086d4e79a8dd@wendy>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1297; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=ricgD7/YwtaexpP9atX1g+908o4ZNkj1Y0ZHbO2s7NE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmeDF4i0xfUB5xcpnq1YOr0vTkrkoV5J3Tu9HpXIPt0duv/ Oe/cO0pZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCR0gBGhp3s0vMK0icwpV0o28tlqf 5rXWTdZc5EqZnaL1V1bmzeFMLI8Pjrz71vbNtiNxUK/Q/X+Wwefa04+sVbqZuZoXmBy14a8wIA
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

"Ease of parsing" may have been the initial argument for keeping this
string in lower-case, but parsers may have been written that expect
lower-case only.
For example, the one in released kernels currently does not behave
correctly for multi-letter extensions that begin with a capital letter.
Allowing upper-case here brings about no benefit but would break
compatibility between new devicetrees and older kernels.

Drop the comment to avoid confusing people.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index f24cf9601c6e..9e273a3264e3 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -86,7 +86,7 @@ properties:
 
       While the isa strings in ISA specification are case
       insensitive, letters in the riscv,isa string must be all
-      lowercase to simplify parsing.
+      lowercase.
     $ref: "/schemas/types.yaml#/definitions/string"
     pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[a-z])+)?(?:_[hsxz](?:[a-z])+)*$
 
-- 
2.39.2

