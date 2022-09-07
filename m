Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 205EA5B0E58
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 22:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbiIGUmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 16:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbiIGUmL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 16:42:11 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C4DC0B66
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 13:42:10 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id b21so2844480plz.7
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 13:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Xh74ejLlLEAWOdV0hZmMh+jTrzhuMfjdJB0KFcDL2u4=;
        b=K24sN8TEspJ42MBO+FAj5c8uDUAZ4qDZZHnzGUnM61Tkro/+7KOktAKz8m6RSRAy9B
         UGj4fEM3/fGIqeYvZlhjHfZfVsbPvkMJiUtDC6v91LmuH3uWNYafFbOhl2iUI/KCuhPS
         D4nTgtwgRDGPg+cacP2F11Iyeo/ZuLVlurJJDUFTpSvX/y+vTk8AWSxeTgPd/cRcShvG
         Zf44lMUA6sykFYzoX5gxfZm55YLBuendUfa7NSxLPMqSYj3BlecMIQ/+0rhRzBh2TUJp
         ltk0IDL2arS9HJk3aOuV5uIgZNm5Yoj2O+b6qp4YlwXXyq0XaoMgohvyO2TdrZMcY9xn
         wSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Xh74ejLlLEAWOdV0hZmMh+jTrzhuMfjdJB0KFcDL2u4=;
        b=xThM3G4dHoNRTkiif9Wo0lpYEe6OYgYMetGHGWh6yrjn0v/yVTZ+ftRR/UYtulBr/8
         JJosHYygkmGrSiVsyo1Cs+XoE5wOR9+3HdnPAxNSeBZ6mWGoYULy0vVaTuRl9tq6eQn9
         1flTFz0HOgYX1utIVY/50PD/TcM00DGFXji1nxIxCqeKbhfnQ7XxZiYdZg/QdXkahZF/
         EDxVkmdKrRG+Fpb0+uwrpRKMiLV6nH/NLjXcjuMOte+xc0BZ9kTqKGh4PPoP0UFmUZW9
         UCsPcrlawJD5pZZJg4hKzFsYMFwMcY1tj8Cw14omCEO/SMLSv4ObTIARVzdfI9q5Busn
         ktEw==
X-Gm-Message-State: ACgBeo1LSEhJ5raHF0ZiuC0eJIPKvnJu1zseBmTmgNP5YuxPPIZkNK88
        eVjrHMkP4bNt8cETU5cFXcn1ToFk3YcU3A==
X-Google-Smtp-Source: AA6agR7fA6higAb1yx86KfuRz/6mWA9VNwke8aQ1DUHCBfVMOnBcAQ/ET69cSvIPbYAwiaso3nG9IA==
X-Received: by 2002:a17:903:54:b0:176:cdf8:b791 with SMTP id l20-20020a170903005400b00176cdf8b791mr5455744pla.24.1662583330352;
        Wed, 07 Sep 2022 13:42:10 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:5362:9d7f:2354:1d0a:78e3])
        by smtp.gmail.com with ESMTPSA id y1-20020a62ce01000000b0053e5ff3eb63sm2841170pfg.213.2022.09.07.13.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 13:42:10 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Miller <davem@davemloft.net>
Subject: [PATCH] arm64: dts: qcom: sa8155p-adp: Remove unused properties from eth node
Date:   Thu,  8 Sep 2022 02:11:53 +0530
Message-Id: <20220907204153.2039776-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'snps,ptp-ref-clk-rate' and 'snps,ptp-req-clk-rate' properties
are not supported by the stmmac driver currently, so remove
them from the sa8155p-adp ethernet node as well.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: David Miller <davem@davemloft.net>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index ba547ca9fc6b..87ab0e1ecd16 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -333,9 +333,6 @@ &ethernet {
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 11000 70000>;
 
-	snps,ptp-ref-clk-rate = <250000000>;
-	snps,ptp-req-clk-rate = <96000000>;
-
 	snps,mtl-rx-config = <&mtl_rx_setup>;
 	snps,mtl-tx-config = <&mtl_tx_setup>;
 
-- 
2.37.1

