Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFC2B74EDB0
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:09:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231496AbjGKMJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231603AbjGKMJn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:09:43 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 875311984
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:09:23 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fbcbf4375dso6736190e87.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Cck4XETjwSxqYBSp799LRzvkKqEbdU7ORZEtnCC1/c=;
        b=A99KZOZdmI4iCTlcQZ3uh2cAHanZrl4ypaBB565nQSSw7wopCx4almq665/PcEYXDA
         ZSVsRRBSsiWgrx48ayn5qAgfalZwvZ65lyUYvydiwsZGrGTmnCu+l9gaqb2hLs35Mcu+
         wvOYwb+wbsxNVCc09isGmSWx+W6OtR80pcNULHQlnyZGSbgerRqZHNpLg9r7ugr/Xp4o
         d2wZewJwxcqYgDQSurnefLP02/O4oEFVX1dpDNPjw/Q7lyAS2UWWwqMuB42ZYNIm0Gkc
         BGenKsFJB0hnwdsqo4ugZx7lqPsbo2zyYpqu9fBz8BIXsAZoDXV1DfL61PlNKwysyBz4
         U0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Cck4XETjwSxqYBSp799LRzvkKqEbdU7ORZEtnCC1/c=;
        b=CDyzG9KuusvX44d8IHKsFqeelXYrZaGtiU6AJCjIkep5nUEd22+7o5I2Gm7qSDoBfW
         GxFWMIbX7bk3Z/3YedkAouSO4z7HTq1iz9JASFlM6hZ145cbh4zfxXFCUbXX6aqLHp/6
         vKApRGR3MoGNmOLSNs8xPBzeAexUidS+451penr8auf398oqxAHh+/4W0orSoSZ3kNCj
         kfSNPTr7fV9raI0GHaypIQ3eG+cLZ8mFfcX7CyoMWu18jyldzPaKEKtmQFxUffktn8tb
         34kjRd94oticcHLEtkz1yL4u5QyR6W4exEwzpQbW2TcWt/ZBYOFGVnU0GdnsgHLHcGod
         uyVg==
X-Gm-Message-State: ABy/qLbL772wrCZn8R66iCnf01dbRNL4eWoTPSNQ6rHeS3NrTlnBX2lE
        3TDTejbj521p+H18R5iJJ67pHg==
X-Google-Smtp-Source: APBJJlHRwsQpJW8ZArxZXtLHquj+dXAS/+yUOI6zk6KCe46Db9/H4PA6ZMsylPMV2TyPcORICGopYA==
X-Received: by 2002:ac2:4f0a:0:b0:4fb:c9e1:5286 with SMTP id k10-20020ac24f0a000000b004fbc9e15286mr6945443lfr.7.1689077361885;
        Tue, 11 Jul 2023 05:09:21 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:21 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 06/10] arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
Date:   Tue, 11 Jul 2023 15:09:12 +0300
Message-Id: <20230711120916.4165894-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use usb_1_ssphy's clock as gcc's usb3_phy_wrapper_gcc_usb30_pipe_clk
clock source.

Suggested-by: Neil Armstrong <neil.armstrong@linaro.org>
Fixes: 1c39e6f9b534 ("arm64: dts: qcom: sc7280: Add USB related nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 925428a5f6ae..2870fe8fd526 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -869,7 +869,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
 				 <0>, <&pcie1_lane>,
-				 <0>, <0>, <0>, <0>;
+				 <0>, <0>, <0>,
+				 <&usb_1_ssphy>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
 				      "ufs_phy_rx_symbol_0_clk", "ufs_phy_rx_symbol_1_clk",
-- 
2.39.2

