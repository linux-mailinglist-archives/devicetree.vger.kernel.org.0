Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73DCC7323CF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 01:46:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240079AbjFOXq0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 19:46:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbjFOXqZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 19:46:25 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBBBD2D45
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:46:20 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b349703e90so575441fa.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686872779; x=1689464779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SbdXjGGYla4F0pPJ42Y59vJ6FZ0EYdukkWCDyraTvpI=;
        b=T32E3Xbo9exkv3Fed/IcEq1xalB3XCXZumvyj+C9hv5vrhdIkfxb4H/YGo2D9bmomq
         Z467tN2ycoJl6Wh/5IWm+y2BzztFinMh07PlCHpqovew/X1gSIK8VJnAqqjkVVcOYPEQ
         GNzvZgxtwxHNWrpRzNlafA6fQtAq/sSoMLXi9PKBzFrZIq0qsx65v1sqFGPCJGpi2/wE
         yliuNUWogskVJnQDXHEgFoWNQW9eB0f7ADwmmpPdM/gXumBHByoT7WP7IoDVKDRuGVpw
         JGKlpyMr6Onx2WEDosSn1mZamiKidzWME3+7hgr/HlVsCn1wdan8XeJkC3Ta/kWN0/H4
         grmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686872779; x=1689464779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SbdXjGGYla4F0pPJ42Y59vJ6FZ0EYdukkWCDyraTvpI=;
        b=UalMjNt9gEoryq78p5UQn9rShImVSaQ51M4zg1DxQrUdzLWEi4s5eIepLyBjynvOHc
         Y8LnxwF7PrJY2fLD/Zl77IPNfso2cM8WIN2oXxdyQ9Z8+hVGx5yFc8qL8Z0bD7cRi4/n
         dHu799XTulMXYm6IvxpPPtuRp5NVu1m4HX88kWHrhkB5DUBW00mGQjgZr9zKQdHNizSe
         Al0/5XLakW4nlGaNEWgt6wLXxpzCge9tlGBFOKyb2ZuQkuA5h6D73t5FZTM3DN51xitp
         6K4CJg0y6IraoGAfAbe8n1W9y7dMlsSoQBcJbZjfRqU+lOcZ3IO3at7Tkr3Tx20JYqrg
         72Gw==
X-Gm-Message-State: AC+VfDzpAD8SN3GStp2kJagQj7WC1XxV0jrdYm2glCFFqSBCBuo0whjh
        iSaNzpZmXilBjPW39z0CAfweMg==
X-Google-Smtp-Source: ACHHUZ7WQOPqyZ1IAUTwJ047pFSSwcdmzCfJvw2uS0b7L0ucKsWGS3NwZ5tWEYPZYQPvWFoA6sVQ4g==
X-Received: by 2002:a2e:9083:0:b0:2b1:af36:93d9 with SMTP id l3-20020a2e9083000000b002b1af3693d9mr532454ljg.26.1686872779071;
        Thu, 15 Jun 2023 16:46:19 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id y16-20020a05651c021000b002ac82a995fcsm3344596ljn.23.2023.06.15.16.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 16:46:18 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 16 Jun 2023 01:46:09 +0200
Subject: [PATCH 1/2] dt-bindings: interconnect: qcom,bwmon: Document SC7180
 BWMONs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230616-topic-sc7180_bwmons-v1-1-4ddb96f9a6cd@linaro.org>
References: <20230616-topic-sc7180_bwmons-v1-0-4ddb96f9a6cd@linaro.org>
In-Reply-To: <20230616-topic-sc7180_bwmons-v1-0-4ddb96f9a6cd@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686872776; l=1253;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9Ia/HdtpIFxRb4vkGgGEIUMHoYeDyZM3fazS/Ch4LyQ=;
 b=njNKy2Hyd3DMkIqVyxCfLljekbLcVjBUovQJEyMqlca7fTcHS+DnMZ7eSNE2NP/O/Cbezs1ws
 8bBskoFpsVUBItgKuqlO+EkCegJqryIeVDsccqfsn/povFC3H2D9Jxx
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SC7180 - just like SC7280 - has a BWMONv4 for CPU-LLCC and a BWMONv5
for DDR-LLCC paths. Document them.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
index 5d17bdcfdf70..b63db9098345 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
@@ -25,6 +25,7 @@ properties:
       - const: qcom,msm8998-bwmon       # BWMON v4
       - items:
           - enum:
+              - qcom,sc7180-cpu-bwmon
               - qcom,sc7280-cpu-bwmon
               - qcom,sc8280xp-cpu-bwmon
               - qcom,sdm845-cpu-bwmon
@@ -32,6 +33,7 @@ properties:
           - const: qcom,sdm845-bwmon    # BWMON v4, unified register space
       - items:
           - enum:
+              - qcom,sc7180-llcc-bwmon
               - qcom,sc8280xp-llcc-bwmon
               - qcom,sm8550-llcc-bwmon
           - const: qcom,sc7280-llcc-bwmon

-- 
2.41.0

