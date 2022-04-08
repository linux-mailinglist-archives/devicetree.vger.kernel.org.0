Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF744F9F26
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239845AbiDHV2k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234779AbiDHV2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:28:40 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BEBB3982B
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:26:35 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-de48295467so11070960fac.2
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LuBUF01ZBrqCNLOoe4NqejorkIDPWmO6iOO+rFH62ao=;
        b=c0M8y/Bb7Rf4Wwftddj/IeeR3nUFU+FLP+ksOmfhwZqYsbFhKcd44Z5BxPgSmt+2vG
         nsDw18jqh8kt3lbner8JWDhnDnNRDxBkcG7R8hka2+ORNa13Dl2+3OxvW7LKw+aikIXU
         NPWSTRkYV+y+XnM++4Z/3SK2ldTB4NM/FG8b2mq8cy0D0/aZDssjv8wKkqmWpiZi6Aiy
         DPF7QB6nVsZ4sN/P4/yFKeEM1J4MJSOADEhz9o/7IXcRLydIElt/4dzGSNqGjLo7xokr
         Xp8pfEApgX2AEc3MQBeICthB+AQJYYobiJrFcbJJQdsoZv0glsT2B2AUdqoA9jryWvbX
         BlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LuBUF01ZBrqCNLOoe4NqejorkIDPWmO6iOO+rFH62ao=;
        b=ABKU/BZY98tVPD9WB/4CQ2e9ztZ1YiYtshQOB/zXNFW7fY8x5lGYZyAcUSo9eS4nwp
         hoid0FSFyuZ5b51oG1t04kKt4Bss9G2Zwsmc7tSqA/6F4yKXxfYiGiKJmGRLfkOPlrIe
         q22Wjnq2fvT/1nza/h6ubIpE6AJdKKHTAIeOkdiKWiFi9c1e2sb2VgCaTvrrgEl0oiFc
         ldOshhD4rr+kx349Za6cpI/AwEsAnT5tBdH4C4vAcMw1ZoVYNghDUg4HpGOFzOXwoL8r
         uV7CmzReaBgqR7CLkFmk6tX+oO6k1LFR0A/yvcppmeAEpll59dXJ0EQ2q/gR2MPqgG1H
         heOA==
X-Gm-Message-State: AOAM533NGVB6XhYATTGCNinIxC4ESjq+4RzSgGyEwKFUaG2KaLJiuanP
        WqydKiO/8fH3QEtzg30FWVRDSQ==
X-Google-Smtp-Source: ABdhPJx1hLX6sWFGswxg/d/TlxwSW4Bfk7FDwpLlOBNoLiQYTQEP5tUm3YS6+AJxyUAa4utX5JGY/Q==
X-Received: by 2002:a05:6870:5708:b0:e2:8a41:2261 with SMTP id k8-20020a056870570800b000e28a412261mr2363922oap.247.1649453194618;
        Fri, 08 Apr 2022 14:26:34 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id q11-20020a05683033cb00b005e686fd52d6sm6339475ott.17.2022.04.08.14.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:26:34 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: watchdog: Add SC8180X and SC8280XP compatibles
Date:   Fri,  8 Apr 2022 14:28:54 -0700
Message-Id: <20220408212854.581481-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Add compatibles for the SC8180X and SC8280XP platforms to the Qualcomm
watchdog binding.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 16c6f82a13ca..cdb09a2d244d 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -18,6 +18,8 @@ properties:
       - qcom,apss-wdt-qcs404
       - qcom,apss-wdt-sc7180
       - qcom,apss-wdt-sc7280
+      - qcom,apss-wdt-sc8180x
+      - qcom,apss-wdt-sc8280xp
       - qcom,apss-wdt-sdm845
       - qcom,apss-wdt-sdx55
       - qcom,apss-wdt-sm6350
-- 
2.35.1

