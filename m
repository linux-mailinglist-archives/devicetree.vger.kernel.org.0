Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 257AA5E9516
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 19:52:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232748AbiIYRwY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 13:52:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232504AbiIYRwV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 13:52:21 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC251F61D
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 10:52:19 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id z2so6318135edi.1
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 10:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=J2VF+CVrD0zwhwpgo2IClFZHFW9id6lzY2L2M6stUmY=;
        b=IsEpv7BgRFwftZUui15I0mMWTntFwLZkJSM+RARbYH7mZGdi13p/E+p1fU9pkBBHth
         XL+J79BxWf4L1jEQVEVSHJo8tvUxQ/vvQ/D6wlOF15Y8UGfOr89A9F0exomuZEr++WJB
         8F7nNNpVBvnIvRRvAM8o1pnahIOIohEu5tgXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=J2VF+CVrD0zwhwpgo2IClFZHFW9id6lzY2L2M6stUmY=;
        b=YSgD3NhfSpBf7wNhWy4n/Barq3a/pdG3et+kOvwuaR7bpV/Ke9asxh7FaZiZ8v4Vqq
         D5pCoGQ1v4uxsCN040PN/DXal9WAf+t/5yOqiAoIZsETVftPY8Nz2BJLQeYD0gq5dbjT
         ZSrd7x+exU4wvuCrUvwMuACwaFVKJwQCdGDIjmyjnWe9I7zd+0iC6qpNeGUsUc19BMs2
         d968G0vPo4UvqEUIlywuPa/JagFpsHyOE/dhz7LqOVmyZE2dZO4PzagBQabkjH7Kf/kd
         C/Cn3XHHUpJkUlRDAG+ebKMnXz6EoPyR9RHIeEz4Vlr/Jj2pamXRI0VmFw+0BegBWf9t
         mDdA==
X-Gm-Message-State: ACrzQf0sWI6ANv2bjhOb0NMvNptKsKX9pFe7aOfZp0/4K5V/JqamvCa8
        FxWZ2ErOi7FvH31RM5+1y9WnQQ==
X-Google-Smtp-Source: AMsMyM5s6+LACyNZPTjH1y8ENlpRtfJB3mfaurWNLgjZLo8JJvwWdIRNeyv5qlC9mGhl6V9pwajALg==
X-Received: by 2002:aa7:d5cc:0:b0:456:f5f1:540 with SMTP id d12-20020aa7d5cc000000b00456f5f10540mr8364812eds.95.1664128337888;
        Sun, 25 Sep 2022 10:52:17 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-232-92-192.retail.telecomitalia.it. [95.232.92.192])
        by smtp.gmail.com with ESMTPSA id f23-20020a056402161700b0045703d699b9sm3252594edv.78.2022.09.25.10.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 10:52:17 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RFC PATCH v4 1/5] dt-bindings: arm: stm32: add compatible for syscon gcan node
Date:   Sun, 25 Sep 2022 19:52:05 +0200
Message-Id: <20220925175209.1528960-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220925175209.1528960-1-dario.binacchi@amarulasolutions.com>
References: <20220925175209.1528960-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit ad440432d1f9 ("dt-bindings: mfd: Ensure 'syscon' has a
more specific compatible")
It is required to provide at least 2 compatibles string for syscon node.
This patch documents the new compatible for stm32f4 SoC to support
global/shared CAN registers access for bxCAN controllers.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 .../devicetree/bindings/arm/stm32/st,stm32-syscon.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
index 6f846d69c5e1..8646350dac44 100644
--- a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
@@ -20,6 +20,7 @@ properties:
               - st,stm32-syscfg
               - st,stm32-power-config
               - st,stm32-tamp
+              - st,stm32f4-gcan
           - const: syscon
       - items:
           - const: st,stm32-tamp
@@ -42,6 +43,7 @@ if:
       contains:
         enum:
           - st,stm32mp157-syscfg
+          - st,stm32f4-gcan
 then:
   required:
     - clocks
-- 
2.32.0

