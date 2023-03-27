Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9526CA5A4
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 15:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232625AbjC0NYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 09:24:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232628AbjC0NXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 09:23:38 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CEC159D8
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 06:23:21 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id w9so36218515edc.3
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 06:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679923400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3h2EW4IkC/IhJho4gz7j5uQBbsCW60DmV4AKGgO8D1Y=;
        b=tWrKDhnZ6AGETvmeHspz3EI2jNfpXQCcKz6vH7eFhOXGDhPAYJ1Ph39gX1PYLGiAaK
         ZCY9dcC5NlA1YaM3wcUP6PDbzj3MdHXo0l0jk3oQ4qKk4SbDLREYPdwGNC13x1j9xKQr
         uWJpKsT25yZNLP95Zv6vU/9kCWKXC6jF+fRtww+yDvO+DF2qeyOhTzADxTO+/zH4TZXQ
         ZaF8lhZxJXuHr+nEPb4BLTZCzXCY8WnzSySgwN4V1hVRW7w0Dyu/LcGBfn/iiltTD5Xk
         +F1WZfT1krNOlarDbwsSHAT1yuDUHZ2Oald4vmswgI3nNmAthkpZTCgEPHOi6KRhr+/T
         of/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679923400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3h2EW4IkC/IhJho4gz7j5uQBbsCW60DmV4AKGgO8D1Y=;
        b=qBeK/mopMO67Tpx3FMCy/IRPQBUgkLIuLPu4qTHTMvP/u3t55v0h0CgOBgOZ8RXI1n
         voX9/otIHo+9ssOHHXMa8lKnpX3T3QWCt1gMLUwzQKZYeJ25/EGEe8A4S7uBG1XH1/IJ
         FwL0XLffSjN89R/BW2SMydW5kjjDTmGH1hIyYz4dnFpErfykxonMVoMvM3xs7pufryKI
         dhZFIiTPqggLCcE40bvSKNMlKjcsRSGmvbvERxqn26gC/YuguGECTzsU+x16ZZ3atGFk
         dDB72UGEeKhFWdccq90uMgTmFq+ICS+P/u9KdzxzkFBklNCF/I/abx4qkx2IgcibEY5k
         ZlUw==
X-Gm-Message-State: AAQBX9fwc8XSbW0MPQ2heZxL03ehO9kBpO40GxQ3m52vAKAft2Q/UMnc
        UsMgImrc/NiFZciiuUGsNCJ4Hg==
X-Google-Smtp-Source: AKy350ZJqDj58+VXAULylaQnvX/jFbNdWA6zLvHxp5BuYYqU7OhYiBa0XnryAcFW+5/p8jwi2hqTVA==
X-Received: by 2002:a17:907:d22:b0:932:5b67:6dee with SMTP id gn34-20020a1709070d2200b009325b676deemr13660233ejc.27.1679923399821;
        Mon, 27 Mar 2023 06:23:19 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:581e:789c:7616:5ee])
        by smtp.gmail.com with ESMTPSA id gy24-20020a170906f25800b00930445428acsm14286814ejb.14.2023.03.27.06.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 06:23:19 -0700 (PDT)
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
Cc:     Patrick Lai <quic_plai@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 09/10] ASoC: dt-bindings: qcom,lpass-wsa-macro: Add SM8550 WSA macro
Date:   Mon, 27 Mar 2023 15:22:53 +0200
Message-Id: <20230327132254.147975-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230327132254.147975-1-krzysztof.kozlowski@linaro.org>
References: <20230327132254.147975-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the WSA macro codec on Qualcomm SM8550, which comes without NPL clock
exposed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/qcom,lpass-wsa-macro.yaml  | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index 66cbb1f5e31a..eea7609d1b33 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -15,6 +15,7 @@ properties:
       - qcom,sc7280-lpass-wsa-macro
       - qcom,sm8250-lpass-wsa-macro
       - qcom,sm8450-lpass-wsa-macro
+      - qcom,sm8550-lpass-wsa-macro
       - qcom,sc8280xp-lpass-wsa-macro
 
   reg:
@@ -27,11 +28,11 @@ properties:
     const: 0
 
   clocks:
-    minItems: 5
+    minItems: 4
     maxItems: 6
 
   clock-names:
-    minItems: 5
+    minItems: 4
     maxItems: 6
 
   clock-output-names:
@@ -62,6 +63,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 5
           maxItems: 5
         clock-names:
           items:
@@ -89,6 +91,23 @@ allOf:
             - const: va
             - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8550-lpass-wsa-macro
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

