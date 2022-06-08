Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEF57542FDE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238715AbiFHMHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:07:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238699AbiFHMHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:07:44 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A2A21D01D0
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:07:34 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id be31so32918740lfb.10
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OpFXH16in5cHn4raKF0Pb6v4UhkdcLR/Jb9aXlUmXhE=;
        b=VHwNwMhKOhOS/njzIln1ebySUKrHlmCd4ta2Gc74f3Sqkfto12atc0vNrNU3saj8PM
         PswzUU3GXZf44jbg2HOU4EFobDKjWy0VN7jVK6RS76TcnCZZUqHEYM4s49sm8Ets492v
         qEH5oeNx79S+F9VCka3lAQkJ7LyAtVn8hdsvVv7VvlRuYW7XxtH7DESM6v19PMwjBOGr
         c1OmHRVdlp2ziNNDfAwxanfeNwYyZziOYqBRg9YMxy2oQDIbBWRF0ikuLzRLoIT6S7HB
         UQiruR+WuVuteegOizNp5VnbBI56wDf48m308FZaQJLJsLFYn/YVi7Gzh29llWUtkkeS
         K9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OpFXH16in5cHn4raKF0Pb6v4UhkdcLR/Jb9aXlUmXhE=;
        b=f9YT7np4lJmy1DB3XgFpnDd2/blvY+Qcjw0l/AMYSdH9YMaU/9ypefFEkacy6aotaR
         1H0Qx8i2WcI+iGYLGnDbfIaQba6sQivtYUDvwgatOStM5COd+JGsQ7ywDC4otsWhdxoZ
         +RLXmIm1v7RZhH4SAlXthQgYA4ShgO5VOCCEZ/byfiYDKRB1HuERaWprzZXTl0nT9FXU
         /olwh3zvuQPofBMIc2ZssAvQDMgqs+O1jhA854voOZwe5wECsb6FRx9sfBV/I8k8oBUK
         vrBU/P5Tizx3s/56AOJke+q2wSzzWWahgaday4sGk5OQDPNUPk5SKOFmUmFGTxYKPP0N
         FwGQ==
X-Gm-Message-State: AOAM532n2QGk2CBRz/8wMHLHwuV200zO3nniB//K5RYmVcHqWTGwJ0vB
        X7qvUeC0P5o090dmoAxNVXK9vA==
X-Google-Smtp-Source: ABdhPJwbrQN2RGqJpe8Uw9ASRmVYQFvgJ8+fpfIF7QqXelS1hGc+IZolxnyt5rU2w6vzHBEHhM0R4g==
X-Received: by 2002:a05:6512:2625:b0:478:5a51:7fe3 with SMTP id bt37-20020a056512262500b004785a517fe3mr20891208lfb.158.1654690053628;
        Wed, 08 Jun 2022 05:07:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 4-20020ac25f04000000b0047b0f2d7650sm52049lfq.271.2022.06.08.05.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 05:07:33 -0700 (PDT)
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
Subject: [PATCH v2 08/12] drm/msm/hdmi: drop empty 'none' regulator lists
Date:   Wed,  8 Jun 2022 15:07:19 +0300
Message-Id: <20220608120723.2987843-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Several platform configs use empty 'none' regulator arrays. They are not
necessary, as the code will use corresponding _cnt field and skip the
array completely. Drop them now.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 67397fff645c..ebc87f2a626c 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -353,9 +353,6 @@ int msm_hdmi_modeset_init(struct hdmi *hdmi,
 	.item ## _names = item ##_names_ ## entry, \
 	.item ## _cnt   = ARRAY_SIZE(item ## _names_ ## entry)
 
-static const char *pwr_reg_names_none[] = {};
-static const char *hpd_reg_names_none[] = {};
-
 static struct hdmi_platform_config hdmi_tx_8660_config;
 
 static const char *hpd_reg_names_8960[] = {"core-vdda"};
@@ -392,7 +389,6 @@ static struct hdmi_platform_config hdmi_tx_8084_config = {
 
 static struct hdmi_platform_config hdmi_tx_8994_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(hpd_reg, none),
 		HDMI_CFG(pwr_clk, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
 		.hpd_freq      = hpd_clk_freq_8x74,
@@ -400,7 +396,6 @@ static struct hdmi_platform_config hdmi_tx_8994_config = {
 
 static struct hdmi_platform_config hdmi_tx_8996_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(hpd_reg, none),
 		HDMI_CFG(pwr_clk, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
 		.hpd_freq      = hpd_clk_freq_8x74,
-- 
2.35.1

