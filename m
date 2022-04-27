Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F05F511F31
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:37:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242639AbiD0QU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:20:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242901AbiD0QS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:18:58 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 139BD4FC48
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:14:36 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id z99so2527892ede.5
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Yyayk/RjcawLgWYAzZuuqM4z9iA3IiQWnxVg7aM9FBk=;
        b=SRAiD4Nl08BRnA5G7RHqOxRjhHE/2t4zEOLeZktktZ/L1aAhuB+FqOSwEtEXaLZzT2
         R4SRGxY45dUykug8xT/MJ8HDy3ZXw2+hsJqDVORv4ydnMPjuLhM2xek4KsA2Ezee0PEz
         X3d7W5t7hqIX3FvHDqGXTFnQFekw6notlytPaegaJDBkeIZ4rfHCRdHJNrADTbBfp5TM
         zv4PGhXunU15sJ6qyGaHuE39TxxIsI7o4ssuwuGWpgXkYd9+zwhTPgZ/G5HEVLzi1WIx
         67wOO1MD9X6/6dHae6w/5csQ/1l9ol+KwqpAQvptBEZoNCeWwYjKDUHDeBu2zav02WaK
         B0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Yyayk/RjcawLgWYAzZuuqM4z9iA3IiQWnxVg7aM9FBk=;
        b=y16ylk4AdpAYy+YhXoCteUDO7AR9fpcWMmr7K2CH0fsxqxkTe+4ktNzKzUOjwcKpbz
         FjAS6wIAnGw4BZ2Q1im1Z3Q5f8PB+fwJ6ApX8E9I9fqtXlMysK9clSdPrpLFDo2jqRab
         4pGEAE/NurjjoYKkTAH/YrUwqx1UcloqCxal5aXNJxGN7eFstsmDPL3hCpG10CL5+4kn
         ympGKFXpIbn9Tj3zlCAmVAG2D5iakzsTM7k7jm+EFiwXKfX50uANFG+DmmPg2vK3beTc
         HR55ej9UIFVdQ0fZPeHRaKUpXUU3GY3siQp2tjkqCepzZzwPyfT25HkhkRz3ehlPB3Wn
         Q6Mg==
X-Gm-Message-State: AOAM531uTjpfIuodePEZrRXwjDUkJZbPvoPRY0+PpDaevfCaPR0zqnqA
        kqfEOvrVFOKC5LbBN3Vk/GYi2A==
X-Google-Smtp-Source: ABdhPJxmugYp9cqdpnSVekLRx91zWH/+Y9y80LLPwQttFOJ5mLF//PfXkRkvHEvMD4NYa46z7MO2Gg==
X-Received: by 2002:aa7:cd0a:0:b0:425:bc13:4ccb with SMTP id b10-20020aa7cd0a000000b00425bc134ccbmr29595892edw.229.1651076068228;
        Wed, 27 Apr 2022 09:14:28 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b17-20020aa7dc11000000b00412ae7fda95sm8583383edu.44.2022.04.27.09.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:14:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: dmaengine: sprd: deprecate '#dma-channels'
Date:   Wed, 27 Apr 2022 18:14:21 +0200
Message-Id: <20220427161423.647534-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427161423.647534-1-krzysztof.kozlowski@linaro.org>
References: <20220427161423.647534-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The generic property, used in most of the drivers and defined in generic
dma-common DT bindings, is 'dma-channels'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/dma/sprd-dma.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/sprd-dma.txt b/Documentation/devicetree/bindings/dma/sprd-dma.txt
index adccea9941f1..c7e9b5fd50e7 100644
--- a/Documentation/devicetree/bindings/dma/sprd-dma.txt
+++ b/Documentation/devicetree/bindings/dma/sprd-dma.txt
@@ -8,10 +8,13 @@ Required properties:
 - interrupts: Should contain one interrupt shared by all channel.
 - #dma-cells: must be <1>. Used to represent the number of integer
 	cells in the dmas property of client device.
-- #dma-channels : Number of DMA channels supported. Should be 32.
+- dma-channels : Number of DMA channels supported. Should be 32.
 - clock-names: Should contain the clock of the DMA controller.
 - clocks: Should contain a clock specifier for each entry in clock-names.
 
+Deprecated properties:
+- #dma-channels : Number of DMA channels supported. Should be 32.
+
 Example:
 
 Controller:
@@ -20,7 +23,7 @@ apdma: dma-controller@20100000 {
 	reg = <0x20100000 0x4000>;
 	interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 	#dma-cells = <1>;
-	#dma-channels = <32>;
+	dma-channels = <32>;
 	clock-names = "enable";
 	clocks = <&clk_ap_ahb_gates 5>;
 };
-- 
2.32.0

