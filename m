Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C6F573B639
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 13:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbjFWLa1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 07:30:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbjFWLaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 07:30:19 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F6542685
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 04:30:18 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-987accb4349so64887066b.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 04:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687519816; x=1690111816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IdYoL4tmbwTZuD91LiWi1VOBXorpaCxfk3Oa1MlS4bs=;
        b=TaBkYtOl9AULVW7HulYaVbmyn3vNVRpEgBUa2gW1YfqqeECQiI5ZqeS/Ar/cydqNUX
         KuKIGbw5qriXMG0GvUiP5W602KYeZ/jrPokIhClce5O6W8dSFaQeEV0aFMbryylqYfnW
         iL++jcIkR7E1NMwmNs2+opGYZmmkA5sS84Q+pzU0O/P/QfKI5y9mD9T805NbH70934M5
         fiPWlDTNvhsiFWJjqbK96ZWDmz2Q2WFF4ovUkQKU3wrC0fm3TWoKoaVTP5/T29xpQXnH
         o1ydIANZR+PSJUQxqB4Or4HhyR1hRjBqkL9WpGQnwBb4lVN2welM/KYTIlVIsv37MOa9
         LFaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687519816; x=1690111816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IdYoL4tmbwTZuD91LiWi1VOBXorpaCxfk3Oa1MlS4bs=;
        b=dTwkbL+EyIinLL+7Pscpbs/k/D78aZD9/zvxxq63+wmjga2wSziAZmMglr7fWnS7pv
         stBThaLKYv1ro+Ecj5H4tQBrwWI1rAXrQFJ5BdLsUcs4rmVRZ5u0/ZeaxCc6/1at0+Mv
         Txs+K7PoRk2UhrSXAVXyyY6UAGNz/aK8pn6V+SuOfoIKG+oGcnKu3Cqqk4Ir3nEI/VdP
         EWoxhrEUWh0p7E7Q/oJa5vTid7E3ecqkZ7wVyV6VNosArXFp1a/SZ18V9kTst3jxo+Xt
         AET47x7Mtb3TJWgkDKsKMVhv/uoMBy+f1XKecsjOcyb0oYBMDXSwfOTQvCw1xeHmjtzO
         aVfg==
X-Gm-Message-State: AC+VfDw8tMsoYnIPy81tJ2Ypn5Qx+K25dtSYQJw2CjyIfjRs9O0peFkw
        Mhf+5eGqrk0SV5B+poX8f4AzFQ==
X-Google-Smtp-Source: ACHHUZ5scCkLTmJhlnUviPE6BCxa3dLa9bOAE+xQtpQ5suJmyEok4UJ6tW3/cTMFeCQKFp9fCqDpRw==
X-Received: by 2002:a17:907:25cc:b0:989:450:e567 with SMTP id ae12-20020a17090725cc00b009890450e567mr10065506ejc.65.1687519816758;
        Fri, 23 Jun 2023 04:30:16 -0700 (PDT)
Received: from hackbox.lan ([62.231.110.100])
        by smtp.gmail.com with ESMTPSA id z17-20020a1709063ad100b009821ce1ea33sm5908033ejd.7.2023.06.23.04.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 04:30:16 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/5] scsi: dt-bindings: ufs: qcom: Add compatible for sm6115 and sm6125
Date:   Fri, 23 Jun 2023 14:30:06 +0300
Message-Id: <20230623113009.2512206-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230623113009.2512206-1-abel.vesa@linaro.org>
References: <20230623113009.2512206-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string for the UFS on sm6115 and sm6125 platforms.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/ufs/qcom,ufs.yaml     | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index bdfa86a0cc98..46f454ec3688 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -29,6 +29,8 @@ properties:
           - qcom,sa8775p-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
+          - qcom,sm6115-ufshc
+          - qcom,sm6125-ufshc
           - qcom,sm6350-ufshc
           - qcom,sm8150-ufshc
           - qcom,sm8250-ufshc
@@ -163,6 +165,36 @@ allOf:
           minItems: 2
           maxItems: 2
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6115-ufshc
+              - qcom,sm6125-ufshc
+    then:
+      properties:
+        clocks:
+          minItems: 8
+          maxItems: 8
+        clock-names:
+          items:
+            - const: core_clk
+            - const: bus_aggr_clk
+            - const: iface_clk
+            - const: core_clk_unipro
+            - const: ref_clk
+            - const: tx_lane0_sync_clk
+            - const: rx_lane0_sync_clk
+            - const: ice_core_clk
+        reg:
+          minItems: 2
+          maxItems: 2
+        reg-names:
+          items:
+            - const: std
+            - const: ice
+
   - if:
       properties:
         compatible:
-- 
2.34.1

