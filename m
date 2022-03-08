Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40F084D2122
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 20:10:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350073AbiCHTL2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 14:11:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349957AbiCHTLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 14:11:07 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E4EF56221
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 11:09:51 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id m11-20020a17090a7f8b00b001beef6143a8so190551pjl.4
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 11:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ExeMvBUYf18gUbw3oNoBhQIqfKznu+dtCvkD2ZUwMDI=;
        b=ib6FySm/SIILussMyTK7iihJLMt8Z1en8slTwlrFY5+R7JaTUXQp9kyMH9l8rQzknO
         em20DU9AF9v5Tq9pS2VCCi+eMzdQAtqCXv5+LQSGxEgZsykZLTjntKZ+bWUTwJj7eMqp
         yne0N1Zo66kQ5sLI0k1LFhdoc/452HkjAHras=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ExeMvBUYf18gUbw3oNoBhQIqfKznu+dtCvkD2ZUwMDI=;
        b=fKOKR3XTH63kRn7FlB3mzJVMVwqPlq6u17436PAtK/ixaT+P1hnI4CWLRL/my+FO7u
         0WW4W5WPdM/4iLmt4rxoXMsvcGLAH7332eMmwQhzoeSP7Y/5rmYz9HwgDaIoD8Ekvfkt
         DDwilK0QdGl0TlBOdXZ5a4mLqN0vnqvmHR8a2aJywHrHLkia+hswfwlsisD/dCO11/rm
         hufPaOtAMS+5iY1/pQU6Uq5PJ0i7UY403uVeNX8zxhgpEV9zwcxRvVtASYNQ2XSjosj5
         QfvZ3qZVz/5fAc8SQYNvhrm49GkTEH5iamF8AhYAc7+DQTxbf/5ow/Z96yHYkGc2V4JH
         NsBQ==
X-Gm-Message-State: AOAM533mkSGrWYKdXDfQ6jxfEd6GiTt0Ki3DWtYu7wNNR7gZdwUewlrS
        Vwvj8CW9zmZw2wswSBKNfjTft/l9rw7vKQ==
X-Google-Smtp-Source: ABdhPJy2AstUgBchjh7EwV+wcmMkcQM+A0fg1kljv5PG4sghXwqZVBUofbggon0HsXXkeiKY53yCJw==
X-Received: by 2002:a17:902:b945:b0:14f:f05e:5479 with SMTP id h5-20020a170902b94500b0014ff05e5479mr19169202pls.94.1646766591062;
        Tue, 08 Mar 2022 11:09:51 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
        by smtp.gmail.com with UTF8SMTPSA id z13-20020a63e10d000000b003733d6c90e4sm15339293pgh.82.2022.03.08.11.09.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 11:09:50 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Derek Basehore <dbasehore@chromium.org>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org, Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 15/15] PM / devfreq: rk3399_dmc: Avoid static (reused) profile
Date:   Tue,  8 Mar 2022 11:09:01 -0800
Message-Id: <20220308110825.v4.15.I8d71e9555aca1fa7e532d22dd1ef27976f21799d@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This static struct can get reused if the device gets removed/reprobed,
and that causes use-after-free in its ->freq_table.

Let's just move the struct to our dynamic allocation.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v2)

Changes in v2:
 * New patch

 drivers/devfreq/rk3399_dmc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 9615658d04ae..e494d1497d60 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -38,6 +38,7 @@
 struct rk3399_dmcfreq {
 	struct device *dev;
 	struct devfreq *devfreq;
+	struct devfreq_dev_profile profile;
 	struct devfreq_simple_ondemand_data ondemand_data;
 	struct clk *dmc_clk;
 	struct devfreq_event_dev *edev;
@@ -228,13 +229,6 @@ static int rk3399_dmcfreq_get_cur_freq(struct device *dev, unsigned long *freq)
 	return 0;
 }
 
-static struct devfreq_dev_profile rk3399_devfreq_dmc_profile = {
-	.polling_ms	= 200,
-	.target		= rk3399_dmcfreq_target,
-	.get_dev_status	= rk3399_dmcfreq_get_dev_status,
-	.get_cur_freq	= rk3399_dmcfreq_get_cur_freq,
-};
-
 static __maybe_unused int rk3399_dmcfreq_suspend(struct device *dev)
 {
 	struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(dev);
@@ -422,10 +416,16 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	data->volt = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
 
-	rk3399_devfreq_dmc_profile.initial_freq = data->rate;
+	data->profile = (struct devfreq_dev_profile) {
+		.polling_ms	= 200,
+		.target		= rk3399_dmcfreq_target,
+		.get_dev_status	= rk3399_dmcfreq_get_dev_status,
+		.get_cur_freq	= rk3399_dmcfreq_get_cur_freq,
+		.initial_freq	= data->rate,
+	};
 
 	data->devfreq = devm_devfreq_add_device(dev,
-					   &rk3399_devfreq_dmc_profile,
+					   &data->profile,
 					   DEVFREQ_GOV_SIMPLE_ONDEMAND,
 					   &data->ondemand_data);
 	if (IS_ERR(data->devfreq)) {
-- 
2.35.1.616.g0bdcbb4464-goog

