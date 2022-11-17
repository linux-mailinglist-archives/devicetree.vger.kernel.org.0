Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBCB762D8B6
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 12:01:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239731AbiKQLBV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 06:01:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239589AbiKQLAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 06:00:25 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A55E167CD
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 02:58:53 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id k19so2243664lji.2
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 02:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FZKW7Ev5+0Dpti/uSPcNCqyxUeFWx9iDTQT51fsveLg=;
        b=quxf3BZ8jVfhc/nH7Y5CE/bla3ULvxP13BfTPHhR3AoxLQqMPtDbabE5WkoJSJVcbT
         Cc5e80IYpH3STs5PcoIK0RvyN6Td6aGkbcH5qPaB/OQ8DRYpdDIvS2yfvMK6SqJrMXuY
         zAWKPkUx+yEOFvHYAc7BtYnrNEQ77G+RkxHmIyPKUeL6nA3wT2yg8Np+o85KGP+YJyXn
         O0sYxV79eU87VZ8VBLsqbnZnfYbRq/3d7uAit2Wj5Wx7wZgDXCSTNDllVWm8AkPVh14T
         0gBkHRNSB+L+muDgNinsqszA43/BKrqUcTAlmn8+oeSa8vKUJVI/LVMM7Gq/rJqqY/QS
         PWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FZKW7Ev5+0Dpti/uSPcNCqyxUeFWx9iDTQT51fsveLg=;
        b=L9Chw1G+Hv1QFGg0TsPSOJm/IU349mW3IeDzLX/WvfG91HuKKXTKNg06W8CZbDnmgZ
         H62QUTD8KUKjhTx3ucNk52M7Zd38YR0U8zToSHLpx4iv7ZgLDVzsZDaTbqZ0S4npWHm5
         yI2c87ASF1ExeZyCKuHI4ls9PcYSLP/IbDQSGlHPsrFO1N0kmRCRritCkddXeXjRax6O
         TrmEAlB9G6OvhVbA9eSCxKjv/2zaNO3osSorthfAFYhj/z2Q4qi3FSVb637+UlaqyTIE
         POXdgqtsEottwz+ScjlbeNHbRzeP1NBr6ntnlqmuVM+n81jd58MYaADDWeuY0J6ROn/P
         zcPA==
X-Gm-Message-State: ANoB5pn0hCVpx6gKw2vOxx8itiiPM5yQhILK7LGgdnY06uvgoTeC41PY
        S2C9nW193MQb/dl/iCHMkTz7mw==
X-Google-Smtp-Source: AA0mqf7W4EMRFi2OnsiKBzqOxyeuq84IcdSi96tags2STd3idC6wFnnCdxHHFXFUUX82J9aujE/fWQ==
X-Received: by 2002:a2e:3819:0:b0:277:2217:9ee2 with SMTP id f25-20020a2e3819000000b0027722179ee2mr761928lja.183.1668682731658;
        Thu, 17 Nov 2022 02:58:51 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id d7-20020a193847000000b00499cf3e3edcsm89123lfj.296.2022.11.17.02.58.50
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Nov 2022 02:58:51 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        linux-watchdog@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: watchdog: Add MSM8994 watchdog timer
Date:   Thu, 17 Nov 2022 11:58:45 +0100
Message-Id: <20221117105845.13644-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221117105845.13644-1-konrad.dybcio@linaro.org>
References: <20221117105845.13644-1-konrad.dybcio@linaro.org>
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

Document the MSM8994 watchdog timer which is already used in DT.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index d8ac0be36e6c..a1f17c9e02db 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,apss-wdt-msm8994
               - qcom,apss-wdt-qcs404
               - qcom,apss-wdt-sc7180
               - qcom,apss-wdt-sc7280
-- 
2.38.1

