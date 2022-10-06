Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFDFC5F66E1
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 14:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231790AbiJFMuy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 08:50:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231740AbiJFMuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 08:50:20 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D56E4A50DA
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 05:48:20 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id bu25so2557736lfb.3
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 05:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=/EE1Ip8I+ofqDBVJqXho2Z/r0isQpGAos6HBYPM6Nis=;
        b=cUTFviL34cqGc/X2o4VkCi7T9e6Qf86CPkkX3daR1ENPwefXS0rY+jaMY2zBFRChPz
         MWYhX1SReZ00V9GH0/cXBacnFCtdrd00dAScXNXb6lS7VBngEUPqdd2W8fXBK1dD6+Ck
         Z7b/N6ImxOUVBb1QJu8VmlNh5A8xOOa7xVpnIiImxexumD6wyKIM0I7l12vSPbIc/uLX
         K8hsWFlmxwEe1lleb/Qkmtd7PQCXzKqi2Lm/l87c9Hehwb4xGBcRZdm+LOlKH2ImmF+m
         aRL65CSBfVXISa/IyJ9IFtv9bV5q5+bzHSmbHOZQFrlpZYrirCn32/8JiH5ESlXuu4D+
         OhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=/EE1Ip8I+ofqDBVJqXho2Z/r0isQpGAos6HBYPM6Nis=;
        b=EqZAyytxKpwTp0TARhsw14czxu0X4BtV/dcUJFEvIYajI15w5aQP/xPovj7cbDJf4b
         FJWaUM4EKSz1DI5uAOeoClDdp51XgpYzWZqKvIjFmQOW3t6pOnL6cXuAuOXfMZ8FBitx
         Nb3VZ8eQOpehZPZdh5KILVbzTRxMNMyN6fA+XH02hw9EK2vsBWY43N/+zGEhw4a7vGtk
         RlGoU8QArpeINUIvUGlVJSLvBXbVysKxwQk+E5U3eKYSzcwRcUXFv8gc4nq/T6+N3Uk+
         12YP3R5+HgBTlSyRhC5Xvmlcin7ZhBbceiZXEfnykphQ4asFZ8JB+TF8EUXkA6YdjRxb
         vadw==
X-Gm-Message-State: ACrzQf1Yjg1u5DhGiB9Avril4i9UusZ2+g5+rpyEyxt572FgGx2kxA81
        NhisYwMTC/h4jRp5SR9N+rdN0Q==
X-Google-Smtp-Source: AMsMyM5QdUCRf1dx57oNE0IpLCbEpeqWOA3YeMPuLuwB73SLXGQpFF28XyOQrYeamDNU8b+Q9+PE+g==
X-Received: by 2002:a19:5047:0:b0:4a2:5c53:8b5d with SMTP id z7-20020a195047000000b004a25c538b5dmr1917545lfj.453.1665060461734;
        Thu, 06 Oct 2022 05:47:41 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id br32-20020a056512402000b00497a3e2a191sm2687659lfb.112.2022.10.06.05.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 05:47:41 -0700 (PDT)
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
Subject: [PATCH v4 34/34] dt-bindings: pinctrl: qcom,sc8280xp: fix indentation in example (remaining piece)
Date:   Thu,  6 Oct 2022 14:46:59 +0200
Message-Id: <20221006124659.217540-35-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006124659.217540-1-krzysztof.kozlowski@linaro.org>
References: <20221006124659.217540-1-krzysztof.kozlowski@linaro.org>
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

Bindings example should be indented with 4-spaces.  Previous adjustment
missefd one spot.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/qcom,sc8280xp-pinctrl.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-pinctrl.yaml
index b9ab130cd558..0b251caaebf2 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-pinctrl.yaml
@@ -139,8 +139,8 @@ examples:
         gpio-ranges = <&tlmm 0 0 230>;
 
         gpio-wo-subnode-state {
-                pins = "gpio1";
-                function = "gpio";
+            pins = "gpio1";
+            function = "gpio";
         };
 
         uart-w-subnodes-state {
-- 
2.34.1

