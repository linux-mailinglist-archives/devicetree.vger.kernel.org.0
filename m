Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 748E3781E1F
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbjHTOZW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231193AbjHTOZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:20 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F26542D57
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-500760b296aso976628e87.0
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541239; x=1693146039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4488m6ufnvtM6zRq68XhiwvCa3j4jdkHB6b+QarVIdU=;
        b=py+8OFRfNn+Ad+h3h6owoGpJSDcn4RvSVa4NG0LkY8I5UY5/ZNz5ZT+AmuZrLsT2xq
         DJcuyqmIkMSaat8prbWCpTCVIezIcXPCD477tW8jO+ms0IaaNmjwSQfazMdY2R0uobY8
         gwOJ8HpbxHz6LnDDiHInxo2b34HqFdpuQT6b0jlyf4Nb+JHB5Y1HTkAFcSPxjKblHdp1
         ERPcu0VWOCbaLMMu9b+LtdcGb0N6JM8GPOmgwnutawFIdvYU+kN6dR+0r7pAl1rfP61Y
         qKHhza7XqpSO57PF0KuvdNTDOc06NIpMua8VxMOrGhkO0DhwmStB6BQvPaMC55cAArrK
         9JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541239; x=1693146039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4488m6ufnvtM6zRq68XhiwvCa3j4jdkHB6b+QarVIdU=;
        b=UYXKsRUcA72OVmF0mGS4m71oEI3B/l8A0kLTkd8DfPyTPzOyQIlXpUUuCD1p9Y/q0t
         yMpoS0mXUfm+bnq8tR4lSm6nJ7JCeuKHPebr3RPPtS04+92fUYKu0hXyBGgFIIVdRi4G
         LwGVDYJdf8cZUHnhz+XZjONbmKcgFq9n3mCRxrf4Ct8QcNWIl8BYs+0LZaYS2oCAfIyz
         e6YwJJP7whA2T+pMP5+eZDLFRA8R3TDvksBqeaOviVbR9iWQE4rPZfgjVT7NArjS4QEJ
         k1CYz7fHmdetV2WgmhVHEKOP1i88PCmNjX+DjwD7AN70z8PyTFKm8jDBONTZzjIxSSVL
         2GGw==
X-Gm-Message-State: AOJu0YxXLrlSfQbeOU94eX1zDKYOCiDhxoQxS0KVGp13NEL3FhdraHoo
        yqgx+2lhejR8jPTMyuIKY5zr9w==
X-Google-Smtp-Source: AGHT+IEx6VzILDtjRdmPOG+verwboLyFzC4EI4/m0ODbpxUdRrKZKtHDg3l4yHhmoqB63xPrWHO0Yg==
X-Received: by 2002:a05:6512:3ba4:b0:4fd:f0b7:d1f8 with SMTP id g36-20020a0565123ba400b004fdf0b7d1f8mr1437444lfv.23.1692541239176;
        Sun, 20 Aug 2023 07:20:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:38 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 02/18] dt-bindings: phy: qcom,qmp-pcie: describe SM8150 PCIe PHYs
Date:   Sun, 20 Aug 2023 17:20:19 +0300
Message-Id: <20230820142035.89903-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Descrbie two PCIe PHYs found on the Qualcomm SM8150 platform, single
lane and two lanes Gen3 PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 82e30e75a2ee..2c3d6553a7ba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -26,6 +26,8 @@ properties:
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx65-qmp-gen4x2-pcie-phy
+      - qcom,sm8150-qmp-gen3x1-pcie-phy
+      - qcom,sm8150-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-gen3x1-pcie-phy
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
@@ -135,6 +137,8 @@ allOf:
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
+              - qcom,sm8150-qmp-gen3x1-pcie-phy
+              - qcom,sm8150-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
-- 
2.39.2

