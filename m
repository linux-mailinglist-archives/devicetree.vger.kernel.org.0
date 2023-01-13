Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E9D7669435
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 11:34:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240822AbjAMKd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 05:33:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240830AbjAMKd4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 05:33:56 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53AD03C0DC
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:33:55 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id v6so30530465edd.6
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZF5sd3g90f4Qs9P874U5YVELS2KTcI0WZKZFpvAbkiE=;
        b=DNTWY+vB8ko4GcShIXaNoBteQKEzG75KC+7zd88VfoNlC3yqjtzwQt3vvuo4j+IHcd
         qw3CwofXjgi4ABZHQXCKx4VOJ56bvSWI9RJPF9d65tOcjkgRM6R0KDdGTr8VTOGs7rLT
         vUIikdT8nKJt0fXy1/5ekH4Qk5RkBl1p+PtN/+JnQLZSImFUrKrr43b57Xvm0/3AVSxi
         1/p6HfENmvEolWu1PU6vPC+kUWfJBb7nj08QtxVf1iTuQZSNYEG0xvXsSuRqPhJYq6a8
         h2oRSHww3lnRU6/r4yLS5L4wFEXCX6JGMO6j/LLUR3hN08D709pfyEwB2Nk4ssh5d1ZZ
         1apg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZF5sd3g90f4Qs9P874U5YVELS2KTcI0WZKZFpvAbkiE=;
        b=v5NjKRYU7JFPFD4IpcBuGkDDTcx9+HmYvWDGlMA9w7GbeoQE6NC8zeS4ud91mhYo2c
         3zx/WfeVzVXo+uDOKRwltKkvH5jTZr/6AzJsdNa9t8l0TF0VSgP8vZ+WEZOUNNveocky
         6Ib3YOkETk7uYKmMik2xVZGbywv/UvlMPDgiCRZCgBDH03crdn03EzZPfmXi+9jPlqxS
         fDIeple9f4TXeTE5ePJRdKPCbIW2Sw6p4aPGtCaM02MQwKlWlxuxMuZBoo5Toukho8Dt
         lznOt1EIH3OQyyFzzYBNrAsHxr2XB4/39hTpB+xbHIeoqkEl3LQkNmUmAaXkk62S3c25
         3aSw==
X-Gm-Message-State: AFqh2kraH4d6yZlcP6syJ0HALPOBe5/oZXEJeMTN7JJ0Jp5K5rBNbdJZ
        Avx+XSvk/80Ld2BIqZ8niuZJAA==
X-Google-Smtp-Source: AMrXdXtJHIGMoGTv1v8iyljqehkQmmjHKgbw9OX6IrpnE8vM1b88k42aejnsCLT6NqBpsqezs7s/qQ==
X-Received: by 2002:aa7:da0e:0:b0:49b:58ca:ebbc with SMTP id r14-20020aa7da0e000000b0049b58caebbcmr5045375eds.32.1673606033893;
        Fri, 13 Jan 2023 02:33:53 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id qw25-20020a1709066a1900b007ae1e528390sm8296926ejc.163.2023.01.13.02.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 02:33:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/7] dt-bindings: watchdog: qcom-wdt: do not allow fallback alone
Date:   Fri, 13 Jan 2023 11:33:41 +0100
Message-Id: <20230113103346.29381-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230113103346.29381-1-krzysztof.kozlowski@linaro.org>
References: <20230113103346.29381-1-krzysztof.kozlowski@linaro.org>
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

The compatible "qcom,kpss-wdt" is too generic and should not be used
alone.  Mark it as deprecated when not prepended by specific compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Add tag.
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index e76364c52fc7..3e0b30a817d6 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -31,9 +31,10 @@ properties:
               - qcom,apss-wdt-sm8150
               - qcom,apss-wdt-sm8250
           - const: qcom,kpss-wdt
+      - const: qcom,kpss-wdt
+        deprecated: true
       - items:
           - enum:
-              - qcom,kpss-wdt
               - qcom,kpss-timer
               - qcom,kpss-wdt-apq8064
               - qcom,kpss-wdt-ipq8064
-- 
2.34.1

