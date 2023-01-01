Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDB1D65AB03
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 19:47:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbjAASrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 13:47:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbjAASq7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 13:46:59 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 433B12182
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 10:46:54 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id e13so24687966ljn.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 10:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RSdRly3nEcHVc69X2VIAsnnZ6rqkRCHSHZZ77oOomzY=;
        b=mwFiXZKsx1IKIvL3oQqa/FEWaxVaiKprRT989d9j3gt3wcIH42k7eawyBy9K6KEai7
         1AXIcEjVNlGrfO8eagNfBLeW7l23jybvpOnvqdtK6MbNPXYwRJeq2vywThNX9WHUjHyA
         k+4BL9b92+hmDPatIBVt7blcyges1wu4e1o4gpZXWf3OvZkR9HlHocw9eVXdedQ28dUa
         /kMmPQIJc+cDt5gqzoME29YWod5cDjxm/W9Cux1zWo69DO+ohKGYrKD0uAeRDDaSufQJ
         FWGNNku3qBcxrYCEuF2vAbu9XpKDYBM3waIPoWqzeUPkFcT6Kw+ld41moAHYvKSb9PyG
         5/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RSdRly3nEcHVc69X2VIAsnnZ6rqkRCHSHZZ77oOomzY=;
        b=uqZxZWH5Fd6l/ZhTxbfhDlyaO7X+vU4T64WYAAjevEYJE928KfmbMBS2npXf1+iFNb
         VaKEFP3k1JuotNKtGD8sGpqPSqbF1SHUPsXNRnq5sxtzUMwYBcLDCnZVfzK6vexgugg5
         YkM4lBPu6G8UOeTIn9JQXiO+omCRIsMztFu6kir3roQ58gHBbXa8raGJYhPX589C7RNk
         eOzDHV9vWI/p3F5E2uysKwos1wg0UKqcjJOxkFSL3wD6/eOzVqejIbxMK49f6VyFtt9l
         jU5ZhqyswWUQRfKbQLr+zbii4borWZshrJREDQS+hLd3vGGdKI3Z630vCFUlQaR/OtYj
         qRuw==
X-Gm-Message-State: AFqh2krUcgNYUswVoDViI0tXG1TR9UM20QNZna9PPAw3XAJJHVf3WkrU
        n9vYDQjjYEqGiQ92q6s451JSMmGY4HPwgxdb
X-Google-Smtp-Source: AMrXdXtkF/j2+M+oBT5h5JtR69bFlo/CdIJ3GYmko9OW6NIY6+iEOboZIOw/0xt+GO0BNmOJC4hMWw==
X-Received: by 2002:a2e:83d0:0:b0:27f:d8c9:3f2a with SMTP id s16-20020a2e83d0000000b0027fd8c93f2amr3458863ljh.39.1672598812663;
        Sun, 01 Jan 2023 10:46:52 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bd9-20020a05651c168900b0027fdb26e4b1sm955760ljb.91.2023.01.01.10.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 10:46:51 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Startkit
Date:   Sun,  1 Jan 2023 20:46:49 +0200
Message-Id: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_DBL_SPAM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Starterkit is small vendor of development boards and SoM based on Atmel,
i.MX and Allwinner SoCs.

http://starterkit.ru/html/index.php

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 70ffb3780621..0597425db323 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1246,6 +1246,8 @@ patternProperties:
     description: Starry Electronic Technology (ShenZhen) Co., LTD
   "^startek,.*":
     description: Startek
+  "^starterkit,.*"
+    description: Starterkit
   "^ste,.*":
     description: ST-Ericsson
     deprecated: true
-- 
2.39.0

