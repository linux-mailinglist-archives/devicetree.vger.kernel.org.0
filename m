Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8CC93C2AA0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 23:07:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbhGIVKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 17:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbhGIVKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 17:10:21 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEA77C0613E8
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 14:07:35 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id z9so10107202ljm.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 14:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MRPyZtijc6uk0x4+zCe1BE4IuABWQ/ZgPDiu1mKL+ac=;
        b=WuCcdZ5WE17+D1gtYJAFYA0nto07KkKIHq0dexTzKOQFFLXLp/uaaHlynG1SXQm8q3
         jiJ2TekztfBUp+CICFrRw47wN4AwHwv+0rJ1/rWkPyl+1RusvS/U7XO1QO/N4aJfcpJE
         7howfdeA1yXzDKFrG1N/qTNbYPtANE3zOgpJMbdEK9kF6GFEgVPB731eM/74y+VH2C6M
         fWuQw20sbx1XXQ+6I0cplrKoF5xLeKz1PxCHRp+LKYuBc/hxsOK15EPUhL5a3fbYNjdH
         lc9ecUbQGIUaWbxXMMocOoM3POIjn1XfDp6coOpai1by+GSODwUIv//Tm6T+xXJ9Qh0h
         hnHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MRPyZtijc6uk0x4+zCe1BE4IuABWQ/ZgPDiu1mKL+ac=;
        b=En8xBlu0IbMoJ04GY0c69Gk8pDNUWfeBhDZPf1zOBtGegRRzrMEu++q8iY5OPQjQCM
         i34EYPuTgLqQJXG34AsVWacbPDwsFbiMg3C+Zo60e/2Uto0qKDynW58Kpc8mpKTA0Ahh
         TjOdy92soTcfuVTc0PVo72Qy3aVYTV2lTWjvJBl9uhAuhr9vL6fY68xXz74EMnr9Ly8d
         jY7qOpfAkLjChuzt40QHu1DNvUxvKQbDZrj+4n3hIdiU1hZCftOi/iyFoRVVIEqNY1LS
         qM2ehVMfGZWJV+KgrcwUOklflk13t7xWUoyZTsjO2UYkzwaB4QWSX4OfYI0S1Ym2ocYJ
         GP2w==
X-Gm-Message-State: AOAM533JTyYsRLIPZtwHwAaKmD3Wlo9apGC5IQ8knaZh9LuPxAs1aLP/
        QOsb1ankevJCxOhCnkE79XyftQ==
X-Google-Smtp-Source: ABdhPJzfQ+Y5th8/JtbN7r+h/Lc9cNUsgU3ZLsL+go1aC1KvJ37uO8CDMgsUK0REATmNQLFiWoOxjw==
X-Received: by 2002:a05:651c:4ce:: with SMTP id e14mr30354888lji.176.1625864854260;
        Fri, 09 Jul 2021 14:07:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n15sm590625lfh.70.2021.07.09.14.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 14:07:33 -0700 (PDT)
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
Subject: [PATCH v2 2/8] arm64: dts: qcom: sc7180: assign DSI clock source parents
Date:   Sat, 10 Jul 2021 00:07:23 +0300
Message-Id: <20210709210729.953114-3-dmitry.baryshkov@linaro.org>
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
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 6228ba2d8513..bc765598d24e 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3081,6 +3081,9 @@ dsi0: dsi@ae94000 {
 					      "iface",
 					      "bus";
 
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&dsi_phy 0>, <&dsi_phy 1>;
+
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC7180_CX>;
 
-- 
2.30.2

