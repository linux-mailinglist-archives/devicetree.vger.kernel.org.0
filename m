Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D32165C776
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 20:27:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238863AbjACT0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 14:26:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239039AbjACT0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 14:26:00 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 839DF15F27
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 11:24:11 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso24358143wmb.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 11:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AC7xaypPibvzJOcPS3LFlREzrhHc51KAqqlF1uf2uTY=;
        b=d7ajR2Alr5X2wqmACbKstggnV32tdaqHcARBUg1uBx/Q+YRk9qvReJGa8dB3RDnTvc
         4G3AcAQORXUyI5VO2xaqJtoQaYwOfVmz+b0kZHvMMfLivgWcMkIQBeemqCHLt5rHf4h+
         OwGj/pMlL8f6sQPDjwbW8dpDj+4QYh5A33bn0yHudEuSuAW1CH41shXcr07Ua6R1Lp1T
         XKO2L90Opf0bN5PNby8i3xPoOchmYo6YlsuVAN34aJ1u9qeH9323ttiq0OXmkGtZmRgi
         Y1DV1z5B5P0041bMRSYIHFAeKLfPWQWNBQaNM7dGKQvu4jIS34kWz8q0w3B4UXImzq3g
         tb/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AC7xaypPibvzJOcPS3LFlREzrhHc51KAqqlF1uf2uTY=;
        b=3UFZ0puOQ4ZBMWWv9NO7UnVtaNhVFmWt0ETLMhIPDCYeqgBq8NczYXH/2YFRIlLOf2
         nDQ43PbVGoRMkzlgOGa3O373no224fU5v6vwCHmJeJB1YR59dggOCUcb2CIg9Zx3dfuH
         Tw7ua1G6ffoZb6j9oQy52N4OJ7uQ1FT5iaZwty7Viq4XOCUMhDEhLG3hfoHVPpIpw3xl
         HEDHTa02ZCawLGz+9s2/GOpbgF5HNoabeOW5HgSUO8a7ggQmv58sSm0NSSkbPDXUfJ72
         fGYmwhJM/M28nataaYDNF95knWPEwB4BwjUfjGVF4p7wY1InaJmgUSxjiJLEhuvlvZTa
         /OTg==
X-Gm-Message-State: AFqh2krA/9dgot/Dt4gCI4EwgQEy3CFDwzI/rsvo6wF6Cufg2dcTwoS3
        SD2RwG+XcPlaLieTUqhG0BDwNw==
X-Google-Smtp-Source: AMrXdXt7f1MuH6TCbsWh8bb+QHK2GsGaVmkzehB0jLTRKEoWCuIWrMXD/VQ2jAaDLdVcBxzuwRKaAQ==
X-Received: by 2002:a7b:c449:0:b0:3d1:e1f4:21dc with SMTP id l9-20020a7bc449000000b003d1e1f421dcmr32261409wmi.14.1672773850108;
        Tue, 03 Jan 2023 11:24:10 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l42-20020a05600c1d2a00b003cfbbd54178sm70803660wms.2.2023.01.03.11.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:24:09 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 2/4] dt-bindings: clock: Add RPMHCC for SM8550
Date:   Tue,  3 Jan 2023 21:21:56 +0200
Message-Id: <20230103192158.1155197-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103192158.1155197-1-abel.vesa@linaro.org>
References: <20230103192158.1155197-1-abel.vesa@linaro.org>
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

Add bindings and update documentation for clock rpmh driver on SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index cf25ba0419e2..6d7d699aaff9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -31,6 +31,7 @@ properties:
       - qcom,sm8250-rpmh-clk
       - qcom,sm8350-rpmh-clk
       - qcom,sm8450-rpmh-clk
+      - qcom,sm8550-rpmh-clk
 
   clocks:
     maxItems: 1
-- 
2.34.1

