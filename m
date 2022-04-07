Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 001984F889C
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 22:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbiDGUeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 16:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbiDGUd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 16:33:57 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D2FB31E788
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 13:19:47 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id k23so9479699wrd.8
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 13:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JJSbUDifbnKiCK7OxjEYTIFgKb9+e/PTX5OKVRIiP8Q=;
        b=hd2cjk9p73fGKxH7od8GPCflsA3w0/7xSp6Em8srH/JA7WqbKWz8ozYtWwgffmatqc
         ZjK/TwTCTeRsMZQUD57l64pyQQjAQDmxwfGS/tL9dE+hNgo6GdYQboropLVCAKova7wu
         kHlE9rzK+pCMzVdJ7tbShhVGEF9tU4sJZ4owYDqwsTWLZdJDad5fOBEyNS58zA0ECYGo
         qAvev3LSHwJFlnQ+R8SHN7cJYIkxu+4/cchEG6C8zqrjRFlVnsEeKbe97Opo0ZQ5Udrg
         Paj3abv4rxah4hJKQs+tSxPqxexYFJnPUP87ikqT27udwl+BuHd3BgAqnIaOd3z0SZhw
         MDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JJSbUDifbnKiCK7OxjEYTIFgKb9+e/PTX5OKVRIiP8Q=;
        b=4AaaahNOEfRevEPN9E/hgJ0GiD/+2q9j4cVgXLJyFAowcyuWQ9CNAr0lmY11Uu2d3H
         mhN9nd4f8yfDK4khsseT0BPJ+4rLUvnvK/bInRsFJZADQH9VXqmp9LySvkPb1Ayx4aiK
         e4f+1WST4n9mlMPfUZ3b9SKeprJqYx5d5TlakngIJWjZGiJQ7LgJDvJaCSfPtshNIZjf
         WLIxgDpvuxf8A8GOW90kFIQLCKCQOHmOqiDXds/viLiwIPjM8/+9Ced3eDlNBvPnx85z
         yzRGmx6Inu53DDNwQq1ql0/9bCwtl4yo5THNVckAGbrrBWpTeV99D6JtJAr0x35V4Vtw
         kG5A==
X-Gm-Message-State: AOAM532O/4vT/K8QWEELE7z0P6S/nmBqF955pknjZquSXXZstKT/kcJg
        JOv90IF+5GShB9wNgo8Xpo09C+0u3TcmpMxQ
X-Google-Smtp-Source: ABdhPJwNLPy67bEWqYLzGAxwSpQ8ki3vGFaI7YdSZF0inJLa3UZuK4crjNLHxrGjUrAEcPnCUKDHNw==
X-Received: by 2002:a17:906:c0c8:b0:6d0:562c:2894 with SMTP id bn8-20020a170906c0c800b006d0562c2894mr15225490ejb.625.1649360340546;
        Thu, 07 Apr 2022 12:39:00 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id w14-20020a170906d20e00b006cee22553f7sm7923846ejz.213.2022.04.07.12.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 12:39:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [RESEND PATCH] riscv: dts: sifive: fu540-c000: align dma node name with dtschema
Date:   Thu,  7 Apr 2022 21:38:56 +0200
Message-Id: <20220407193856.18223-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Fixes dtbs_check warnings like:

  dma@3000000: $nodename:0: 'dma@3000000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index aad45d7f498f..5c638fd5b35c 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -167,7 +167,7 @@ uart0: serial@10010000 {
 			clocks = <&prci FU540_PRCI_CLK_TLCLK>;
 			status = "disabled";
 		};
-		dma: dma@3000000 {
+		dma: dma-controller@3000000 {
 			compatible = "sifive,fu540-c000-pdma";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic0>;
-- 
2.32.0

