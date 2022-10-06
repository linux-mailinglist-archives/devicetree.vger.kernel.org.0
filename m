Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F5AC5F6911
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:08:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbiJFOIV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:08:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231730AbiJFOH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:07:26 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39545AE233
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:07:02 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id g1so2841328lfu.12
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rmWrwXL1/rEa7YwSXjYI+sleNSYWYmtoDksU9D9w9FQ=;
        b=sm5+TVVv5qjweRw2lfL96piQUy3Npvv44gp5pEoTucx/iv1GPnN02CcuEVfTyp8hez
         Wvl46AKYqeajkqW9Uq372bzBVRq3sO1aNX79K4kcjLTyYPkfVJFUUIl6TzNLDF4me8N0
         1T+rFWY8DK6oDl4bb+OXF97+5zsfns32b3OF/rB5mfuyXxqsnn9Qfn/UJCnbGMfz4+Li
         zc65MC2YdH4Qo1Zrn1Ubs8S3ovdWgILE4uzu3EV2nCWcf1GRG9D9azIM6dfXzcsE0Mp4
         JFMUsxR0A+B6/6m5HIssC9nLVvJ5g3GfcpmQ59/uzkVzaj2lvkwBeq3Qj+ELvX+7/JmR
         XuiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rmWrwXL1/rEa7YwSXjYI+sleNSYWYmtoDksU9D9w9FQ=;
        b=eKmHXhRKfnnJsglAO4hI/2a1FNxBrsXjd67dLV2My/SewktZeoBwJ6dEoP4I7AIXaa
         7XWXNtEyDcqSVxZ3hOwt6bUGwRB9rRdqd/aKlkXA0p5TjATguLMhbSuFLfLNubcXFoC3
         rIwm1McOPUFc/hU4ug7pYyS16ljj9Te5ALoowNI+9/7iPFqapg8ppCbhjDNydfd4a/Th
         /x3zDH8qPGY94oQXDUrDbqNFc+AtIx1pn7CQxlDZ02Uq18uxmE08pYan1FUm9Wqi5aqc
         Ky77Rkh4iOaOdZRK+GgZsX0FknRLKg8/uVMfhstDc5in+SPZRkL0+wCo2b8L7dYKy506
         pakg==
X-Gm-Message-State: ACrzQf2gQbVT2pQyuaJ9SiDq79/v30KlKqIOQDpdpdL2mJXsSZsGc327
        NmkJEpFSZHF9xkQYEV7LYKK+5A==
X-Google-Smtp-Source: AMsMyM5cyxJ2wXG5J2lSVHvH2Lum7GE/H77ENBOqqdMxGyjk8njACSLQkNQxnNdyJMHQPZwdvV99ow==
X-Received: by 2002:ac2:5a44:0:b0:4a2:5c3d:d68c with SMTP id r4-20020ac25a44000000b004a25c3dd68cmr39450lfn.347.1665065220826;
        Thu, 06 Oct 2022 07:07:00 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z3-20020a056512370300b004a2386b8ce8sm1833929lfr.211.2022.10.06.07.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:07:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 14/34] dt-bindings: pinctrl: qcom,sm8350: drop ref to pinctrl.yaml
Date:   Thu,  6 Oct 2022 16:06:17 +0200
Message-Id: <20221006140637.246665-15-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
References: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
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

The binding references common Qualcomm TLMM pin controller schema, which
references pinctrl.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,sm8350-pinctrl.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8350-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8350-pinctrl.yaml
index 6ae5571f60da..1c0186050dcc 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8350-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8350-pinctrl.yaml
@@ -14,7 +14,6 @@ description: |
   in the SM8350 platform.
 
 allOf:
-  - $ref: "pinctrl.yaml#"
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
-- 
2.34.1

