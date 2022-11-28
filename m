Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0330E63A85A
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 13:28:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230462AbiK1M2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 07:28:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230154AbiK1M2m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 07:28:42 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9BB6EE0F
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 04:28:41 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bs21so16544410wrb.4
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 04:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=202AXBoRVRqqYasC07iMQKFObsXHIxNlcvK9BINa1mE=;
        b=TUdw7FU64GJ2KM+uplvmHJRQ675Z0VN2u06et25BAWh5wh3e0SdJ34YWWGXDuB6/lQ
         KEIyezGWHxCW8I6G+0PYcm8Tuq42/Jfgup2XVeWkxRwLmJnbagsYQToc3YAunjbjVeEf
         fwQ7O1oQ6v0QBQ2b0834/HSbdGXaP3C75+l58HbbQe8GNAIEzeYtn8qIYSpZlvF81LmS
         EUEHLgPy38tBVKtgtJAd9nkGzvahY1TwmP7czks/g5l9QQjYI9yWzLu2eX8I5UbWpHZ4
         bcFfSIJZpY+pcKJhJZh2G+ykT/43gT8rPRbruzUYQfGVxCaATwtXtOJGeA5pE3ZiZ30R
         o4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=202AXBoRVRqqYasC07iMQKFObsXHIxNlcvK9BINa1mE=;
        b=VMz8WwlVwMJEYKHLqvZk22tEVHXQe2cYxGKD3gjp2IIBjUqcoqXZU/vYWCOTYCZnUL
         UfuGw08BacinSP84vS/ZptAkQthJBOhra1O4Q9GXvhBNRWdPkZNJUSUeQqE0GwL46Mmk
         D2y724jte+njGPcKcE65okBE9ej2CFKyyJAds9jrpZbbpqBN7/oKrJBhpJpDs0TrQj2q
         aIQOFT8kfbdiVSzG4xp3589cIO9JIOuuYaBIVkCW3QEFATKMIMvXkvypvVkYxDcAcGtK
         VfKemfimAPxEs16kAX8nnWejs7ZVeogLILwvUF8iXDtBAxa4oFzlUSQn1LEmvUzYgAQ5
         5yxA==
X-Gm-Message-State: ANoB5pmzHCkUzzfyeT51+zgeQGHb6e6jHPMwWsVJi9F81g8U1UXQCI/m
        pfVzRC9pvrIgAL9v3YXXzjG1jg==
X-Google-Smtp-Source: AA0mqf4PnUak2v5Q6xHPwGeeS3SPHYDYWtuVmJpkOah1l+RVRf11k6aj0Bfg9CvUtck+vBqyKVdTrg==
X-Received: by 2002:adf:ebcf:0:b0:22e:3275:983e with SMTP id v15-20020adfebcf000000b0022e3275983emr31919257wrn.71.1669638521223;
        Mon, 28 Nov 2022 04:28:41 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id u18-20020adfdd52000000b002421db5f279sm598405wrm.78.2022.11.28.04.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 04:28:40 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 6/9] dt-bindings: clock: Add RPMHCC for SM8550
Date:   Mon, 28 Nov 2022 14:28:17 +0200
Message-Id: <20221128122820.798610-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128122820.798610-1-abel.vesa@linaro.org>
References: <20221128122820.798610-1-abel.vesa@linaro.org>
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

Add bindings and update documentation for clock rpmh driver on SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 437a34b930e3..d465dd691107 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,sm8250-rpmh-clk
       - qcom,sm8350-rpmh-clk
       - qcom,sm8450-rpmh-clk
+      - qcom,sm8550-rpmh-clk
 
   clocks:
     maxItems: 1
-- 
2.34.1

