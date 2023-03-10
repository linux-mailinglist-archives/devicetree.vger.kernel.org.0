Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CEF36B4039
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 14:22:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjCJNWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 08:22:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230124AbjCJNWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 08:22:30 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C51D5FD296
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 05:22:07 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id x3so20273874edb.10
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 05:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678454526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcXL6MCdOOilzj/9V8Bxhr6PgZvPsGUvEZbtUrf8CA0=;
        b=QWRaO46r5Vlo+LFpfEj41+oWL74m9vY9Ye1RziJsp7mkHfJg357wAQjE6BSqZxl1OP
         WBeQSKR+I0Vz4KemBZidBqo0sdYi30BB7QngnRQtPNPX9izS42xhL4QrpBlEpSMyS1La
         aCMC7sHmtJ9rov8CDTNGUPFBvGl0guj6xQ64aQOx50BOrKAOoADxn6xhQY0nsw40jBnO
         7/yQ5OD8flLzXTkCHyfpRE4L200L6IxelwR7ynIAw5dVdpqoomUVZbyUMDvUKwVFskTc
         UdMTONwoarGEBF554WPMXmeWNd5fnI/gHGkGRiBPJGilCR9hYZj4bgMgX9KTmc2fBJGZ
         gm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678454526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AcXL6MCdOOilzj/9V8Bxhr6PgZvPsGUvEZbtUrf8CA0=;
        b=KlfMKlP2YSpMNjB2kxU+xd9vGz5QIsVdoNr2OxpXXaJYa0bTvt1CaaLv5UoluHgXsv
         2D0svYsHvpiNu34KBWrsHNYqN4TP3OWkKUeI0ABuc0QNaMT6cyVeHhOa+Vd06p/a9Vkq
         4jHwYGEaVawaMcrslcJPDzpLcVlKWl+KPYg3OaCYSL/YIJOzdc5erx5vMxo3SYySE9yE
         solkAih4HKau7KAXpNGfd1F8GCwIH5GrYMUYrRm7k4IYXRv0RQ22e/DDwr4bmn72l4tH
         /CRCpvNQyFNRwRSnes6dEV26U6ALewXq6V/Res3rqBuK7VH2+Jj6yw/8SQ26Uw3j5Ose
         h5iA==
X-Gm-Message-State: AO0yUKV5/zIYgDiyLgQhTwA7CyMM0jEqLHqk80VxkfjalNUcilPf2MS5
        VjcmGPRZvVcatstVGf9pjBB/rQ==
X-Google-Smtp-Source: AK7set86DEihjYozkYNfs2JVNMeu/cjpWbEQPkrPICoAQV9Zd2V3aoH5znXQFvekHR3LgD1deH2NWA==
X-Received: by 2002:a17:906:32d9:b0:8aa:bf4e:7b2c with SMTP id k25-20020a17090632d900b008aabf4e7b2cmr26777378ejk.21.1678454526446;
        Fri, 10 Mar 2023 05:22:06 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:45c4:46be:ec71:4a51])
        by smtp.gmail.com with ESMTPSA id zc4-20020a170906988400b008b17879ec95sm959124ejb.22.2023.03.10.05.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 05:22:06 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/9] ASoC: dt-bindings: qcom,lpass-rx-macro: Add SM8550 RX macro
Date:   Fri, 10 Mar 2023 14:21:54 +0100
Message-Id: <20230310132201.322148-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310132201.322148-1-krzysztof.kozlowski@linaro.org>
References: <20230310132201.322148-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the RX macro codec on Qualcomm SM8550, which comes without NPL clock
exposed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-rx-macro.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index 8b3d617a9578..0ae3c81abdf8 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -15,6 +15,7 @@ properties:
       - qcom,sc7280-lpass-rx-macro
       - qcom,sm8250-lpass-rx-macro
       - qcom,sm8450-lpass-rx-macro
+      - qcom,sm8550-lpass-rx-macro
       - qcom,sc8280xp-lpass-rx-macro
 
   reg:
@@ -92,6 +93,23 @@ allOf:
             - const: dcodec
             - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8550-lpass-rx-macro
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
+            - const: fsgen
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1

