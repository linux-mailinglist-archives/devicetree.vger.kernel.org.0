Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4734C686A55
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:30:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232030AbjBAPao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:30:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232252AbjBAPam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:30:42 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39AE6568A9
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:30:40 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so1758958wms.1
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 07:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WH+iUmIlo2XKkyypu6pZsAFZkWM7iFUcewJRIDKO1d4=;
        b=xX17LUu7zIquaQYDFEWVDKtj2+WtV7/jLMsW1kqBic3wbtghZjjui/ynhyF3wtQPSI
         pfoxxc4rWVui+pKWjN0oNsfMp7TZ9sseQzW1+kaKoZGxLDfXvTw+3ip728K8ZZjDin5j
         oRtDYt4sdw4BAfCfpN6JQ/FaBQ9H1kFjNv4O+MorIoRplgeJltM3wrrLXXxT9/tUs5ZY
         RdRfZh+JoFv6mbRBR0prkJG1znxy2mkT5oTSyFY7bDmEhmg0CP2Y/8RnBu6rEnNyxkiR
         OBAh4qj+3DN+LdCSwy6uoyFZ8lA9Y3XY/i3jXktIS25bi48t39B9vjLJIrlEew9HBpSt
         hzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WH+iUmIlo2XKkyypu6pZsAFZkWM7iFUcewJRIDKO1d4=;
        b=jGoLuqyGFMqHp4bGF6zxE/21aX41HkAVkNT3A/zN/6HhWxyDjk/4Sl96xZsd86+rLy
         Xj0m7u0k2MIj5B2S9bnzWkT6NcWhE5RA0WfnTsHUPq3cXzANCM/DU4DTCgnDyA27Yn6b
         E/a/5hbqvcilbTrh1pe3UMe15b4w1TozP3/nOYcdWcwo4368REzachFFfsPWVNFDsuvS
         vgxOKnt8O1eegvWJ4VqiRatXHZ8nmlXgwQj79qGcOoqDW+1RHFlaeaL9lAte8AFnGwD6
         gO+1k3bUXKZ68TaYb1UG2ng4DXpjB7yfpbRkP7wCPUBidCiDcz7OPmgcs8Pm0hwoyZXn
         F58A==
X-Gm-Message-State: AO0yUKXT9K+fu/UN94I7qDfrp30kMPjmClmV0L1pjEx6Wv9SmxUPSbtg
        5icXIfdXboxOBVW35GY3koYK6g==
X-Google-Smtp-Source: AK7set+IbENSgbstOVm1CmZtL/Fq/QDzb8Il1Q0rgl/gjJaCNAPGHeuA68irXOg3s8F0+bAHD3YWeQ==
X-Received: by 2002:a05:600c:1c1f:b0:3dc:5e21:8aa2 with SMTP id j31-20020a05600c1c1f00b003dc5e218aa2mr2486712wms.34.1675265438715;
        Wed, 01 Feb 2023 07:30:38 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p11-20020a1c544b000000b003dc4fd6e624sm2168032wmi.19.2023.02.01.07.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:30:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Richard Acayan <mailingradian@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Martin Botka <martin.botka@somainline.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/7] dt-bindings: pinctrl: qcom,msm8953: correct GPIO name pattern
Date:   Wed,  1 Feb 2023 16:30:16 +0100
Message-Id: <20230201153019.269718-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201153019.269718-1-krzysztof.kozlowski@linaro.org>
References: <20230201153019.269718-1-krzysztof.kozlowski@linaro.org>
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

The MSM8953 TLMM pin controller has GPIOs 0-141, so narrow the pattern.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
index 6bcd52080801..ce219827ccc8 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
@@ -53,7 +53,7 @@ $defs:
           subnode.
         items:
           oneOf:
-            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-7][0-9])$"
+            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-3][0-9]|14[01])$"
             - enum: [ sdc1_clk, sdc1_cmd, sdc1_data, sdc1_rclk, sdc2_clk,
                       sdc2_cmd, sdc2_data, qdsd_clk, qdsd_cmd, qdsd_data0,
                       qdsd_data1, qdsd_data2, qdsd_data3 ]
-- 
2.34.1

