Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE6436922D6
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 17:00:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232829AbjBJQAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 11:00:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232341AbjBJQAC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 11:00:02 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C1FB795F7
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:59:43 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id bk16so5494187wrb.11
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IaOMp85DQqFK9FmSZWOrsKFZKbvOVr0dD/xHxXmrHrs=;
        b=SjWmfQX6sZAmi8yrO5woKGzlHGfyeLaYU3uU2pZHqLtDuRvR3qS7Wf1AYTIBjfJzxc
         xIPmwvUP8sNa6dtwEEa1qSe0JN4qkcni/qlbZbQlqgBxdiAYwpQwy4j2RNd8Gk0eg8uO
         1FatZPD5mDyI3Emx2qODlEWv3KKO5b4IdaowAi0n9KM+Bry0UjbG+rU6iWVMq9SZ/4A4
         dwelWtCi7HOGAeVfpmF/aPR/86oXn2Up0jTONEvvmToLOEJmaeyTYi1n4/ZjKkS0OWST
         ACTAHP4UuPoMLmJIdthdxHTPkSCRwS/eruTB2xAAJXZfYlduBox4X8Xo1RclC6S68n15
         PMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IaOMp85DQqFK9FmSZWOrsKFZKbvOVr0dD/xHxXmrHrs=;
        b=J8RVJVfz09nDPUBBJ/m+wxFGbFW4wJUHDzYSqi+YV07oBb2kH05eeco8PQuqulVHxP
         rll6bXML6X+c5ykRGeu5XU4kxGW1GSHEnFOBPcmHKxGInCnxdltbOYhJtrVOenp0Y4ie
         Eu9HxCNq1u3lWPN9RXBxYZwUTCQNqL9829npqwge34PpF1Vq1BDvXkwfvfxUwcxKCb57
         J15ZUWKOh38/qmy+F0V11Pq4QMZ+2lh3TRdd3Y8G7pqgeyWS0rL1GReVSiRD+uR28ZW3
         QtXXYGFTaqxA8Cx7xhdYQV0IhMvbUURN2wDJYQqoJ/J1WW6y1sB/s2eqfyRI3i7iABMK
         fhSQ==
X-Gm-Message-State: AO0yUKVMTjceHOmZyzlr2XM+SOw6YJQyQy3SyXCP0XRnVXzfTVoqVkbV
        R2cuEozuSDi5fpZWopNaBkggNg==
X-Google-Smtp-Source: AK7set9/QCxdu8rngGkirm66tKQ8nUUlKQtouI7koQ5af8wv216xyvib2YyyphADqC/g5f0L14zomQ==
X-Received: by 2002:a5d:4287:0:b0:2c5:4784:6f0c with SMTP id k7-20020a5d4287000000b002c547846f0cmr3551624wrq.15.1676044773888;
        Fri, 10 Feb 2023 07:59:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y15-20020adfee0f000000b002c3efca57e1sm4078604wrn.110.2023.02.10.07.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 07:59:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] regulator: dt-bindings: qcom,rpmh: Correct PM8550 family supplies
Date:   Fri, 10 Feb 2023 16:59:30 +0100
Message-Id: <20230210155930.549082-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PM8550 is different than PM8550VE/VS, because the latter has much
smaller amount of supplies (l1-3 and s1-6) and regulators.  The PM8550
has on theh other hand one pin for vdd-l1-l4-l10 supplies.  Correct the
if:then: clause with their supplies.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/regulator/qcom,rpmh-regulator.yaml  | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 297a75069f60..fb9621b4b4cd 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -308,19 +308,29 @@ allOf:
         compatible:
           enum:
             - qcom,pm8550-rpmh-regulators
-            - qcom,pm8550ve-rpmh-regulators
-            - qcom,pm8550vs-rpmh-regulators
     then:
       properties:
+        vdd-l1-l4-l10-supply: true
         vdd-l2-l13-l14-supply: true
         vdd-l5-l16-supply: true
         vdd-l6-l7-supply: true
         vdd-l8-l9-supply: true
       patternProperties:
-        "^vdd-l([1-4]|1[0-7])-supply$": true
+        "^vdd-l(3|1[1-7])-supply$": true
         "^vdd-s[1-6]-supply$": true
         "^vdd-bob[1-2]-supply$": true
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pm8550ve-rpmh-regulators
+            - qcom,pm8550vs-rpmh-regulators
+    then:
+      patternProperties:
+        "^vdd-l[1-3]-supply$": true
+        "^vdd-s[1-6]-supply$": true
+
   - if:
       properties:
         compatible:
-- 
2.34.1

