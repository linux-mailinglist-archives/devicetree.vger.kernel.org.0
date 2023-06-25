Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E73A673D416
	for <lists+devicetree@lfdr.de>; Sun, 25 Jun 2023 22:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbjFYU0b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 16:26:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230491AbjFYU03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 16:26:29 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F4A10E3
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 13:26:14 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f122ff663eso3096893e87.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 13:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687724772; x=1690316772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiV5z5zUGyF9t+SInKUjgyhbtQRee0OBw3xrDTOT36E=;
        b=C5H52spIDIYjTr5qExPIoHx3cPrpxJxpZJKRuinORN+vMRj/dj6axv3iMlGXBnZaR1
         uJxczyaouIvDVzPaWPBQgnsu9iieTt45YVP0DeJtVHwjZDVx1qbsNDYJhv4kLcA1jgHh
         0do0bRsu2m81tfR7VN5jRlf60hHHPdXd1KmctqFKtWpb694j8VBlm/loCNOVvjyjekD5
         DLVempKF0Q/F2qjToa2vWCaE3E/uvznYFj/w/SxhwuTMJFFxTLtrvE7fie3yL/w1Ki85
         fhzbC7MJtrGnEACkpHhQ1zdrDcnknm/D451DiOEWYHrhmSd+3PEylp5Yrq4r38GM0Ko1
         rr7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687724772; x=1690316772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HiV5z5zUGyF9t+SInKUjgyhbtQRee0OBw3xrDTOT36E=;
        b=IFP68dFEExc8kJmdAcAcLE+pFTVea5Imgl1vcyhIRzDvVq+9k3kSNGmywHzu6+jYnE
         zedZN9bJQPmN1Mk8TJnlZq9Zz9ND/nRgz2mEGTVbbzAyBvXLtJm9QYfXM8EOULicWGu2
         FOXb2ST0wP6DX5hXejdhSoMMEw1PARUZ66fYIwJYOV1Enk4dOn+aSRAg6NktVuUhXaIK
         OPgjHs0EK17bCrHcm+Yfq4aoDag3/MzjAIRTywuMpjYwZKE8O9lScuDurkAfneq6MngF
         +TkbRIgavOU5zO9ldkgxbJPLdIlzErqI4TBgf3pppXpllvNWamkr/we42X79OYauvzno
         35yA==
X-Gm-Message-State: AC+VfDyK1Hkp4buJAA68Y0ydwIKw/wLdkA0Tntxmi+Jgnb+Xur9FsYMy
        uzCLqcYbB8bOq3RUrniwvmqoHw==
X-Google-Smtp-Source: ACHHUZ45iG+1Sacn3/JNwppp4cAoDOFgBmwMe5BAxdk+yGg/pGOUFqw3c/qpIFx1UwMjlfCEzqZz8w==
X-Received: by 2002:ac2:5b9a:0:b0:4f8:582f:414e with SMTP id o26-20020ac25b9a000000b004f8582f414emr15324375lfn.15.1687724772115;
        Sun, 25 Jun 2023 13:26:12 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m21-20020a195215000000b004f8427f8716sm787537lfb.262.2023.06.25.13.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 13:26:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v2 26/26] ARM: dts: qcom: ipq8064: drop 'regulator' property from SAW2 devices
Date:   Sun, 25 Jun 2023 23:25:47 +0300
Message-Id: <20230625202547.174647-27-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625202547.174647-1-dmitry.baryshkov@linaro.org>
References: <20230625202547.174647-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator nodes show be added
instead.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 6198f42f6a9c..ecb99e104de0 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -589,7 +589,6 @@ acc0: clock-controller@2088000 {
 		saw0: regulator@2089000 {
 			compatible = "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
-			regulator;
 		};
 
 		acc1: clock-controller@2098000 {
@@ -604,7 +603,6 @@ acc1: clock-controller@2098000 {
 		saw1: regulator@2099000 {
 			compatible = "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
-			regulator;
 		};
 
 		nss_common: syscon@3000000 {
-- 
2.39.2

