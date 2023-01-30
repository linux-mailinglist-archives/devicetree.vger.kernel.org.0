Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28B03680DA8
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:30:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236837AbjA3May (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:30:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236821AbjA3Max (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:30:53 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 949E52FCD2
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:30:52 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id l8so7872081wms.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n1QRubOqqMcAF6INE/oHUYXKZooNA3LwFw2vbXP3BI8=;
        b=JBPq4WtHgD17brJJNB+HeJ+uoALbeC49/oqkEeC23GT0s/NZMwYna5WRm+1cGHhL4c
         /5ZivFTfG9W3l5ncLECn0ufEkv47harQ1NM5/H3rLTRNTeUU7CAGIj5RqSdsT9JkLlVq
         RnPnafjOpWgHphC38YL4qyckpbBjzcLZWBcNepj+5CEF1kF8xdmE3EuZaJCgW1Co8slB
         +oKCliNUjTroTnbcRh7p2fgXCPc8ZP9+fvlAmi9g50waMH2BJ7qEkzC8AZ6XCqYELz3a
         28sYnFg45Yc6sgDIcLPMcx8Ulu0OiZzIIGQ96Nk78O2bfrpsQZvf9dqnWplYkO+5wtpm
         oXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n1QRubOqqMcAF6INE/oHUYXKZooNA3LwFw2vbXP3BI8=;
        b=6OSKpfCsmw1lmfmVbwqZdbeeTwSzAkSxyhfvgvRyunFtflUOYGk51qtxfJ1Uu2RQ0L
         +/8LJ0KlQHfFQVJam+IxZYr2CTVO9wJXJpZampEJRJnZ8X2mCtDyptIucjEB+rDJxfbG
         d/oTd6qEkGZYaNn6NVeEt7sEatR/ETqy7+gMHBhE1rUxdn8qctd1VZ0pZUbAIVbfB78I
         gJ6x43isL+0OBj8K0Rq6RwJQZB4rPtgnXEtqLPLzrVtpZBgwmF/DtWNea3fgTzA6QFUU
         S32RY7ex+BFwepDnEB2QHhy1FPciFS7gzAbx69fN6wV4KmmFcMo8REvY665/eWC5QqIH
         bwcg==
X-Gm-Message-State: AFqh2kpeQEzDs/39tuTuTz88kmlfAcZ5XqjY4N5qve3hZ2f8e/bg8OD+
        fzzbO7iNgJ74gf9CsTz8Y1uugg==
X-Google-Smtp-Source: AMrXdXtmlsbX33v3FHmU8EnTwJ9AI+SyD8UGSf4c1yBXeykjS4ESON4fJZpK9sDEnnI92b5Em2hLKw==
X-Received: by 2002:a05:600c:3b1e:b0:3cf:497c:c4f5 with SMTP id m30-20020a05600c3b1e00b003cf497cc4f5mr52975076wms.13.1675081851015;
        Mon, 30 Jan 2023 04:30:51 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i20-20020a1c5414000000b003dc3f3d77e3sm9823416wmb.7.2023.01.30.04.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 04:30:50 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     "Rafael J . Wysocki" <rafael@kernel.org>,
        iresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2] dt-bindings: cpufreq: cpufreq-qcom-hw: Add SM8550 compatible
Date:   Mon, 30 Jan 2023 14:30:46 +0200
Message-Id: <20230130123046.3229654-1-abel.vesa@linaro.org>
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

Add compatible for EPSS CPUFREQ-HW on SM8550.
Also document the interrupts.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v1 is here:
https://lore.kernel.org/all/20221116115046.2687244-1-abel.vesa@linaro.org/

Changes since v1:
 * dropped the interrupts related properties as they are already there.

 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index 2494e90a2fda..e4aa8c67d532 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -32,6 +32,7 @@ properties:
               - qcom,sm8250-cpufreq-epss
               - qcom,sm8350-cpufreq-epss
               - qcom,sm8450-cpufreq-epss
+              - qcom,sm8550-cpufreq-epss
           - const: qcom,cpufreq-epss
 
   reg:
-- 
2.34.1

