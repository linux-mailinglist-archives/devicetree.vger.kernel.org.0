Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC30D26600F
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 15:12:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726053AbgIKNMl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 09:12:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726225AbgIKNLy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 09:11:54 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5002AC0617A2
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 06:10:03 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id k25so12331896ljg.9
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 06:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KSlhvEq07UrSHzoeR1SRzs3RyWctK5k6m6swaX7LLqY=;
        b=wFaVSsWYdhfEmFdxO736pNv7rQ/OInzLf+QLdk7eZLS1hmB+bPlm95xD3FsH/wdANP
         fcQg0SF14eprMQx0oMvKO43/BuxO216vAxuFaZH6dtZMhNxSoG9RRx5c+IZSZJHu5X9l
         aehikXMqzYz2HmZCXtVJxj9dvw2CW9CyhbkQ4wqUSLE4ck3H0ofKORXATtC4Y1Mfy5XE
         dnLADeSedLKU20XrEqdmyWxvSoClgggd7ONJo/NmsBosYRZbiz6/jbgCRIeHeEbm3tHZ
         63vIJQjT2nz0luT1vq8BJjE/bxTVJ3RVm+qxO7qlN2t996CSYkmVA0R/sV8kUwh6NKEF
         XvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KSlhvEq07UrSHzoeR1SRzs3RyWctK5k6m6swaX7LLqY=;
        b=VmPOzmFwxAjgMmwuRXBTq9onl0udnomrJ3k8U7X/W/yoUsjwdwtVqXYnAUwp5UkFJ1
         zYVPqD6EJITvi+5wi2wgJaBEiO9kIeeWY8zRprn7UYwoKQ1N/t2959LaXJZcDikv8XOk
         Qf0Ic6Sfb1E/xnV6YXIooUgrIbejyST73orkvUwy5D/gNvUMq5I9m1swA25lyBNDvudB
         84JYg0SMs578Ymu4XcOI4bymeijKl8ZBui0sAw/bvwvqzrmtC8S1WzMieGbz6+yva1jC
         sYvnp204PA+UMjlKc1PwyJwkCN2qYkug6nlRYBoSXz8iXEiRLIFm9RlGLrXn8JL96Cmx
         3EPA==
X-Gm-Message-State: AOAM530s8/CU/gXJJzVxhLg5PgKYyo/3dlzymrjjOhAC67GXqT0CE0n8
        aM3A/+3CK9yXs42vOXXtRLZ3Fg==
X-Google-Smtp-Source: ABdhPJzAyIeWpRWAivAJ0Mv70OonVsORAIWs5rND0Sb1rqKDi3fekdt8Ho7v9PX/dUHyZtoyFmmRwA==
X-Received: by 2002:a2e:2286:: with SMTP id i128mr888221lji.288.1599829801429;
        Fri, 11 Sep 2020 06:10:01 -0700 (PDT)
Received: from eriador.lan ([188.162.64.141])
        by smtp.gmail.com with ESMTPSA id 10sm429500lfq.64.2020.09.11.06.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 06:10:00 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org
Subject: [RFC 3/4] clk: qcom: dispcc-sm8250: handle MMCX power domain
Date:   Fri, 11 Sep 2020 16:09:49 +0300
Message-Id: <20200911130950.578483-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911130950.578483-1-dmitry.baryshkov@linaro.org>
References: <20200911130950.578483-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SM8250 MMCX power domain is required to access MMDS_GDSC registers.
Enable using this power domain for the gdsc.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/dispcc-sm8250.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/qcom/dispcc-sm8250.c b/drivers/clk/qcom/dispcc-sm8250.c
index 7c0f384a3a42..fc5fb2b2fe5e 100644
--- a/drivers/clk/qcom/dispcc-sm8250.c
+++ b/drivers/clk/qcom/dispcc-sm8250.c
@@ -970,6 +970,8 @@ static struct gdsc mdss_gdsc = {
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = HW_CTRL,
+	.domain = "mmcx",
+	.perf_idx = 0,
 };
 
 static struct clk_regmap *disp_cc_sm8250_clocks[] = {
-- 
2.28.0

