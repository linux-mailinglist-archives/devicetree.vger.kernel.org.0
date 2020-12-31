Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18B7D2E7FE7
	for <lists+devicetree@lfdr.de>; Thu, 31 Dec 2020 13:26:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726655AbgLaMZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Dec 2020 07:25:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726658AbgLaMZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Dec 2020 07:25:15 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B2B5C0617A2
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 04:24:07 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id o17so43767879lfg.4
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 04:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=byqJcKdKFpWTm4VSr9Eiv/kYmNHdQVPFpzs7G6s8ZJI=;
        b=G8eObkzGtydhVt044+/rP2/EisfNdgckFEkq+1wG84Rt74FOIeosTCIi9pT5qH4N/w
         WkZnFfranXG1JmlIY4nzJAjixXZVDGdrrTjcaK7TUzH0xGWitLX+yjSXfR1L4IVNzkCP
         DTBhRsP3IN8Ft4kH81loTytLHk1rESTOS+U96OSxdmqzkuG0WMnj++t81/mQTNswyCrz
         YSeFdlJU+89T187j3VQo6jWclOIuRTaBaNT48B9awa25JZz1TjT0E+wp/vWyk63nfzaw
         PXOf5ZVdPA3hb6z+aIJLJuuZv3fA/z0s7l9Ipmf5VMBm5cnBd/V9U4oa5E8dkU30wApI
         3lDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=byqJcKdKFpWTm4VSr9Eiv/kYmNHdQVPFpzs7G6s8ZJI=;
        b=nQt27NO74YMmbvWJZCM3upzyaspU/kiUx0zpM+b8P3RK9SufIy3w0aI1oA7tsnakUI
         9hzC5FaCBJmcW9LEheBqxjBgwyloqYxKsLcHY4ZIBt5AGYEbBRAFN5aJjFGsebP7wXUW
         Kgks6b6JAG1CbFinUtw/MQgKVz2gNaxOy/Mxu0xkZ91pCef75vOQmDLhY3MyMENDrk/X
         Sj2VflLs4dgaagkBdS2R/KHTQLy6E3ik4LmuqC5XbQrjIywAGClbVoDNImcYWjtebyXm
         yvPLJyGUXs+V8DfUd++MVioUivSICL/RjT4YU3s4WFcWzJvVr27jwsdolCfLb84ey5iP
         0M5g==
X-Gm-Message-State: AOAM532W3ZrraU0YypwG1Tvijz+86DBKuG5h4BDvy0bE8s8Xjx+Xicby
        0H3F8w0wDDN63/Bs5MTcGG+Mfg==
X-Google-Smtp-Source: ABdhPJzq6abg1TwVhr803d1PPYncSi4k6ZuV6MIzHQB2v5QqMipPfsrxYtGCfUqlkLzdy6smRL16mQ==
X-Received: by 2002:a2e:a366:: with SMTP id i6mr29588290ljn.427.1609417446061;
        Thu, 31 Dec 2020 04:24:06 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.115])
        by smtp.gmail.com with ESMTPSA id n10sm428569lji.99.2020.12.31.04.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 04:24:05 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] regulator: qcom-rpmh-regulator: add pm8009-1 chip revision
Date:   Thu, 31 Dec 2020 15:23:47 +0300
Message-Id: <20201231122348.637917-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231122348.637917-1-dmitry.baryshkov@linaro.org>
References: <20201231122348.637917-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PM8009 has special revision (P=1), which is to be used for sm8250
platform. The major difference is the S2 regulator which supplies 0.95 V
instead of 2.848V. Declare regulators data to be used for this chip
revision. The datasheet calls the chip just pm8009-1, so use the same
name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Fixes: 06369bcc15a1 ("regulator: qcom-rpmh: Add support for SM8150")
---
 drivers/regulator/qcom-rpmh-regulator.c | 26 +++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index c395a8dda6f7..98320e1d8bf6 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -732,6 +732,15 @@ static const struct rpmh_vreg_hw_data pmic5_hfsmps515 = {
 	.of_map_mode = rpmh_regulator_pmic4_smps_of_map_mode,
 };
 
+static const struct rpmh_vreg_hw_data pmic5_hfsmps515_1 = {
+	.regulator_type = VRM,
+	.ops = &rpmh_regulator_vrm_ops,
+	.voltage_range = REGULATOR_LINEAR_RANGE(900000, 0, 4, 16000),
+	.n_voltages = 5,
+	.pmic_mode_map = pmic_mode_map_pmic5_smps,
+	.of_map_mode = rpmh_regulator_pmic4_smps_of_map_mode,
+};
+
 static const struct rpmh_vreg_hw_data pmic5_bob = {
 	.regulator_type = VRM,
 	.ops = &rpmh_regulator_vrm_bypass_ops,
@@ -932,6 +941,19 @@ static const struct rpmh_vreg_init_data pm8009_vreg_data[] = {
 	{},
 };
 
+static const struct rpmh_vreg_init_data pm8009_1_vreg_data[] = {
+	RPMH_VREG("smps1",  "smp%s1",  &pmic5_hfsmps510, "vdd-s1"),
+	RPMH_VREG("smps2",  "smp%s2",  &pmic5_hfsmps515_1, "vdd-s2"),
+	RPMH_VREG("ldo1",   "ldo%s1",  &pmic5_nldo,      "vdd-l1"),
+	RPMH_VREG("ldo2",   "ldo%s2",  &pmic5_nldo,      "vdd-l2"),
+	RPMH_VREG("ldo3",   "ldo%s3",  &pmic5_nldo,      "vdd-l3"),
+	RPMH_VREG("ldo4",   "ldo%s4",  &pmic5_nldo,      "vdd-l4"),
+	RPMH_VREG("ldo5",   "ldo%s5",  &pmic5_pldo,      "vdd-l5-l6"),
+	RPMH_VREG("ldo6",   "ldo%s6",  &pmic5_pldo,      "vdd-l5-l6"),
+	RPMH_VREG("ldo7",   "ldo%s6",  &pmic5_pldo_lv,   "vdd-l7"),
+	{},
+};
+
 static const struct rpmh_vreg_init_data pm6150_vreg_data[] = {
 	RPMH_VREG("smps1",  "smp%s1",  &pmic5_ftsmps510, "vdd-s1"),
 	RPMH_VREG("smps2",  "smp%s2",  &pmic5_ftsmps510, "vdd-s2"),
@@ -1057,6 +1079,10 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
 		.compatible = "qcom,pm8009-rpmh-regulators",
 		.data = pm8009_vreg_data,
 	},
+	{
+		.compatible = "qcom,pm8009-1-rpmh-regulators",
+		.data = pm8009_1_vreg_data,
+	},
 	{
 		.compatible = "qcom,pm8150-rpmh-regulators",
 		.data = pm8150_vreg_data,
-- 
2.29.2

