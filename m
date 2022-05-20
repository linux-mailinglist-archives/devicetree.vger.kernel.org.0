Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6965F52EC48
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:40:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348156AbiETMk0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:40:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241184AbiETMkY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:40:24 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C60315A3C1
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:40:23 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id c19so1005307lfv.5
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ESS8z0gPMrp8HIeiYMl+g1p08r+rLx+Me8BHX8Ar2TU=;
        b=aFc0u3o5KrmNm5Q6tXwxKrAXg5dEA4bfQwQE2ltIXx+JW6M9Q0GwJOn/02cj8eXzj+
         kNvi/KjggsBopr/czDNjPMu4E50A0QLVVIjorC7iqca4De+bQPb20N5VRdE4hoPLDCoC
         A+ZbcwvGECMcfTrYkHrvIEd3pNZWbnLbJvt3qeykIlTyADIx9C6I4pRGmOym1qaE1qIZ
         hloo3JdzCMVbV5J6kmNv3BRNZRepxVpuyctMfbX3STPepg9lM8T/wMQcZioM5Gls7uKj
         hWDO8frhbJqPett7F4+/uGf5FPsagWH4K1NQfVrWUtbPtBOh5ohZfPnUBBAD2zLlcMFV
         YyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ESS8z0gPMrp8HIeiYMl+g1p08r+rLx+Me8BHX8Ar2TU=;
        b=FC1C7Zo/FybwCsQ3NI9Oofsegnbe+2Jkk1mmK5iaG4Sx1wGL3/Hk3k8804kH6VYwAJ
         WwJxQ7Bz/C4hzFQZd1go/IasgsFOlsNDoF3h+UD1Cw7nCHrok57Q7y5WqOoIAxkwg2lJ
         eJiTFl6tQ6TnBXD1kMdiyLKAH4oeSExWTG1p3uXu2wgsqX96+IOYdet5Yi2vfVOyWuPX
         0u3ZL1mOuFv0m30NlOx4SOARhMPa5YtPKeDUpMRyGZQkaqKcDoHo77ixM6dYbO6rXHN1
         fKEjYtqG5SYb2bNA4h3bMbvfsM8r5pPeRJ3/jA8+dw7gDvtnGaGLMnlsEPzt9Tr5u7ts
         360g==
X-Gm-Message-State: AOAM5307E+xQiCV4mt+q41LLRWqpdD2GDrdSUtttVHVruCn0q0X5ZGPS
        5gkIjcIuKAY8UesbJJj05QzPqg==
X-Google-Smtp-Source: ABdhPJwql+NjrHt8F4k/y365IWTQb7IIoDgwwLF1vRtJTRvgiv6JlgM5b4hVo25CLdEg1Qh3hepZLg==
X-Received: by 2002:a05:6512:1315:b0:474:40c9:41a7 with SMTP id x21-20020a056512131500b0047440c941a7mr7008676lfu.319.1653050421835;
        Fri, 20 May 2022 05:40:21 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v5-20020a056512348500b004744d5f8f26sm650039lfr.52.2022.05.20.05.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 05:40:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: arm: qcom: switch maintainer to Bjorn
Date:   Fri, 20 May 2022 14:40:18 +0200
Message-Id: <20220520124018.367004-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TVD_PH_BODY_ACCOUNTS_PRE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Stephen bounce since long time ("Recipient address rejected:
undeliverable address: No such user here."), so change maintainer to
Qualcomm platform maintainer.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Although Stephen uses his @kernel.org account but the address is still
not updated, so I guess these files are abandoned. Otherwise if they are
not abandoned, please update the email address.

It would be nice if folks from CodeAurora updated their addresses,
because these bounces happen since some time and are annoying.
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 25ae8a850be1..d137fe371935 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: QCOM device tree bindings
 
 maintainers:
-  - Stephen Boyd <sboyd@codeaurora.org>
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
 
 description: |
   Some qcom based bootloaders identify the dtb blob based on a set of
-- 
2.32.0

