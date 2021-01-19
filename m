Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA0462FC24B
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 22:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728331AbhASSo0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 13:44:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392096AbhASRzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 12:55:51 -0500
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [IPv6:2001:4b7a:2000:18::167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051E8C061798;
        Tue, 19 Jan 2021 09:48:47 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (unknown [2.237.20.237])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 8039E3F211;
        Tue, 19 Jan 2021 18:46:00 +0100 (CET)
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
To:     viresh.kumar@linaro.org
Cc:     bjorn.andersson@linaro.org, agross@kernel.org, rjw@rjwysocki.net,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        amit.kucheria@linaro.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, jeffrey.l.hugo@gmail.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH v4 6/7] cpufreq: qcom-hw: Allow getting the maximum transition latency for OPPs
Date:   Tue, 19 Jan 2021 18:45:56 +0100
Message-Id: <20210119174557.227318-7-angelogioacchino.delregno@somainline.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210119174557.227318-1-angelogioacchino.delregno@somainline.org>
References: <20210119174557.227318-1-angelogioacchino.delregno@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to fine-tune the frequency scaling from various governors,
allow to set a maximum transition latency from OPPs, which may be
different depending on the SoC.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
---
 drivers/cpufreq/qcom-cpufreq-hw.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/cpufreq/qcom-cpufreq-hw.c b/drivers/cpufreq/qcom-cpufreq-hw.c
index a92959bb7b50..5f67da796f6c 100644
--- a/drivers/cpufreq/qcom-cpufreq-hw.c
+++ b/drivers/cpufreq/qcom-cpufreq-hw.c
@@ -1401,6 +1401,7 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
 	void __iomem *base;
 	struct qcom_cpufreq_data *data;
 	const char *fdom_resname;
+	unsigned int transition_latency;
 	int cpu_count, index, ret;
 
 	cpu_dev = get_cpu_device(policy->cpu);
@@ -1478,6 +1479,12 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
 		goto error;
 	}
 
+	transition_latency = dev_pm_opp_get_max_transition_latency(cpu_dev);
+	if (!transition_latency)
+		transition_latency = CPUFREQ_ETERNAL;
+
+	policy->cpuinfo.transition_latency = transition_latency;
+
 	dev_pm_opp_of_register_em(cpu_dev, policy->cpus);
 
 	if (policy_has_boost_freq(policy)) {
-- 
2.30.0

