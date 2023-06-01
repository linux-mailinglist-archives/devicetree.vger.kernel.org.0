Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51CB471980A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 12:00:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232674AbjFAKAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 06:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232853AbjFAJ70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 05:59:26 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DFD6188
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 02:59:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-96f818c48fbso84068466b.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 02:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685613555; x=1688205555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqU5JKI8xSfMQrPkRhcyh7XPcg7Z1CafuGi9gOADxbY=;
        b=c3wBpLoondpO97ox5zj7A6M408bKWCj2FPWXD37/RVj4TibSerGEzjgQBS41qgW5wc
         vQV8W4u1tqbpUlIzl1MhylDtY6qO15c/qY5kMcT4Jw1I7kcWLhCMLzMjd8L6ul67rR5H
         5xMHxuvX28WFl2qP5hgJddbgKcSQfyfLMujKfiJ3U3d9yyJI9yzwEamW9BBOui0qxPhx
         ROyznF54XxKPNV565XxXC/dgg0JQdKEuylNoRvjmBHx1B82xatc8rXu2ql/GLuFfEE6e
         p/vP9c395lnGxJgpOU88NzMX4fq1qHhpCKGqDPpCyNdqdy+sePAz3V5cHCeHFHPVhp1b
         wypA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685613555; x=1688205555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SqU5JKI8xSfMQrPkRhcyh7XPcg7Z1CafuGi9gOADxbY=;
        b=etMbIhDS9dYdDriSSQC8qGo5Outvn+16F8++fvHeScDN6QOZ4v9CoOxCEEeOHIVey4
         inRHejvdpjZk+IsuwkF6qpU+wsIA1dEIPYM5GOZ//ZpvVwkx9rhj1VjxAh1SKyhmR1F1
         bTBEi8VR5ONZ0xA1HKmj9nZ1DGnEXuCBIJynFUvj7Ot+9l/rEvnMd7XotP3s1yhQKFzh
         w70tN4EGpfegSbSVa+cNCVKxp9i1L0qadVt9ScrxLowEH7YCG/f9dEF12FOXT5hTFqso
         SCkMpHUa+ILQXX6CnaJ0sEDBAEbTa+t2sF66hmtY6CXlsY4dphqwhcCqFR9Z26UW/VKS
         fnhw==
X-Gm-Message-State: AC+VfDw32cHBd1hWUEcUGPOvJLaNi1yCVoh1yXL+o7L/Qaa/fAyRgiTM
        pv8bIB5F71l01zEcRvzulpBYdg==
X-Google-Smtp-Source: ACHHUZ5gzkqt8SW2dNBwPi6OCmq0SOHL+UihiUONfj0SGQPvjb21q3GASr/tqkSrkQAZlbaOuaU72w==
X-Received: by 2002:a17:907:a414:b0:957:2e48:5657 with SMTP id sg20-20020a170907a41400b009572e485657mr6962043ejc.68.1685613555753;
        Thu, 01 Jun 2023 02:59:15 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id y11-20020a1709060a8b00b00965bf86c00asm10475549ejf.143.2023.06.01.02.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 02:59:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Andi Shyti <andi.shyti@kernel.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Keiji Hayashibara <hayashibara.keiji@socionext.com>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] spi: dt-bindings: socionext,uniphier: drop address/size-cells
Date:   Thu,  1 Jun 2023 11:59:08 +0200
Message-Id: <20230601095908.563865-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230601095908.563865-1-krzysztof.kozlowski@linaro.org>
References: <20230601095908.563865-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove address/size-cells because they are already mentioned by common
spi-controller.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/spi/socionext,uniphier-spi.yaml        | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml b/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
index 597fc4e6b01c..c96131ebbea1 100644
--- a/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
@@ -17,9 +17,6 @@ allOf:
   - $ref: spi-controller.yaml#
 
 properties:
-  "#address-cells": true
-  "#size-cells": true
-
   compatible:
     const: socionext,uniphier-scssi
 
-- 
2.34.1

