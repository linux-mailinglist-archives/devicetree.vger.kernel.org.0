Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA43B56B972
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 14:16:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238168AbiGHMMH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 08:12:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238131AbiGHMMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 08:12:06 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7319CE3C
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 05:12:02 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id v67-20020a1cac46000000b003a1888b9d36so1061692wme.0
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 05:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zzwiIB75BAWXHQ1Oucx/2up/baq7so/2ltJZoy05TUg=;
        b=fS/KGgOkPYqMZusHtXdWErW3j83m13AQ/3rcuGrcMYmuWCOEt9nC4UVo6U+YJB7H/B
         ahPgaWfDVZPl+dOCX35mUw6KJnH7du6sc+OkxVMNRXpUkbP+rpKSCCra4H+PAIEAkUeo
         IApfWnvm/tMaPCMayoiMFhmctKRzb5RB5hjbdiQzbyhMYMGpqkd8I36+JaiTTT/9Fho5
         OBrgNCRfTy9Whk0x+flYmSoAOixx0oQZpr1cgw6YMRTU0azRv6euQZ+7T3P3KDGa/6Cp
         MwUYtaxcKywXjj6/GNnRStx+LlexpvP8BWLZmLkyllafL1B/qa6gEZNl7B9aoaAXPBQ0
         skWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zzwiIB75BAWXHQ1Oucx/2up/baq7so/2ltJZoy05TUg=;
        b=25HGR13nhxQHl7dJMCIN8PgcuRNY4C6HmhhV4epHuIDNoNAvwGjTbTL+GyETGbLy/q
         PQKaXUCQI4Oa4PA++TX+9Qc1xX5EsA7VBQE4cLbFjT/x4PYvZLd62GdzIs6eQUj1Jeui
         ugclD2MCGxrLp4wJOHQUiXBWJXJ5gRQWsSWCVL0d0QMLdH0q9IfTAnFFjQz85/GQlDOY
         Vze8s6CXxlA5SNnHOrPYixCtw3UEBkkzDDyCEAWtj8jD/0F9ygKLO7XsUuBDtfJu80VW
         FZtKCpIy4TMvj3kTA2EchJK/vflfHSJ1dFwuW6K4x1gI3gmxCF1peR1o2cUS1YR+Epg9
         afiQ==
X-Gm-Message-State: AJIora9aXCVqSsqFwDNIVMmb9lACmm+FmbCDOIbgS1jkAWA88rQqcPT4
        tlVB74FXq/2K3BE7mGKnhVAs4w==
X-Google-Smtp-Source: AGRyM1u43pXQOxy0D4XqWjeK/L+qlw/RNqBRoy0krV5lx7XaAHCQs98J00RUUyFcMbkHolYW6lbfkw==
X-Received: by 2002:a05:600c:3494:b0:3a0:37f0:86ad with SMTP id a20-20020a05600c349400b003a037f086admr3507351wmq.65.1657282321052;
        Fri, 08 Jul 2022 05:12:01 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l3-20020a05600c1d0300b003a03ae64f57sm2030549wms.8.2022.07.08.05.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 05:12:00 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     ilia.lin@kernel.org, agross@kernel.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, stephan@gerhold.net
Cc:     linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/3] dt-bindings: opp: Add missing compat devices
Date:   Fri,  8 Jul 2022 13:11:55 +0100
Message-Id: <20220708121156.2165250-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220708121156.2165250-1-bryan.odonoghue@linaro.org>
References: <20220708121156.2165250-1-bryan.odonoghue@linaro.org>
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

A number of devices listed in drivers/cpufreq/qcom-cpufreq-nvmem.c appear
to be missing from the compatible list.

Cc: ilia.lin@kernel.org
Cc: robh+dt@kernel.org
Cc: krzk+dt@kernel.org
Cc: devicetree@vger.kernel.org
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml b/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml
index 10b3a7a4af366..b8b6cdc73209f 100644
--- a/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml
@@ -22,6 +22,12 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,apq8064
+          - qcom,apq8096
+          - qcom,ipq8064
+          - qcom,msm8960
+          - qcom,msm8974
+          - qcom,msm8996
           - qcom,qcs404
   required:
     - compatible
-- 
2.36.1

