Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2177E5B4E00
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231220AbiIKLOT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:14:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbiIKLNR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:13:17 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 925713C8EF
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:41 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 9so6488699ljr.2
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ShPxgoMmuatqdGQWqNcZcpEJgDBD4NgqwMQX8EaKFn0=;
        b=DHP+jlt/E508Xv9iSxNq/GTHVPkKnFhmT4qxAzzHSJDH/cXXAve7zIzeb0/DykHttt
         hvrGvHRxd+VN/E/pd3aIB8uIT22M/f69/zEVkK1b0ix5hWpCfccUlvADMrwNRhpsFzqw
         8FaaZTtA+ZAaJtvEGOTTEoNbQqo3Pozh5Qt3GwBZSNDlJ6PNznxSeU16KqNL7S5aLsgt
         Jcf6zeaCTuoFwYAXzPdDJxM8/2W7ncJCVblarYhbXXpFhN9kijV3l8e54jI4iKhp/unc
         PeoQeAG++TPRyMsqpuWGiSJQ2ri9vmMiImHrnlmQLRC0m3RAG3wDuKdwQTpQPYWfRK4T
         fivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ShPxgoMmuatqdGQWqNcZcpEJgDBD4NgqwMQX8EaKFn0=;
        b=l9xyQEN2g8+ZgFcd4G5EhtxdQqQtn2dG4px4A/EJZ55WamVoLUY7R5J/CutpYaHhR6
         9zhJgVh4WUlLpCOwfxuTEQf/TwdcsUQQKToodUNQ5CFSgakcF1HmO9Q4I3UaoT7+Otj2
         q6VI7SSJJ6KvwFtTvEMSG7l0Macx0/ngJPkgphMfNtD4jhbD0CTGR+bldJcc5bY+Wlis
         APIf8ecftVBTJaTlmKWMd5KQB2IEFZe+OWe8lsE+0BujM/ThgLJBXj1c3Kld6kXyJVsU
         W4N+RilEntnI/yIYp+Sr9sEZHpHfLGA9ftlEhuRK8yI4fR7E19aR5s6a02xKn9Ec5mhb
         a1AQ==
X-Gm-Message-State: ACgBeo3x4UxLwYQHCql+hu5JoiR/vnlkcSN3Vbk2aAjgM1SiDUmQEEPc
        PrMNMHSIJvXaB+f6oXEkEaX7HA==
X-Google-Smtp-Source: AA6agR571Fj41lyHAFhyGUDDlkIECF++W//6UfXv4X11c7ukU2cevSz0vIUMWA77oDUddJAiiQE5ew==
X-Received: by 2002:a2e:7309:0:b0:26b:df01:9f03 with SMTP id o9-20020a2e7309000000b0026bdf019f03mr3905831ljc.221.1662894742330;
        Sun, 11 Sep 2022 04:12:22 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 14/40] dt-bindings: pinctrl: qcom,sm8250-pinctrl: reference tlmm common pins
Date:   Sun, 11 Sep 2022 13:11:34 +0200
Message-Id: <20220911111200.199182-15-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
References: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
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

Each subnode configuring pins (so the final -pins or pinconf) should
reference common TLMM pin definition.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
index 12bdc2e67c4d..bccc83f22aae 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
@@ -112,6 +112,7 @@ patternProperties:
         - pins
 
       allOf:
+        - $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
         - if:
             properties:
               pins:
-- 
2.34.1

