Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA3423C2AA4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 23:07:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbhGIVKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 17:10:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230242AbhGIVKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 17:10:21 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F4E1C0613E8
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 14:07:37 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id t30so10109894ljo.5
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 14:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=layNZSd+FoZtOkJhwys8kJ/X4gIdfKOk3GqyJJHYn6Q=;
        b=coglC/wbvbN6RbZRMT1YmxXhRt7rGu2KEGgXeXccq1bOSGv7sKZhEvyF3nwZpXMxJU
         DglD/MxK6Zr+gOZq7u35l/xf1sBBu4/jYy6nW3rLT8o8vbl1LazqhpwtE1tC0SOCvZXz
         Iwhu61eqKVfhA/GjV+j5cNR+tegxNELzIZDYNC0PpySrCGaQbUyaXO0D00OOmrScBvz6
         gWMdt/pBoC3HZff87bW/r/YLz/iTYlPIvZyq5PRlG5zCPR6bIU+G9BY6ZkZzoXmc1/iy
         L+pm3A2m3Ybu6OF8XjLUdBvpaVet8J1iOD5Mf8W1mxqRp68Na1g6P4QaQ4HKA/TCYNyT
         MWPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=layNZSd+FoZtOkJhwys8kJ/X4gIdfKOk3GqyJJHYn6Q=;
        b=YoGPG6LuGNhCthZcJPx0v0cd8ZeqAsy7VlSoUtUakCT1RQwX5b/w25D6F+aWgoSdpI
         pUBLQ5Hw12eg39Y1tNn0hiatf/Zdt0/eMrMkOdCUmLY3BxmRIDHq9izpV8plTg4Q6EXa
         IpDwh7cTqrpP/XhwyeftVF6zTnM3sRf3q2Mkpegd6jux1YfOEZ0LzkhtKSOytlHBhlzY
         ecymhQzf5F4T2vReu9Jskj1C0YlYYHZm1HgK+bkYmrJz6Ms7UlM2qIKwey6WSwQnpCjh
         pmz7hzeTaXRjyfllb4oJ1scAXdG4CtbepCZ32HWghNnTV8P/Q4Q21fmaCme21eJDgsh5
         ORnw==
X-Gm-Message-State: AOAM533OotvZp6UeqE1d4kIOpJnI1pa67WeOug6ExTwl8Jm8h42zcdge
        CYMl2T3f+DmnFMdbUEBTkQgsug==
X-Google-Smtp-Source: ABdhPJz7xuBU5NOJN1nd0AYqcPHRMXHSzVuZToBMwu3vNHnsDhmOJJCRsk4rOGschmV7VAheB8HVmA==
X-Received: by 2002:a2e:4a1a:: with SMTP id x26mr14643990lja.178.1625864855832;
        Fri, 09 Jul 2021 14:07:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n15sm590625lfh.70.2021.07.09.14.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 14:07:35 -0700 (PDT)
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
Subject: [PATCH v2 4/8] arm64: dts: qcom: sdm845-mtp: assign DSI clock source parents
Date:   Sat, 10 Jul 2021 00:07:25 +0300
Message-Id: <20210709210729.953114-5-dmitry.baryshkov@linaro.org>
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
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 1372fe8601f5..9e550e3ad678 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -413,6 +413,9 @@ &dsi1 {
 
 	qcom,dual-dsi-mode;
 
+	/* DSI1 is slave, so use DSI0 clocks */
+	assigned-clock-parents = <&dsi0_phy 0>, <&dsi0_phy 1>;
+
 	ports {
 		port@1 {
 			endpoint {
-- 
2.30.2

