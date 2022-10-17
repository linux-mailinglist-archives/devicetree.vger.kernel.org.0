Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3179A601CE5
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 01:01:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbiJQXBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 19:01:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231147AbiJQXBM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 19:01:12 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E466382D17
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:00:56 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id s3so8712562qtn.12
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZG23OJFESle1WZ+e8plo2f6zcFDst368T6AYWK8+kd8=;
        b=SS2wMsURhZstrJhaKcUznjPKXU/sH/2gih8+lAly9He0zLM1zNubv03HTuTE6cbQFA
         ooTocGOcmFCU/rv9Bm7e32HQIEkRrmlCYf90Baz4US+uZyeIgVbG2qD/RJ9E+kiitUX0
         FXCv3Jh0nS76GhWau/8dKO27f23/9ZxH41UnqQY5Fm45Ty0W3N2LjIMebBpq1E3RfAqg
         6vG+kmijr8YlFFDyh9DBxkQtzvc803pevhHyKHnSy8zvZcgXZpPS6mW0OB96KLvyhKa9
         ZjxgDbEsEfy1xUTxJmCVwHCjt4dF7GN1yWZwnCQM16gXQx9HrTW6DsR40lMWv/87fcnA
         xmtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZG23OJFESle1WZ+e8plo2f6zcFDst368T6AYWK8+kd8=;
        b=EuPegKfG3H2Tf3KJ4qKtdKM6BBgkNyS36hYVcwYlzeKmwW0wL6bHD+TtWiYmf16O+Z
         LaSEJx4EPy9XKrXMoBXIsps7T8Kmez0JNTyFqoY80a55ndR1cWYxfMvnXRCLeICx7zBt
         nkZin1LB6hG6xRLd1gfEkNRMV5aUax9dyPkRVsOgwZOXYgBdSAEKGDclVH6kWlYOHLtH
         vQtBIB76dE6BSZLevFAS2nlnftjCwvbV2jB5H4S7/AqJoHoIu4G1o/PyGl2wE2wbC6rl
         2UTyZHToacYY/BjLmUvoAG3UoEdhm+Wp01Gu9M/YDCog8PmqrmhsR0iHihhtFZltaN5M
         Ns8g==
X-Gm-Message-State: ACrzQf1mCOX8grvbG70ZIr9TAFERH4Id+ivjtEcH4ajVsFq7nXE026Mx
        Gf3yI4WkaXt0qYtE0TcMdrEcaQ==
X-Google-Smtp-Source: AMsMyM4rUZczzrxn1XR/MefRP+3LSsJPsjN5WpG603CXP4caGFmkCkQCYAtn3D+9NJxM7etDajlycA==
X-Received: by 2002:ac8:5e52:0:b0:398:d206:bbb3 with SMTP id i18-20020ac85e52000000b00398d206bbb3mr11048349qtx.656.1666047656093;
        Mon, 17 Oct 2022 16:00:56 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id fg11-20020a05622a580b00b0039cb9b6c390sm729670qtb.79.2022.10.17.16.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 16:00:55 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 10/33] dt-bindings: pinctrl: qcom,sm6375-tlmm: drop ref to pinctrl.yaml
Date:   Mon, 17 Oct 2022 18:59:49 -0400
Message-Id: <20221017230012.47878-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221017230012.47878-1-krzysztof.kozlowski@linaro.org>
References: <20221017230012.47878-1-krzysztof.kozlowski@linaro.org>
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
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/pinctrl/qcom,sm6375-tlmm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6375-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6375-tlmm.yaml
index 025faf87d147..8320e5ff17b9 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6375-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6375-tlmm.yaml
@@ -14,7 +14,6 @@ description: |
   in the SM6375 platform.
 
 allOf:
-  - $ref: "pinctrl.yaml#"
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
-- 
2.34.1

