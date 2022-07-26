Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C85F9581285
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 13:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239011AbiGZL7g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 07:59:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238978AbiGZL7b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 07:59:31 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2FB63340B
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:59:20 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id p11so17460864lfu.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nbbLcikMYE+MXnxTE0IyRsnB8YfOQz4wU6j1hL6TVU8=;
        b=YpYQNziSNDPi/wCGg+oi9mzB1khFmS1f2mCTeoJv0v+/BzUYE7V6QinXkBB2EbTgL2
         +iuqpbaCJbr7n8q126iTIFdfdWCQGPSYMVVS29YYOJ70C/G+y/Y4TOqG+pKs02DXXJdv
         frRe28nip5IbgU1wkNVKaAx3ZU7UyVouxxESfuSjnSKg0OpNEiVOBEUoyb1WioxMY/XD
         vR9/BKAHjQX06WNHLQtBhhokf6sS+VkM3W7IM7+AgnjRJ74ULeDs7cAiMXAXQSmk+0hX
         cqNYcdjQPqp4Dsx3frEJ46+TaXnhug5COomcA2T65UcW73Ioqzf6feEy88o8nnSg/rKZ
         0orA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nbbLcikMYE+MXnxTE0IyRsnB8YfOQz4wU6j1hL6TVU8=;
        b=jusbdV9MiE0tvZ0/XCG721pdQDrToTi0aJH0F7YtuNBvz5CjnKoMNZMmsFqBxneAvC
         6fQY37TJszeCplFP2OtvJCVGvEPY8XRMBXsOov5LNQQtQouotI4UkdtRgPlMIPeyJxLi
         RAJthWFDl5Ky4pGmfeOaPlb7GJhugISSm61Ss041w0w89n/zbph+b/WnizkluwvEvXTp
         WLiIPy5/HeEghz6oVmRLE0py64TLuYBq49FkbYXXyxvPBNrj+lqWIjSWj2ApeIJ91Nal
         YXCKN4NUOaPQ+mSyF2bK7WS+LvQ8kVpQ87cb1KbtmVIvDioWz9RZDXLdDRwcXlLGwRBK
         q8kQ==
X-Gm-Message-State: AJIora82jfwI3bwt5JvxFCxRFaRZC4RnNjIQJxY6Y8shUrvesju2jh8d
        DpuQVg+At3gyKTUjOKbT3MX7iQ==
X-Google-Smtp-Source: AGRyM1v35pQlIFP8uSIuV2zi3VN9h5Rd7ZWXuyHKdh5pu2MYS3VHcv19oFsTnHfEbYATIMcatndESw==
X-Received: by 2002:a05:6512:44b:b0:48a:855e:266a with SMTP id y11-20020a056512044b00b0048a855e266amr4488849lfk.23.1658836760485;
        Tue, 26 Jul 2022 04:59:20 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t4-20020a192d44000000b0048a751c966dsm2697050lft.224.2022.07.26.04.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 04:59:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: qcom,wcd934x: use absolute path to other schema
Date:   Tue, 26 Jul 2022 13:59:17 +0200
Message-Id: <20220726115917.101371-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Absolute path to other DT schema is preferred over relative one.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
index 9b225dbf8b79..8ca19f2b0b3d 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
@@ -127,7 +127,7 @@ properties:
 
   gpio@42:
     type: object
-    $ref: ../gpio/qcom,wcd934x-gpio.yaml#
+    $ref: /schemas/gpio/qcom,wcd934x-gpio.yaml#
 
 patternProperties:
   "^.*@[0-9a-f]+$":
-- 
2.34.1

