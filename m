Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2952A5ECB53
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 19:41:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233344AbiI0RlH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 13:41:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233235AbiI0RkN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 13:40:13 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C001B1E8022
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:39:03 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id a8so16752401lff.13
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=dybnjr5p61/gPgkCl/RaZs1FBVAW8oN+hfiHVJUJz8M=;
        b=JXG5CBa8BebjlIe1kGsL7RXljPnpEp2TKYyvuJqPwLh4vM0oE5VTmMr2ECcMjUhKqv
         lBujoju+vXkLp12j8kUTlWa6G+BwLZ2JiaLVYSIGBRBOqpgaiqvTfM0Dn+n/GAmmEYEF
         +ZMri3aoDbzQmKdLM5EesrC04+6KhHha+5wlb4238vsCYEN40jhzzwwgOhF/a4q7mXTK
         bTAkLdjxlWbxfeqX/l+79tmRDpDqt+pXO2PIFR2aKjmImVSbOMQ2IxcS2CUbeCYQxgDO
         NDe9xOMipeeL6DqGc293JDPCiMQXyJBgsKEwv60cokM6hqPZR+p62n/onnG9x9ZCWLXR
         ZEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=dybnjr5p61/gPgkCl/RaZs1FBVAW8oN+hfiHVJUJz8M=;
        b=y541OI+GhIbdrGc4ohMhTo7XYMOrBNEvfmMzjTNgrWc6bAAOS83kqlr4DZRVVmvBPJ
         Y3jM7mk2cEBZeACEW/04Tr9m+3PvKYbPnXx0QEYk4UtSXjm7eV6JxF2R91GQ1Xgfm4f4
         xfxq6P1C3yx0+82h3uSsGogjxUUFLrX7FTINFNJ5DuiXz9U8M0BNKc7pCtsXmQYJ+aqX
         f8Ecfzif5WYPaoP8c3/E6+UwwiQCa0ZKtGsZkRqvTRvoXuZev8qcUvX2yA4rz4F51Svr
         twZ5WTpMKAC7gB7dpn1VYxDP6HDGzSSxDY0kMqULU28Bp1DqYA18MH96sOjhlf/nzVgZ
         9X1w==
X-Gm-Message-State: ACrzQf3cBRdFd1siz05Fr0FVoo9yquH1eH9LwhBxqA1GthdL+DLQheYr
        tzg5fPUnovWd5iW+7qpcDtlCZQ==
X-Google-Smtp-Source: AMsMyM4QQVi1ri2hpBm1kaQp8KjesUFkx6szvF420AgHpdmNUad5KKnAzZRnIE4dDHRrZAwES9ieoQ==
X-Received: by 2002:a05:6512:3f1c:b0:4a1:d76f:ff4 with SMTP id y28-20020a0565123f1c00b004a1d76f0ff4mr4501278lfa.292.1664300343140;
        Tue, 27 Sep 2022 10:39:03 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q12-20020ac246ec000000b00498f570aef2sm218879lfo.209.2022.09.27.10.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 10:38:59 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 27/34] dt-bindings: pinctrl: qcom,qcm2290: use common TLMM schema
Date:   Tue, 27 Sep 2022 19:36:55 +0200
Message-Id: <20220927173702.5200-28-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
References: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
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

Reference common Qualcomm TLMM pin controller schema, to bring other
regular schemas and additional checks, like function required only for
GPIOs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>

---

v1 was reviewed by Rob, but patch was changed since that time, so not
adding Rob's tag.
---
 .../devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
index 5324b61eb4f7..2a23f413c8c2 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
@@ -119,7 +119,7 @@ patternProperties:
     additionalProperties: false
 
 allOf:
-  - $ref: "pinctrl.yaml#"
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 required:
   - compatible
-- 
2.34.1

