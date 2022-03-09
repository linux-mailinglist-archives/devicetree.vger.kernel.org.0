Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABC364D318D
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 16:15:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233771AbiCIPQz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 10:16:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233779AbiCIPQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 10:16:54 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F09417BC7A
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 07:15:55 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id c16-20020a17090aa61000b001befad2bfaaso2589852pjq.1
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 07:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B/IcWlT+PDOAuKFhHBO22sb+SfpqtrQ61LlKL6Ry12Q=;
        b=t7sc/C5jUWt89kTrhEtmyKtFqcGc5bNY8RrjGzLXl4wr1SmRJfVT0gI4LIKyn8QLDW
         91TbWh95XTGlepNVumZwd+GfBoe27+cmIBINILwepPfBjuuh8bHclLORplrQRXcmJQd5
         mWcPaMBP8ZvmTo4VMVn1Hg7UtP6U6Umx3yEIZHeznMJBZT/WDG3s+eOXFY2q25Vvrzlp
         HDIlFxSWWWTnYtkwHIEK+l1prXbJ3ajK16V317xMfXoHehaY4+utvsIoECK1Bauz8mjd
         moaTLvtlKCQq7ekft3iWrGnG8gD0H+lb28Yxo6CrIL+c7RTxqFM+UDUxqBw5NGKjq5cE
         dpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B/IcWlT+PDOAuKFhHBO22sb+SfpqtrQ61LlKL6Ry12Q=;
        b=zOywIbt70FvzPHQD6vz2/J4nD4a9W6UsAMTM/ztkaHlTUO2etwGKDuExxpMawRUexg
         gc49+FPdz0T9WGjMZL6JfGkg9kqHGb7WfENAYGP14ye59K9ryj+lYSpV6TZ/LuLZanJo
         8GAURGBKwqWrk7wJTg5Vt8YXlv5VaZmJfMFku9/31EWHRnu5eVFdYlJBT11+n4Wo2fAn
         qkwbZkkh7NjTDFtM3Gi0g59eYmj87d2JCFtWZXoe7CR+Xqmwm1xXLoeIc79ap2swueO8
         eVoYJDzwgO+n1qc8LM0sxLSif9pckUSLnWvbtGgEBLmzHhpHPWwZzytlZx7iDBKr1Uz8
         P7BA==
X-Gm-Message-State: AOAM5318SdtP52Qo8DC7anZ9SV64cmuX0sxnGGtwUnJzja8b/2T7olN5
        LUSEDE7CVophJGx96Y3uqSip
X-Google-Smtp-Source: ABdhPJwAOG34hjqTjNfdA7pWvCnPSiGY4m4NrhjpikXMG87mhNgOOsYgr4P3RiYYkBNP6WPqd0LBjQ==
X-Received: by 2002:a17:902:dacc:b0:151:c216:2772 with SMTP id q12-20020a170902dacc00b00151c2162772mr23086584plx.107.1646838954708;
        Wed, 09 Mar 2022 07:15:54 -0800 (PST)
Received: from localhost.localdomain ([117.193.208.22])
        by smtp.gmail.com with ESMTPSA id p25-20020a637419000000b0037fa57520adsm2727425pgc.27.2022.03.09.07.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 07:15:54 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     rafael@kernel.org, viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        angelogioacchino.delregno@somainline.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Hector Yuan <hector.yuan@mediatek.com>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 1/2] dt-bindings: dvfs: Use MediaTek CPUFREQ HW as an example
Date:   Wed,  9 Mar 2022 20:45:40 +0530
Message-Id: <20220309151541.139511-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220309151541.139511-1-manivannan.sadhasivam@linaro.org>
References: <20220309151541.139511-1-manivannan.sadhasivam@linaro.org>
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

Qcom CPUFREQ HW don't have the support for generic performance domains yet.
So use MediaTek CPUFREQ HW that has the support available in mainline.

This also silences the below dtschema warnings for "cpufreq-qcom-hw.yaml":

Documentation/devicetree/bindings/dvfs/performance-domain.example.dt.yaml: performance-controller@12340000: reg: [[305397760, 4096]] is too short
        From schema: Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
Documentation/devicetree/bindings/dvfs/performance-domain.example.dt.yaml: performance-controller@12340000: 'clocks' is a required property
        From schema: Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
Documentation/devicetree/bindings/dvfs/performance-domain.example.dt.yaml: performance-controller@12340000: 'clock-names' is a required property
        From schema: Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
Documentation/devicetree/bindings/dvfs/performance-domain.example.dt.yaml: performance-controller@12340000: '#freq-domain-cells' is a required property
        From schema: Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
Documentation/devicetree/bindings/dvfs/performance-domain.example.dt.yaml: performance-controller@12340000: '#performance-domain-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
        From schema: Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml

Cc: Hector Yuan <hector.yuan@mediatek.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/dvfs/performance-domain.yaml          | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/dvfs/performance-domain.yaml b/Documentation/devicetree/bindings/dvfs/performance-domain.yaml
index c8b91207f34d..9e0bcf1a89fe 100644
--- a/Documentation/devicetree/bindings/dvfs/performance-domain.yaml
+++ b/Documentation/devicetree/bindings/dvfs/performance-domain.yaml
@@ -52,10 +52,16 @@ additionalProperties: true
 
 examples:
   - |
-    performance: performance-controller@12340000 {
-        compatible = "qcom,cpufreq-hw";
-        reg = <0x12340000 0x1000>;
-        #performance-domain-cells = <1>;
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        performance: performance-controller@11bc00 {
+            compatible = "mediatek,cpufreq-hw";
+            reg = <0 0x0011bc10 0 0x120>, <0 0x0011bd30 0 0x120>;
+
+            #performance-domain-cells = <1>;
+        };
     };
 
     // The node above defines a performance controller that is a performance
-- 
2.25.1

