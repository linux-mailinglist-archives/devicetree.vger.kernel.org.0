Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C7AE4710C4
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 03:18:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240167AbhLKCVv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 21:21:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241354AbhLKCVt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 21:21:49 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D76FC0617A1
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 18:18:13 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id b40so21154601lfv.10
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 18:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jMeSXoL9O+nVWzUxuXzuxlRG686vo4uKJcR2hEXNT20=;
        b=rjsegpcfxUYFU85rWXWseAMTI8M4/VDuoe8mZ0+HbIPEOL/VISB+YXw3cnUh99XRFJ
         ji9LJkMBDs2t04AxE828rCP/QE/BIQySsmXkIEB2QWx1EjyQoPOZw8+fXrhGRD4aTKQA
         7bOKntSMjkK3iAMClTZWFien6NWRHsegqkGh9NnicQtnAUzuZIhdrs/1kIndtKdoMQtE
         kRtexxAzajnyPb9lu9KxJwYHY3AoKcU5hasLN9U73BgWG9OA1+rq4P+5Ki8on5b1D1HC
         izG3fO0zqICPyj1pbK/SlsvB4MWHxjrbB+srutSlmT+aga/NyVGe4SHCLvCQsKJILLzB
         olSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jMeSXoL9O+nVWzUxuXzuxlRG686vo4uKJcR2hEXNT20=;
        b=0xLv2iMxwUIJ9vSsyri6Xh/ZSswp3y79a3xcT9+yKKpK0+k5n2RL9Z8Gpve0XtNrq4
         OC3woZVPpS6NF9+Ls6h3eCcPHBerLOgHLT75+oWrnnjpTLiIuEej7WpaDTEsaUNAV19u
         urv5g2mnB+XUbE9SD3T5Hd97FrtGFtlSQwMXJ6wo2ah8E2/01K9yY4oRAjIX3qX0kWAM
         gBawAsBmvIo72Zbxjr0zPOYAQZ0mi0TDdmBYaVtanxj70FRf5Vig4I9rzBqP8uccUYs0
         txN4jomlOzakG4n8zoOfTTVB47sbT8Ye5Hwsgc+DwPGKASQop7Q5YKqnjrweTXpq05rB
         yzCw==
X-Gm-Message-State: AOAM531NxVJZ3FOwgmaHSiXJAPLHBSG3OZQ64NTCJ+lQbLwc+EQSPG0p
        AU9mqyW34hiar0e5NKvrl6I8Aw==
X-Google-Smtp-Source: ABdhPJx8VeXLlorwjEQCi6PrICLpr3HcEztNZWbbvOWHJ31eiY+HGD54WAFHY1nuHtbc9UmCVjDhGw==
X-Received: by 2002:a05:6512:3f6:: with SMTP id n22mr10235256lfq.501.1639189091379;
        Fri, 10 Dec 2021 18:18:11 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 18:18:10 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v3 10/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 host
Date:   Sat, 11 Dec 2021 05:17:58 +0300
Message-Id: <20211211021758.1712299-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PCIe0 host on SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index e02d3c86e365..f6577ca7d2df 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,6 +346,10 @@ vreg_l6e_1p2: ldo6 {
 	};
 };
 
+&pcie0 {
+	status = "okay";
+};
+
 &pcie0_phy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-- 
2.33.0

