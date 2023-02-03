Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3057C689F92
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 17:49:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233384AbjBCQtG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 11:49:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233357AbjBCQtE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 11:49:04 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9B1C7199E
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 08:49:02 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id bg26so4352820wmb.0
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 08:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qmHMd/kJo9fi7KUEzvqHg27Up1GHzX0whgZfEcncBQ4=;
        b=bMHs43HMrfCWH9zAIBTbOpr2xZ5KYHTtR8G0AzASLUsgdxIwj2FYAqeavXjlEWFh53
         OB6/XPeBy2n+qdMJlpxuVjtrVYCkfXKnDxpkIuANG0Q6NFGelx+bMpV1H0ZTWItQKaRv
         LRHO5X9E3SU7xOhaO1eAjzGGdiOWhieIedErESslL8vONxmz/Kqrdqif81mwk49srkGK
         URILhQtN9Tpp+zhOI7fJV30XPdRtMM0hC4seOUFfPjaF3rYnU7rGpce7Ib/+nK2zPMmY
         Yj988Pw9wnDwY7P/K7U9+lscXztIqcpfSjIt0XxNS9fOXuR3XpQVSBju4DiOgq7VSWBu
         m5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qmHMd/kJo9fi7KUEzvqHg27Up1GHzX0whgZfEcncBQ4=;
        b=tsOxlHpBSbYfp/xO6y/+djfpqG36mu6dVu4Ij2ZwJImjUvTeHaHa+6Te9lruFNZgk4
         3oiJ7eRjErysSz/MGGVrWd71AwPx/ZhWG2/Jk3pnWQkQqZ8GlyEFS7SeEQw1NeEeyCfb
         6JOj5tTkno1y5fVu3cEE5k8XreN1KHQxP4sThC97k0Qp7C/S1ANSFu5x+cht9N9958s0
         UCjG44bLpL50tuBJaujCfOO95M1BPnUnM5fQaeVQxnifl3xHyQ3fdKcGSpF6awb4hhPe
         7yq+nX30Wlo+JrG7aXII00E+6ie6kezMQ8ebc5/8zREzhTeUCCCsvXJeCJ+1OMndYQmj
         lcWA==
X-Gm-Message-State: AO0yUKWAA4yA07IOQ60Yab4Crf6HSfyZcthL/3H6nPoZWc0p25gXOnWv
        51DdtLNOlM3WYW7shfSJo16qQA==
X-Google-Smtp-Source: AK7set8KflwscXqE6oaijqOQZef+hssDC9XdOLRTIyBO8DDAgaA8/38qma6IMdeQx0E8p8gAkOqFmg==
X-Received: by 2002:a05:600c:4fd2:b0:3df:eecc:de2b with SMTP id o18-20020a05600c4fd200b003dfeeccde2bmr852091wmq.11.1675442941004;
        Fri, 03 Feb 2023 08:49:01 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i21-20020a05600c355500b003dc4b4dea31sm3503247wmq.27.2023.02.03.08.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 08:49:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] dt-bindings: pinctrl: qcom,sm8250-lpass-lpi: correct GPIO name pattern
Date:   Fri,  3 Feb 2023 17:48:51 +0100
Message-Id: <20230203164854.390080-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203164854.390080-1-krzysztof.kozlowski@linaro.org>
References: <20230203164854.390080-1-krzysztof.kozlowski@linaro.org>
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

The SM8250 LPASS pin controller has GPIOs 0-13, so narrow the pattern of
possible GPIO names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml
index bd45faa3f078..de9d8854c690 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml
@@ -64,7 +64,7 @@ $defs:
           subnode.
         items:
           oneOf:
-            - pattern: "^gpio([0-9]|[1-9][0-9])$"
+            - pattern: "^gpio([0-9]|1[0-3])$"
         minItems: 1
         maxItems: 14
 
-- 
2.34.1

