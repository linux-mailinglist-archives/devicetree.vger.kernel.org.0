Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC470619C75
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 17:03:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232256AbiKDQDf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 12:03:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232107AbiKDQDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 12:03:33 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 967F2303C8
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 09:03:30 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id BDCAD8523A;
        Fri,  4 Nov 2022 17:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667577808;
        bh=xLYlXk7h+LkLezJ2VuK6I4kDNLPrw8cSeJgG970U+Ps=;
        h=From:To:Cc:Subject:Date:From;
        b=lRP9Nhis4zPZro68wItkVrIfoeqXSl2KQY21mBWCoK6KFweJdROw/R95nYvHsrDQS
         kjrgjQ56HtL8DrXojNjsWlMHqyTLfIJKXq3fkbFl8j28ijDQIdp31Z5y/9zh5Xx70d
         PD9eAyz/fu+u4vt83kPtzfWMkGQ3OHdaNXMdWRNher2xhNtX9lLIvMv6c42N2GqCQw
         Kj5Oftx0jDD+mJI17Wb4wT8YCbZF1A2o1zeBQlM7wxqYxlWffqWxVUsN2uCfZuD7Pu
         GnBB/H1llvdRccmOxlN/2gdp9dObceiOs1uaviIL9cRTpXXLqeDHyFPYhyi79D8Wvc
         H67Bx/DVzxElg==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Takashi Iwai <tiwai@suse.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org
Subject: [PATCH 1/3] ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d compatible strings
Date:   Fri,  4 Nov 2022 17:03:13 +0100
Message-Id: <20221104160315.213836-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe existing used combinations of compatible strings on MX6UL
and MX7D, which are backward compatible with MX6SX. Add the missing
imx7d-sai compatible string which is used on i.MX7 .

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Nicolin Chen <nicoleotsuka@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Xiubo Li <Xiubo.Lee@gmail.com>
Cc: alsa-devel@alsa-project.org
To: devicetree@vger.kernel.org
---
 .../devicetree/bindings/sound/fsl,sai.yaml    | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
index 11aab891288d2..05bad828cc353 100644
--- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
@@ -18,15 +18,12 @@ description: |
 properties:
   compatible:
     oneOf:
-      - enum:
-          - fsl,vf610-sai
-          - fsl,imx6sx-sai
-          - fsl,imx6ul-sai
-          - fsl,imx7ulp-sai
-          - fsl,imx8mq-sai
-          - fsl,imx8qm-sai
-          - fsl,imx8ulp-sai
-          - fsl,imx93-sai
+      - items:
+          - enum:
+              - fsl,imx6ul-sai
+              - fsl,imx7d-sai
+          - const: fsl,imx6sx-sai
+
       - items:
           - enum:
               - fsl,imx8mm-sai
@@ -34,6 +31,15 @@ properties:
               - fsl,imx8mp-sai
           - const: fsl,imx8mq-sai
 
+      - items:
+          - enum:
+              - fsl,imx6sx-sai
+              - fsl,imx7ulp-sai
+              - fsl,imx8mq-sai
+              - fsl,imx8qm-sai
+              - fsl,imx8ulp-sai
+              - fsl,vf610-sai
+
   reg:
     maxItems: 1
 
-- 
2.35.1

