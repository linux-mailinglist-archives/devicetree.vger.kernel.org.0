Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 854FD661685
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 17:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233340AbjAHQ0F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 11:26:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233244AbjAHQ0D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 11:26:03 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9C81E1
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 08:26:01 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id x10so6308598edd.10
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 08:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pWlIQBe6KHU2MRGPH98wyw9zelNx3otUU9JeorE0clc=;
        b=fpoXzbnR5B8C60yFJ+Pt+wZEW8FPbU0I9RmwjuH+RZH73dwiLdPHfBPhkcTnwGj5PN
         ps+jMpQ09i9nIMa3jozLRTN33I56ula1MShJdY8K+2ioq+MS0ziQuEjt05gHPVNKivsi
         T0c22foSNhWSf+M22wmxFhASUJH/Ux+EDP1K4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pWlIQBe6KHU2MRGPH98wyw9zelNx3otUU9JeorE0clc=;
        b=4Dsf4ykP5gnEqNO5e32OmgSxxHwTAD42z035LD3WFAmcMow1qNAsWQtnX629dLld1m
         6Vi4s3sXUtbanNVpHwLK1xivOsv+XRW/Bfqz75CFLg9ozeSJ84kjiFdqxaA6wgLj577C
         RtvDzyFzJNnsjFOgy2WhpDqj7+tIb4k9VahQve9iTrBzRuAma+h+H9+TiuAiIWF5P7QS
         FS0rE4vB4Uf4BgDbXC6LlOwoLZHw1RFfYiCHtl2TxhnAsLtLHLwx9Vbon3ZmdqhLZwkx
         7lF3EJBw0hb2cgXUEUWC+0buVDRA2RYFU4am33x7+o0ww8PNgixoS/GDEFFsz7jbHx5e
         2hRg==
X-Gm-Message-State: AFqh2koxjw+cCIIlG+KZ57mmowpukzZbcRXabA/ra3rHX3QBcnC7Ao9b
        KamcBOMyNUETo78batPt88SMVg==
X-Google-Smtp-Source: AMrXdXuHd94B7Bd8lJcWkeEJjjpomBCQONEVdcmyeFpXNtA3MYEpHllzKPYu4VdgP66YRnlJK/h22A==
X-Received: by 2002:a05:6402:25c6:b0:478:5688:7c9f with SMTP id x6-20020a05640225c600b0047856887c9fmr64197086edb.29.1673195160525;
        Sun, 08 Jan 2023 08:26:00 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-80-180-23-57.pool80180.interbusiness.it. [80.180.23.57])
        by smtp.gmail.com with ESMTPSA id n3-20020aa7c443000000b00486074b4ce4sm2659614edr.68.2023.01.08.08.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 08:26:00 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND RFC PATCH v5 1/5] dt-bindings: arm: stm32: add compatible for syscon gcan node
Date:   Sun,  8 Jan 2023 17:25:50 +0100
Message-Id: <20230108162554.8375-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230108162554.8375-1-dario.binacchi@amarulasolutions.com>
References: <20230108162554.8375-1-dario.binacchi@amarulasolutions.com>
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
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v5:
- Add Rob Herring's Acked-by tag.

 .../devicetree/bindings/arm/stm32/st,stm32-syscon.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
index b2b156cc160a..ad8e51aa01b0 100644
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

