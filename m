Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 282825B185F
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 11:21:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231816AbiIHJUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 05:20:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbiIHJUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 05:20:22 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F483DBD3
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 02:20:07 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id m15so7014126lfl.9
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 02:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=IE9iYaf4ljXjTzH90yeiguLHiQ95amY6yCG9ecN7egM=;
        b=zhPVsuG2l3xnWS3yDCpDzylO8CO7FHZKJ3Zd07Uynvqf/7lz8HLM0vuxl7BINDfmXL
         /5FiRSJ/BgW1WlAfEuMZlzpscb+me2WIsTmlCRgFytsqhtKhdj9sOWnDme1XfKJLsZ9G
         8oW36CmqJdg47VWJGwAszWQIrVkSMHUmLAdn3AFw/kZgRWpoOS7mstMGT+xBOwdtfGON
         +wSZz+qIhMDD8HAO2ImE5FfUbkrX5hpvU6h8bHYWcxe6Lz7vSKo8ZUUf21XZvHYE+s0z
         0BgwxYt47ZbhpLA/ui8gQd+QyTKtc/3PFbnN7o0pgQnQN6s9EErQjIt3jtzQxeMiyF8X
         A8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=IE9iYaf4ljXjTzH90yeiguLHiQ95amY6yCG9ecN7egM=;
        b=xc1nrYvc869fyZnytgT84U0xoFhApKvVJnCmJr2J/eWqUe83hjYtoJ/t5UALX93x8F
         C7hj9D6EjJ3VA5s4iasmCt/gyGeA/gc9Pn+qHDKF7ye5x+tlqlE9sb7QmbVwoRoJId6s
         VXBQc4IC++Jikik0BRqN72g5FNoViuJ0flrybsyzLi5xoXsdl8h6QXx/YxkA7CtGcmQW
         oPLkkAU/hdimH7wPnyFnCxN2Qf7SYaCivgEI/FdRJ4AkDNJWz3HaJPZjve0pgpwH9CUx
         woNVolb97k4dbXbaaQzETOjjeVSsnHmsWZHnELqFsr2B8/lULKgqmbaUdmWNcTX6FAnC
         pjMQ==
X-Gm-Message-State: ACgBeo3EtBKfDEaNviBE/9A24vUWV0yY8ba5EEnOkj0enmW7E67zYCro
        MQIhKnk/KqZ0wc1/S+8zF7/uYQ==
X-Google-Smtp-Source: AA6agR5lOjJt6vP+XfpUeEi0d0i62RnR1ZVSDdEFDVUHchyMZxKh3epAz79gCniN/mJbV1a1VKqujw==
X-Received: by 2002:a05:6512:3a95:b0:498:f272:6587 with SMTP id q21-20020a0565123a9500b00498f2726587mr188386lfu.148.1662628807024;
        Thu, 08 Sep 2022 02:20:07 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q17-20020a056512211100b004946a758d21sm218219lfr.161.2022.09.08.02.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 02:20:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 13/14] ASoC: dt-bindings: qcom,q6apm-dai: adjust indentation in example
Date:   Thu,  8 Sep 2022 11:19:45 +0200
Message-Id: <20220908091946.44800-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220908091946.44800-1-krzysztof.kozlowski@linaro.org>
References: <20220908091946.44800-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup the example DTS by fixing indentation to 4-spaces and adding
blank lines for readability.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 .../devicetree/bindings/sound/qcom,q6apm-dai.yaml   | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
index 844d72b30969..24f7bf2bfd95 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
@@ -33,13 +33,14 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
         qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+
         service@1 {
-          compatible = "qcom,q6apm";
-          reg = <1>;
+            compatible = "qcom,q6apm";
+            reg = <1>;
 
-          dais {
-            compatible = "qcom,q6apm-dais";
-            iommus = <&apps_smmu 0x1801 0x0>;
-          };
+            dais {
+                compatible = "qcom,q6apm-dais";
+                iommus = <&apps_smmu 0x1801 0x0>;
+            };
         };
     };
-- 
2.34.1

