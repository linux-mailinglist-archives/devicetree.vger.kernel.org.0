Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6057785F72
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 20:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238082AbjHWSRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 14:17:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235267AbjHWSRz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 14:17:55 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3731610DF
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 11:17:31 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50098cc8967so1255507e87.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 11:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692814649; x=1693419449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eDia3iie2HSwMQvJ4KMWyAy1RoMirRHHmpdoeUjpUSI=;
        b=Uyoq0AL1unYJXps1XfrgSHRWLHYYs2FzDXtJA8OxU6C8yBa0/r9SyGU9ctt+ClIHzj
         l3JATABbLH67McV8lq/RKvLaHL/xbPYYo6nP4pin1skD50cOkVsTujrUELAOon5mABOs
         ZvGI4Kig9SBk/g7Rqo+GdAfgeYZW7UfCCLAK1DZ76Yl/Jdjh90a/kNThnOS/GMAvCTpd
         kZDH/+gV2OL+F8yzLQzsukBlfMOgFjSUzQRIAlp0fzlMqzpwmov0VGScucf35lUnE5AD
         LgyT8zs/iVk92vsPBjXYMGccEX0not8bzGd/bqlk0U5FSrA0zEQW1AiJZKX2fOD1PSCX
         kfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692814649; x=1693419449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eDia3iie2HSwMQvJ4KMWyAy1RoMirRHHmpdoeUjpUSI=;
        b=ctWpg5EUyb+ra++vJDFydZ3PcHKo8fcqq0gaoNn3Rj5dFtNk3chBamWmQgGKAhQAgJ
         uNKzDhwCvUISJIIjydaCetNIrgH/DmlzuiJOJxCuLtYacOGA81qbcnYLdyUI4fKOjMa2
         fWbWeazp8HXd6TD6vD4zzeSjgbz3Pi3pytSWpFILjrzj9Ual704GrDbOXWvgLF/vE/8p
         /95DWXfsJrcxqkOL6zXWtPqJ0uOCzV8UcAnseBLpfvfGzX7wvwfk8t8HNiYSydjqv8kB
         Vxu7/U26QGOhAD0W3+DRu7m5BQDbV4+i86CfU3/wf6ssjtmSmvOTlCQj+e6m8FwC9uy/
         YAQA==
X-Gm-Message-State: AOJu0YwNaDSt4zo8TD0DAnXBZfjPHk/lXoLx2fStIM3Gbnw6vE7bkd/8
        E/yKwH6/hvIupXIEIfd32It4JA==
X-Google-Smtp-Source: AGHT+IEenG3z/6GMxwEtRPoa2twbxcb6CX+RlbfKh8sY8DkAkgVxBF9CMXi3Dur14aXR/4xhvmESsA==
X-Received: by 2002:ac2:4f16:0:b0:4fb:76f7:fde9 with SMTP id k22-20020ac24f16000000b004fb76f7fde9mr9885618lfr.30.1692814649217;
        Wed, 23 Aug 2023 11:17:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n3-20020a195503000000b0050096cc3bbbsm339308lfe.297.2023.08.23.11.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:17:28 -0700 (PDT)
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
Subject: [PATCH] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning regarding reg size
Date:   Wed, 23 Aug 2023 21:17:28 +0300
Message-Id: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the 'reg is too long' warning caused by me adding 64-bit address and
size to the example, while default being 32-bit (cell size equal to 1).

Reported-by: Rob Herring <robh+dt@kernel.org>
Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 5073007267ad..634cec5d57ea 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -70,7 +70,7 @@ examples:
 
     phy@84000 {
         compatible = "qcom,ipq6018-qmp-pcie-phy";
-        reg = <0x0 0x00084000 0x0 0x1000>;
+        reg = <0x00084000 0x1000>;
 
         clocks = <&gcc GCC_PCIE0_AUX_CLK>,
                  <&gcc GCC_PCIE0_AHB_CLK>,
-- 
2.39.2

