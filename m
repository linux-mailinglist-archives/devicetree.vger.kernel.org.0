Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A06F3487FB4
	for <lists+devicetree@lfdr.de>; Sat,  8 Jan 2022 00:53:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbiAGXxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 18:53:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbiAGXxp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 18:53:45 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1D90C061748
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 15:53:44 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id h1so6194668pls.11
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 15:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vnBEku22nFoYufV2aPCfVzGav/5qYcDVrSLes2E+zqw=;
        b=Ewu1LJLRf0snQq2dRiaVC6pWWngphFRDTOpkQ8Bi+K49SuQz9c3wIFTwLMNaGYBomH
         yNxIWv1Kx0I0nutVfCLkOhxETOv6wOcC10qsfblc4uzqdjWaEC9/Yqp38vSsDee7t9aA
         ilbHQYrt/zmhGPyyze+kyxSVuFvYHNn0WUafk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vnBEku22nFoYufV2aPCfVzGav/5qYcDVrSLes2E+zqw=;
        b=HZPXdHEk/x2s8b745bU/0MwrZqZsHQnExg48tW7SG96eZyXrGKF70Ey2GJG2cgMSOd
         BN2xv4y8WcEu3g+JkgcyboGnmxLgKpRf1RmTLiFTxnbOJT+BPvO9WMtkIIMH6xeYLiJA
         yCJUYDWJMhqR2u4TGbqepsZ4nNJEoF5/Ym77QMwo2msEiKFxJRZ0ldgJGZiStrm+tTpn
         xOSfBpVrVB+PiOrhHABHPKVT8zILYve+ufmM1d/kFaqhrDwxBOkOwuGRPKrzyBU26L00
         4tXWbqRKA4Fu+SjUTQ3LcX4uXEjf9C2ercKPybOBVTKC8ExE8MiIqiBzSp1SxID/AW7n
         9tkw==
X-Gm-Message-State: AOAM533L7iQ6ATC8cDKhiXax/wRPc8fnOt0ZN15rXhdAHTkkNEKawtG1
        /tKE+9k6NlqtkE1lvE95i5surg==
X-Google-Smtp-Source: ABdhPJxSHaaq8+P1tjYNngGlMiqekaJ7/jtLTJDL6m/k3iyhZZNI45qDgrBzPEQ7Lddq74fCrB4/Lw==
X-Received: by 2002:a17:90b:4c06:: with SMTP id na6mr17972774pjb.236.1641599624512;
        Fri, 07 Jan 2022 15:53:44 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
        by smtp.gmail.com with UTF8SMTPSA id q19sm48610pfk.153.2022.01.07.15.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 15:53:44 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
        Derek Basehore <dbasehore@chromium.org>,
        linux-kernel@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH 07/10] PM / devfreq: rk3399_dmc: Use bitfield macro definitions for ODT_PD
Date:   Fri,  7 Jan 2022 15:53:17 -0800
Message-Id: <20220107155215.7.I0f36da588afd01d0dc9ce5866240efa34bd91e21@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107235320.965497-1-briannorris@chromium.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We're going to add new usages, and it's cleaner to work with macros
instead of comments and magic numbers.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/devfreq/rk3399_dmc.c | 43 ++++++++++++++++++++----------------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 8f447217303f..c4efbc15cbb1 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/devfreq.h>
@@ -23,6 +24,15 @@
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rockchip_sip.h>
 
+#define RK3399_SET_ODT_PD_0_SR_IDLE			GENMASK(7, 0)
+#define RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE		GENMASK(15, 8)
+#define RK3399_SET_ODT_PD_0_STANDBY_IDLE		GENMASK(31, 16)
+
+#define RK3399_SET_ODT_PD_1_PD_IDLE			GENMASK(11, 0)
+#define RK3399_SET_ODT_PD_1_SRPD_LITE_IDLE		GENMASK(27, 16)
+
+#define RK3399_SET_ODT_PD_2_ODT_ENABLE			BIT(0)
+
 struct rk3399_dmcfreq {
 	struct device *dev;
 	struct devfreq *devfreq;
@@ -55,7 +65,6 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 	unsigned long old_clk_rate = dmcfreq->rate;
 	unsigned long target_volt, target_rate;
 	struct arm_smccc_res res;
-	bool odt_enable = false;
 	int err;
 
 	opp = devfreq_recommended_opp(dev, freq, flags);
@@ -72,8 +81,10 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 	mutex_lock(&dmcfreq->lock);
 
 	if (dmcfreq->regmap_pmu) {
+		unsigned int odt_pd_arg2 = 0;
+
 		if (target_rate >= dmcfreq->odt_dis_freq)
-			odt_enable = true;
+			odt_pd_arg2 |= RK3399_SET_ODT_PD_2_ODT_ENABLE;
 
 		/*
 		 * This makes a SMC call to the TF-A to set the DDR PD
@@ -83,7 +94,7 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 		arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, dmcfreq->odt_pd_arg0,
 			      dmcfreq->odt_pd_arg1,
 			      ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD,
-			      odt_enable, 0, 0, 0, &res);
+			      odt_pd_arg2, 0, 0, 0, &res);
 	}
 
 	/*
@@ -316,23 +327,17 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	/*
 	 * In TF-A there is a platform SIP call to set the PD (power-down)
 	 * timings and to enable or disable the ODT (on-die termination).
-	 * This call needs three arguments as follows:
-	 *
-	 * arg0:
-	 *     bit[0-7]   : sr_idle
-	 *     bit[8-15]  : sr_mc_gate_idle
-	 *     bit[16-31] : standby idle
-	 * arg1:
-	 *     bit[0-11]  : pd_idle
-	 *     bit[16-27] : srpd_lite_idle
-	 * arg2:
-	 *     bit[0]     : odt enable
 	 */
-	data->odt_pd_arg0 = (data->sr_idle & 0xff) |
-			    ((data->sr_mc_gate_idle & 0xff) << 8) |
-			    ((data->standby_idle & 0xffff) << 16);
-	data->odt_pd_arg1 = (data->pd_idle & 0xfff) |
-			    ((data->srpd_lite_idle & 0xfff) << 16);
+	data->odt_pd_arg0 =
+		FIELD_PREP(RK3399_SET_ODT_PD_0_SR_IDLE, data->sr_idle) |
+		FIELD_PREP(RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE,
+			   data->sr_mc_gate_idle) |
+		FIELD_PREP(RK3399_SET_ODT_PD_0_STANDBY_IDLE,
+			   data->standby_idle);
+	data->odt_pd_arg1 =
+		FIELD_PREP(RK3399_SET_ODT_PD_1_PD_IDLE, data->pd_idle) |
+		FIELD_PREP(RK3399_SET_ODT_PD_1_SRPD_LITE_IDLE,
+			   data->srpd_lite_idle);
 
 	/*
 	 * We add a devfreq driver to our parent since it has a device tree node
-- 
2.34.1.575.g55b058a8bb-goog

