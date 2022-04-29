Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D81915157FF
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:09:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381307AbiD2WMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:12:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381309AbiD2WMU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:12:20 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C9E3DCA8B
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:09:00 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id t11-20020a17090ad50b00b001d95bf21996so11660728pju.2
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MoViicfii9p6utWoae7ElSIZUS07VgE/0ju82SmR24M=;
        b=k7HcWctvtlxZkalvnAZe0Z5u5NOvNI94X3lEw6NY1VMBjEzPyVc1CrHbTxTLGTkZrE
         SrzihBdRRB441L87xO29eXdylrY5XRz9RfsoK7jc97uXxY3sZ++1ES/lN5qsMvbYBnWT
         AZAjM5U+7f70eK/wKjZhIagWjQkF53uolMKAKWuTe80FQ/1c+z2fuDR2/bWu7hecXeKU
         48A96M2TMQcjDl5drYDR5a14TtAN0oP8Pwmri/Ue5JxDhXNIezxWgdhILbMt5c9SIG6q
         jTnyMCuYWg6yB4XKGsAyxnaeCTepcpz0EDLZrc0TwQOWbk2qWhSaiZIcli85i4P5S1MV
         9iEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MoViicfii9p6utWoae7ElSIZUS07VgE/0ju82SmR24M=;
        b=iUchtjGmdA29FwR7MirKNQqLdZs2cNVD/oXGjQYAkeFVfE1O6lrPHS9Rk7I8qR/osl
         BlR0Cvtb6BIpKv4TzY6/EAkFbKqQTxu2CwClyWTVRfbEsyFnZWcOOrZA2CLSA43AqkgF
         /OrBAMULyR4Bx0BiHbRsedu4BKpMfMrq8yrdhfWVhsQsmiFjHIfkQ183+yozmDk3wder
         /GZLC4ChpF6YlPRQ74eGkSWzDqO/a4emj4oqErlmBANxhy2PdisdUXhxBeVKLHVTa7hd
         eSG3rV0crKMAFUTwzJNYWEa1Ulti4OmieUwet4uLVg/lpCOwQxrChH3MIDeAsjIbfkHD
         vN9A==
X-Gm-Message-State: AOAM5310A5gD0c1eoGly6mwqvwZ9stLANulhLJttMlhSwEnPyHLTkvke
        /sDeHbGY/zXngMEEYXQXjShtNQ==
X-Google-Smtp-Source: ABdhPJxZ+EEi2RSJizGrNsZtppHOgq1GzCFOC9SGroJ2295J2M1o09ttfhXrciO0rwIXevRIfOUwBA==
X-Received: by 2002:a17:902:e743:b0:15e:8ddd:c7bd with SMTP id p3-20020a170902e74300b0015e8dddc7bdmr126045plf.128.1651270139817;
        Fri, 29 Apr 2022 15:08:59 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
        by smtp.gmail.com with ESMTPSA id n21-20020aa78a55000000b0050dc76281c2sm170020pfa.156.2022.04.29.15.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 15:08:59 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-mmc@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, bjorn.andersson@linaro.org,
        ulf.hansson@linaro.org, robh@kernel.org
Subject: [PATCH 3/4] dt-bindings: mmc: sdhci-msm: Add compatible string for sm8150
Date:   Sat, 30 Apr 2022 03:38:32 +0530
Message-Id: <20220429220833.873672-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429220833.873672-1-bhupesh.sharma@linaro.org>
References: <20220429220833.873672-1-bhupesh.sharma@linaro.org>
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

Add sm8150 SoC specific compatible strings for qcom-sdhci
controller.

Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index c33f173e3b6c..4eb213b3e551 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -35,6 +35,7 @@ properties:
               - qcom,sdx55-sdhci
               - qcom,sm6125-sdhci
               - qcom,sm6350-sdhci
+              - qcom,sm8150-sdhci
               - qcom,sm8250-sdhci
           - enum:
               - qcom,sdhci-msm-v4 # for sdcc versions less than 5.0
-- 
2.35.1

