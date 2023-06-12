Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2217872BCB2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:32:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234549AbjFLJcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:32:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234890AbjFLJbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:31:04 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE91D3A87
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f738f579ceso29736175e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561900; x=1689153900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f4hcroDV0hdKX/DQDft+g0yZ5ckCppngKltjTy4swGs=;
        b=MAMjiLP/Ub2YMkZrYMQu9I+vzT6+M/KG3XopFjXfiAgrNHxfkR1XAmH5b8FPhTzsfl
         AqRdT7fKsLe1LsAM2ySEpkmdoZpmATyl8UlCZdD0WerCqDDnXfaLcu9TW+BsqAjtpDP3
         h4Y8lowLuAZMm8+6vaV2+O5tZ4JOtojf9TOohwrc3VXLVH0Lp62NqHuEEzvSQ7XMsIgJ
         FjwcfKOhlAEOQ+sWQqGMbhR8naVGQyOA17XnUN5/G+unqZS2uYPEfzRepIdPMJ3pNCJT
         C2VSAmBfiHnpDcna93MrdqjGaOpKmOoY5f4NTJ2Krkj/Qavu3TIAsxqxZqX2d9tNvUnX
         YUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561900; x=1689153900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4hcroDV0hdKX/DQDft+g0yZ5ckCppngKltjTy4swGs=;
        b=hsMlRUD3ipx7G3eqok/mxKPDvzuCJ79Ms2A30sucHNyUXTXuNsJIW1O6jBhhUuI/+E
         j1aSMTUD6dv6MiOhw+sifhZ1T9KCswW37iwKWvUeuaDtBFWjf+B4+0FME2Mzr2yHRF58
         unMSSczL1AH4UBKmL4drZmJw2RS0oXlcWqGulMdk7EEPV+EJeYyHK8P8MwhZsKB8yvWZ
         R4qPqwGBlftsaHHkAuOTUGH+wjVwT7bhiTRHGDz6+p4gKTUJlfRuhWfF/v7VXjHqAB0r
         xmF7/1dme3AgDt49BLurv9WjEvKJj03NBRjfcxWVaLeqWotMxUyC/+ATKBCI5pPw7vDp
         D+Sw==
X-Gm-Message-State: AC+VfDxfObK8loaLa5AjaT7fqmxt+kaKGUHVEMaSaN5yRnY/PfwOcgg9
        GWgcddkwXzE5w3Eopofp+BTBSA==
X-Google-Smtp-Source: ACHHUZ61vW/FRawgaaHnvQGC2M+qoPMGa2BJ9bPXYYT98KJ/c8JNEM8dFY2uCnSfW5vwruY6E+eizg==
X-Received: by 2002:a7b:c047:0:b0:3f8:1b55:ac08 with SMTP id u7-20020a7bc047000000b003f81b55ac08mr1200775wmc.28.1686561900531;
        Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 24/26] arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY
Date:   Mon, 12 Jun 2023 11:23:53 +0200
Message-Id: <20230612092355.87937-25-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the internal PHY on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index ab767cfa51ff..7754788ea775 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -355,6 +355,10 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&serdes_phy {
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32764>;
 };
-- 
2.39.2

