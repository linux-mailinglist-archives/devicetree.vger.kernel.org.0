Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 044D862718E
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 19:13:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235472AbiKMSNi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 13:13:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235473AbiKMSNg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 13:13:36 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93A872DCE
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 10:13:33 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id ft34so23305441ejc.12
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 10:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wd7qt9Y69GxtzzaG+0eDdZVNxTR8osN5UREXRUPZGYY=;
        b=r4iRi3u3f673NIkdZ3T0jiFFltpdfE82+xUBTwgsXeRfYRzz5dKJLaHp/2urJCzPW1
         k4KBqywiSJFEzrXn3j3cvHI/fDcXloQk2SvCmNcGPM0Ccb15eq8kA3HuHdsUzdyUtEtB
         /phHo37+5AHff6OgCqKs86m06FwqfzZPH94jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wd7qt9Y69GxtzzaG+0eDdZVNxTR8osN5UREXRUPZGYY=;
        b=ZY+xHH7A+kdosa/x2NvYGoca+nkHCu+ICuK0E2PaMU/WGXpVhEtPNUMOXcccNTvjp6
         ++eGoxLz2i8FSrcFLV+nrX8e5jmazexVzUBbZZakYHkIgNE4o5KLaGQMJ4blcTSvP2Wf
         yIVcBZ5HGQVQocCQuzkp36WGTkmrlTbHHPzjEChyeN2FdwxT1JCziC1VgKLKhM8EzHWf
         QjdlJmLQc8TkYUZfxWS+REMQ8PMgssboVJpIqCQ5RgLLMrWlHZRw68te5O72EkaOem18
         ybbohJdcbFjh+R/QNDrQRP8/peNOp4YGcYZfR7XhE3WFtmpWIa+0z/xlsxh+NI13/HVJ
         tdWA==
X-Gm-Message-State: ANoB5pk0+z0dZ/IeaG56h4LN8BTWs0sQyPtGDeDZjvqGqzS3p8myuEXI
        7y8kM8LRQ5KvQ2VAVLtJRaKDSw==
X-Google-Smtp-Source: AA0mqf5ypUuQCkeRTRnTtRxOKEv2lhLWcI1Iy947SsUT60EQ/RiXX+gSReXE0XtvWGZwWA7W+YvnLg==
X-Received: by 2002:a17:906:6843:b0:7ae:65e4:7204 with SMTP id a3-20020a170906684300b007ae65e47204mr7780374ejs.579.1668363212177;
        Sun, 13 Nov 2022 10:13:32 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-40-103-33.business.telecomitalia.it. [79.40.103.33])
        by smtp.gmail.com with ESMTPSA id iy6-20020a170907818600b0078de26f66b9sm3225487ejc.114.2022.11.13.10.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 10:13:31 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Rob Herring <robh@kernel.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        michael@amarulasolutions.com,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND RFC PATCH v5 1/5] dt-bindings: arm: stm32: add compatible for syscon gcan node
Date:   Sun, 13 Nov 2022 19:13:18 +0100
Message-Id: <20221113181322.1627084-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221113181322.1627084-1-dario.binacchi@amarulasolutions.com>
References: <20221113181322.1627084-1-dario.binacchi@amarulasolutions.com>
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

