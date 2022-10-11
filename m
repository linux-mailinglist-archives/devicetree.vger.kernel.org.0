Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BCB25FB94C
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 19:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbiJKR0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 13:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230160AbiJKR0d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 13:26:33 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87D182B639
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:23 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id i12so9394871qvs.2
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZG23OJFESle1WZ+e8plo2f6zcFDst368T6AYWK8+kd8=;
        b=vjCqEPYYGHsANzBJ7JuNAsWUe7brEZK99OFoWT451dehatP0ejn26MyTERi4ORM5aM
         +b6XmKMCxdSF1QZGutqA9rg7jU6FVndhSAGT/TBQZWRrb2DnZczL+s2th59hLefQuqpG
         +JuHzOTzRAp0I929v3JAoG/i1JX/Mj5yVW+nsBxCeUSyNz/wnYMhNcJHYySBFTcVxwWg
         nScHufaZTSi2m2l4nXADJTWzcMqCPwO4tRkeeV1ASNFOtRelSGHq0ZGVn7J165FpufHE
         H1rM5UAa5cMBUg7iGzRPH5xcmtT4XLNgRqMh9UcKsLgqkWhA4bi+PZtrnIN39P9HFzms
         K2tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZG23OJFESle1WZ+e8plo2f6zcFDst368T6AYWK8+kd8=;
        b=p7pOik082eVF+U0lcQat7+ysxB3f7GaCKzHlkIgVdH5o/P6gLjMzQknXl70oJJ+oH/
         JqxwTCEvuvByb49R0tvmjjDR6uVYKthBWexJW8uA/IE0GIcQRhyMh7pV3pjV/U/lX730
         P/2PMbKkxsgpFBeoL4Y3fOT4RnnRnwAzNLCg9zrpzkLEcFC0Ny1f+QJj0AQ9/pMESnHq
         2Jt2fLZALSnyL7ilutUSqwWEDB1xiCamAnhkDsl1qrlnWmW8hxdI8+PO7jDa5+Jw9AEO
         42kjS0TZN5a88nHSnaqSvoVlEU5vDhIDBxlhhsDLGdPPaSXx+lQLq+em2qoBS3urHNpP
         nFww==
X-Gm-Message-State: ACrzQf1FXAf7aKLgiuHrZIyOpkjSZVVWTfd0NLT9yooVqFJRRUNZyIaa
        g4Yut1ZqGZmhdF/78sdaWUdq4w==
X-Google-Smtp-Source: AMsMyM40+YR8KtkvaTkbFMkLL6gpxyvfHnGF7EAA239uwmdpxrQA23vZ6KH2mR3Nrf9qwj+pbQXhAQ==
X-Received: by 2002:ad4:5dea:0:b0:4b2:e813:7c35 with SMTP id jn10-20020ad45dea000000b004b2e8137c35mr18897288qvb.74.1665509181934;
        Tue, 11 Oct 2022 10:26:21 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id i14-20020a05620a248e00b006bba46e5eeasm14289087qkn.37.2022.10.11.10.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 10:26:21 -0700 (PDT)
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
Subject: [PATCH v2 11/34] dt-bindings: pinctrl: qcom,sm6375-tlmm: drop ref to pinctrl.yaml
Date:   Tue, 11 Oct 2022 13:23:35 -0400
Message-Id: <20221011172358.69043-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
References: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
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

