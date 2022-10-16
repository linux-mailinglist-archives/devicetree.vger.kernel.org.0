Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEC0D6001F1
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:04:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbiJPRE3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:04:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230171AbiJPRDx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:03:53 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40987444AB
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:36 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id s17so4251563qkj.12
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cKMxoMSocSsO5VsZPFdHg2+mLP+XhcRFB9IKCKyblKI=;
        b=XC6v/OFAI3spVeBhnwzGAfO1+zJQhosVeb7OpYMKcoBG/2fD11Ejx/1NsFwkFtALF+
         i2YzHy96112KndSZRamjGem9dwCN4ZKtuuKPunWMAnkwTYmVQxEAaZCRtPVJKC2PJ1YN
         gdhe4N6/IlSjwzquXX+QOdPWinT/YvKQLAvZqrWRpboo8B7pEsENSajZLZlxYLiQnuEc
         bPsG68VX7r00IIh5CeCa8wMR5fJp1DSwa5RGyW/xmjFVl3A2hHIFuw+1zlSwwpGNuZ8R
         LCXU6zzuXTiULcwT1kpMLf8NeW7V8BZPfCTwPPZEJdSEUv5Qzh0KgL1z/B1b1Luw5YuZ
         OA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cKMxoMSocSsO5VsZPFdHg2+mLP+XhcRFB9IKCKyblKI=;
        b=AINkUIC2fVGleVUx7U6kiCNRMtBtvaEyfxO108USJHrS+uxULn/MFLvPpWTAU1eRFu
         bPUJ8ZMTvCKq8GJDI1540FzIFkPYRufWCoaMV3JFrljj6j0AdS7oe/FZp6IyJGxtQKMK
         kM8kYWBREbY48URAQAigPpusacLM0rfZVaBN6qkjfLdaa5HPbuVY9fAPKnfPICjzqKTO
         FKz2q8fnxNsRXJkCYMM0cVmS9HF/BE9flA2VUMr6ejKg3Tt9kehL+zkmmna6+aYVFxA3
         mfdciMhLpXagjxhkBoQtJtCzhKLPZcQA01NGAswiPJRPsOuJKye1Iox2ggLwUYDNdQ6o
         oCfw==
X-Gm-Message-State: ACrzQf0HKel0XpY/TCTpczvXjZQGeFmicx8HJAzj7zBd5T5GITRu04AK
        f0N5gbmgatv2CikPHqp/PHhIqg==
X-Google-Smtp-Source: AMsMyM6ZYKsI9NjUsX9Ve7fSqBLaau3faZwkZ55e27uis6dZakZdjbs2NX3SmgovvH0LwE+znwslPA==
X-Received: by 2002:a05:620a:404d:b0:6da:4b51:2a8f with SMTP id i13-20020a05620a404d00b006da4b512a8fmr5098975qko.421.1665939746082;
        Sun, 16 Oct 2022 10:02:26 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id q6-20020a05620a0d8600b006ce7bb8518bsm7539967qkl.5.2022.10.16.10.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:02:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 24/34] dt-bindings: pinctrl: qcom,mdm9607: do not require function on non-GPIOs
Date:   Sun, 16 Oct 2022 13:00:25 -0400
Message-Id: <20221016170035.35014-25-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org>
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

Certain pins, like SDcard related, do not have functions and such should
not be required.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
index f7bd4be1739e..57a4fed55de7 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
@@ -115,7 +115,6 @@ patternProperties:
 
     required:
       - pins
-      - function
 
     additionalProperties: false
 
-- 
2.34.1

