Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 139203C2AAA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 23:07:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbhGIVKY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 17:10:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbhGIVKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 17:10:21 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E3B5C0613E5
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 14:07:36 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id r16so10107301ljk.9
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 14:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x+PAtg9BEfaBeVDYjq8MiVIG3ylCM5YSds46prh2L6Q=;
        b=skHag2o7KhfRrEy1+Zb3RJhW1QSiaraLtZS7zMDlXXqo3ne1aS9zFomHYMRBX3YfX6
         U4CS953s6Fw7rmxa8pYknBw4ZxrelKFLL8z5+J22Az8Bq+7Vnj+yzPl/ed335EvvRB/p
         zISm1082OLfw4+XPeuE/N4n+pKiGahV2wMp2TGnJi1wk46gtnJ0wsgy6ASF42+d8OoIT
         d+Ac/noP4adXJHY0qext/Pcwcm9bR/uKEaLctl6dbgnpcW6KsPt1u/ZgPRdiRUHpZls8
         BRJd7CqR9KAFGk9U3RsWDjT6mQQBzWTR4KP4iFXD/ibUMXvnjD/BUVn9fjh3/NgNx/cl
         C3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x+PAtg9BEfaBeVDYjq8MiVIG3ylCM5YSds46prh2L6Q=;
        b=TFdmJ4oqlNoe2RV3wxP8virgUdWUEaYYIGoviK4Lt6QBEru4HzW+fDRvAjZ4BXetVb
         FGQcwUfxlfInNe9A4J5/8w0PGeO2P98BqDHq0szW0gi1EnUux5zSv5GOeAO78Jze5Mv2
         0QmSy0fkcLOcD4CqpD8hAUBL0xMn7n09lSnz4X+wPwHIfWY3qy5r4ep4LRPVK38Wjpn9
         KCWh2g20kJni4Kd0ceHs17aFy6jD5/B0l1Vz0h8Ua2P271i9f2qSODiCEPW29y/rJClP
         Yo32oZ/QNH5k8lGsYJuqkJ9sJhc1KFZ1y524ds8QbQ/IT7FDywcNE4hBTGUQy2ibmQEU
         IFbQ==
X-Gm-Message-State: AOAM530uH+yGMScw9+H9sXOJ3BRikWFLThGq5th4EDDPgUQku2kZE5e+
        eT5IcN42vkaoTmPK79Z/3bOdzw==
X-Google-Smtp-Source: ABdhPJxQVQh4foQW+IEnamXeadag9G00y2Lto7Ys7u9O2JJ3HDGd7JwNKXB3rU6aWujXn8BLIKzBaw==
X-Received: by 2002:a2e:9798:: with SMTP id y24mr24010266lji.227.1625864855006;
        Fri, 09 Jul 2021 14:07:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n15sm590625lfh.70.2021.07.09.14.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 14:07:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/8] arm64: dts: qcom: sdm845: assign DSI clock source parents
Date:   Sat, 10 Jul 2021 00:07:24 +0300
Message-Id: <20210709210729.953114-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709210729.953114-1-dmitry.baryshkov@linaro.org>
References: <20210709210729.953114-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Assign DSI clock source parents to DSI PHY clocks.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 0a86fe71a66d..e13097ef271a 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4260,6 +4260,9 @@ dsi0: dsi@ae94000 {
 					      "core",
 					      "iface",
 					      "bus";
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&dsi0_phy 0>, <&dsi0_phy 1>;
+
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SDM845_CX>;
 
@@ -4326,6 +4329,9 @@ dsi1: dsi@ae96000 {
 					      "core",
 					      "iface",
 					      "bus";
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&dsi1_phy 0>, <&dsi1_phy 1>;
+
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SDM845_CX>;
 
-- 
2.30.2

