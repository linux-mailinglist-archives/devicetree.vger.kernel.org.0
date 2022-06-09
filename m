Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7B81544BC9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245389AbiFIMYJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245392AbiFIMYG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:24:06 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD4F7E0E8
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:24:02 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id i29so20968606lfp.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LlIXTf2F2ii+ucioBKsec482WVV2meunhjHcnfknaDs=;
        b=RkwzmsJJyeMawMcZY9tReDxYlj/RH9iKVAMkXnL2y/BBu5GlIL6/go3B9S2ib6jFos
         hwzr8z4xFv36ufdYOWfQwJJjB12jGhQgzFWJtHQ43w2+53apgCcdBlQNLsHaVEhDtfLI
         /ugcDIwL5xvZVF4cA+3LQSsDfTdMvF1lXIVGknsnv7qIzwoSV16n67Wy7V/UnaECyRJO
         t62tELkTF6vav+twBSsQnM1TamHThkBqoJrG5rxGz7rjWH6Sgk8evTfMOPuGd4oIZpkF
         0qD16n5tHKQWp/8+3759UOFQWVlxsWL6jfHfa0jbo6qyxnUHTYby4WN0yp5t6b3yM6SS
         Albg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LlIXTf2F2ii+ucioBKsec482WVV2meunhjHcnfknaDs=;
        b=Ftxgw6T896i+TY2vMUWmwmq/fXk6n8P92o/ggQHA0ntuke9Mv7Xha+uI+yxyrQyeFu
         jMw8yzXoP4aOk9YJjAnsFJU7gue3GNfTvCFl8WO8kDCCjEYu+BDHpd7OrgJUlXsNh+YT
         PHopyyaOj6oQVbXnrF0tLgj14WQzSJUE6tIzQInDw8QVwtRoLjfnIV/4VZOTUPBu6ZdC
         WMC1YiTEZXe7NQtIao2VvOBgsnauUhoVeKximUUIfBZmJr2Q2KrYcwre7op9LTfzyQuZ
         QsZJt6ueNHTsI8IF/DTjjLTdZBa4gPp805OeaSc83Ila8nYvQmdTPs/0eVWsQK1OFlQe
         C0Kw==
X-Gm-Message-State: AOAM532+/A/QowcaaVm6WSQqlORjxr7iOddDulZXKlRS+/D2TwRSMTVn
        DRhEsD3uu53VxlIosatz0ipEuQ==
X-Google-Smtp-Source: ABdhPJxFfghF/YuyzBqtZUnSULRM5kai+ywDpIduSCW85UwnBiwOzJdeUG7DT3nLSHG4XbAHIsfn6A==
X-Received: by 2002:ac2:5f5c:0:b0:478:f5dc:f1c4 with SMTP id 28-20020ac25f5c000000b00478f5dcf1c4mr31721006lfz.317.1654777441830;
        Thu, 09 Jun 2022 05:24:01 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:24:01 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 11/14] drm/msm/hdmi: reuse MSM8960's config for MSM8660
Date:   Thu,  9 Jun 2022 15:23:47 +0300
Message-Id: <20220609122350.3157529-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MSM8660 requires the same set of clocks and regulators as MSM8960. Reuse
MSM8960's config for the MSM8660 (8x60).

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 0f1c63f68569..6acc17e0efc1 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -370,8 +370,6 @@ int msm_hdmi_modeset_init(struct hdmi *hdmi,
 	.item ## _names = item ##_names_ ## entry, \
 	.item ## _cnt   = ARRAY_SIZE(item ## _names_ ## entry)
 
-static struct hdmi_platform_config hdmi_tx_8660_config;
-
 static const char *hpd_reg_names_8960[] = {"core-vdda"};
 static const char *hpd_clk_names_8960[] = {"core", "master_iface", "slave_iface"};
 
@@ -567,7 +565,7 @@ static const struct of_device_id msm_hdmi_dt_match[] = {
 	{ .compatible = "qcom,hdmi-tx-8084", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8974", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8960", .data = &hdmi_tx_8960_config },
-	{ .compatible = "qcom,hdmi-tx-8660", .data = &hdmi_tx_8660_config },
+	{ .compatible = "qcom,hdmi-tx-8660", .data = &hdmi_tx_8960_config },
 	{}
 };
 
-- 
2.35.1

