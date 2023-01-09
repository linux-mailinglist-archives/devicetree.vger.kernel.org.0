Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE28E662EF7
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 19:27:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237594AbjAIS05 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 13:26:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237416AbjAIS0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 13:26:30 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 180A568C8C
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 10:24:04 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id cf18so16000115ejb.5
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 10:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuawNslRJtsC33cN3DASsrMzq8m1GQBJdWGYFmYOzJw=;
        b=EvX5z8BtDHA/tpP4TdClX6p9QyU7vTeuCoFpfbsvBch8crM2wOTQdD0N+LWid1Y4Hi
         sdb17cI8noDMjRV3oaXGCHXRn9C5PAasKWX+ddcgZavXrzVlC9Z/8IJ7/jTmgNWbZzQx
         nHu2+lTunBFMOSMcN4lJwnotIT/JIEIK7qJd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WuawNslRJtsC33cN3DASsrMzq8m1GQBJdWGYFmYOzJw=;
        b=LXBMl1EpE/URjp5UylNpp08yJCMN1AsGxISyR34akMTMoubZ1V+nswGJ3zgbV66Rt4
         gWPQEWzCuMzWls7fqdPR7l1xu5FI9dW+2RA51sUSw2Ryg9+w4e4MYh7InkXSI7+v6DyX
         /aj6ovm33K29xjYbwCtz3GVKUhZWnK19aMnLs/hESp92ZRCfkldBJE527a6AiQUBXmeI
         tyGVQDWevFcXMRGvP/l7XvgVyYOqu0Lx3uRza9ciASt7LohUs80fnPW5W71vG8cZ0/7G
         vMRYy7VfzFDGlaocJZdoPVPm2x3ieu08eOB+hhnBOJWMKKamocsiwhocucRnF/fYvagK
         nJZQ==
X-Gm-Message-State: AFqh2komnDHQBEWW3lYvYWOByih4H2tT3R9rE7DVRU59rsivOial6ah4
        iW220KG7/E0WccVDVRffSoBtYA==
X-Google-Smtp-Source: AMrXdXu9XapodJ1buz2gI4WFDCokc5RQLSW2MgnTRMY3L/mjPS/hd0a93SqhLVB/LYFYpnZDilgwZA==
X-Received: by 2002:a17:906:9d04:b0:84d:3822:2fc7 with SMTP id fn4-20020a1709069d0400b0084d38222fc7mr6672405ejc.77.1673288642599;
        Mon, 09 Jan 2023 10:24:02 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.pdxnet.pdxeng.ch (host-80-180-23-57.retail.telecomitalia.it. [80.180.23.57])
        by smtp.gmail.com with ESMTPSA id kz22-20020a17090777d600b007c1633cea13sm4093653ejc.12.2023.01.09.10.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 10:24:02 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        michael@amarulasolutions.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Matti Vaittinen <mazziesaccount@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 1/5] dt-bindings: arm: stm32: add compatible for syscon gcan node
Date:   Mon,  9 Jan 2023 19:23:51 +0100
Message-Id: <20230109182356.141849-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230109182356.141849-1-dario.binacchi@amarulasolutions.com>
References: <20230109182356.141849-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v5)

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

