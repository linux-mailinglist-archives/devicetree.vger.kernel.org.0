Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09E1965ACA7
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 01:44:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjABAof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 19:44:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjABAob (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 19:44:31 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C506E25C7
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 16:44:29 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id j17so30112544lfr.3
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 16:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXvfGEHTzXKuks+EcxR/n48YaAfRkRku9Lb7SUrYa5g=;
        b=S6hLc5i7wIiPy6BAQ7KYWfNUBsWS/5h/HRMwRZZhNHY+sg/63fO/e/lWq5aNbVM6NY
         c/6AuOHh9mpn1qCKSUuHmIXe2bX+EY9Bf0BszpM4D8b79cZUSEXvMo6Mx5lztCaqLzib
         Z7emOPVRTiaWNEDtPem6yPKTX9O+XrKgazpOzYbwTAcYonTFhweL9k3pE2KwHvzFT7Ah
         ePcNcQbcInP1HdVLwQb/ahpLTi55DOMLKDn+/BqzZpXdg32PTJjf+z5d96sJQf4eM1Iv
         phSRVD2bB1Z7vrt6wvrYIUZwycLRY6O3iCigFfqnZM3kfVFf+jLrJNQKTAUffXG2DPSn
         yhlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXvfGEHTzXKuks+EcxR/n48YaAfRkRku9Lb7SUrYa5g=;
        b=W5NS+GRl4r432nPzUGMGneovGmJVvGadW30WtQqfSbfGhOqWpRIzesPbiDuuMPL3Sl
         uNXiIZhGpRg9Qe1i3/a3rX4vVozn+o7QSHlYAk3ufdMd3WK1k+SZ06fPdt7eiQGQgaGc
         mUFOpdXT7h3JoykdyzgdW8nTOozzj/LiroZoISsrSXI/JUuHBaPlJCBI9w2abICIgoSg
         iV8Y/QOvNnd37qpUlLnAZCe9Tq5Q0VQSkCnVNVB+aoGJcqxMCyB6LJClIOodgq/G4gSh
         Z/SxqoVoOJSZVcYejB16OSzgLJUQyfZ8IU3BWx6OSdP8hUbn9rpokgkZphUxSM8rQI4T
         vvzg==
X-Gm-Message-State: AFqh2koaPFO+SdEhuFo1bljgQ0wBBEWri/rSrjQVxje93GISGhSOJ2pj
        hlYtgz3Gcx8XZ43wNg/LJqtkvQD6Ju+NKj5i
X-Google-Smtp-Source: AMrXdXtELrF2WUuI5CLwBovJGcwvbBLEweqDFrb2dbZtu1axRHuzAErt3EcQtGqX9fkCvCWKRLUr/w==
X-Received: by 2002:a05:6512:ac4:b0:4ca:5013:b0e7 with SMTP id n4-20020a0565120ac400b004ca5013b0e7mr16017930lfu.59.1672620268188;
        Sun, 01 Jan 2023 16:44:28 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f47000000b0049482adb3basm4304788lfz.63.2023.01.01.16.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 16:44:27 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] dt-bindings: arm: fsl: Add the Starterkit SK-iMX53 board
Date:   Mon,  2 Jan 2023 02:44:24 +0200
Message-Id: <20230102004425.887092-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
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

Add an entry for the Starterkit SK-iMX53 development board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 05b5276a0e14..fba7c19d7991 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -173,6 +173,7 @@ properties:
               - kiebackpeter,imx53-ddc        # K+P imx53 DDC
               - kiebackpeter,imx53-hsc        # K+P imx53 HSC
               - menlo,m53menlo                # i.MX53 Menlo board
+              - starterkit,sk-imx53
               - voipac,imx53-dmm-668          # Voipac i.MX53 X53-DMM-668
           - const: fsl,imx53
 
-- 
2.39.0

