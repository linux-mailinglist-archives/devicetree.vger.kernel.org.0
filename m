Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 597C7654AD6
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 03:11:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235917AbiLWCLO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 21:11:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235896AbiLWCKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 21:10:52 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 184C71BB
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:41 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id ay40so2769370wmb.2
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7tCG2RVp+L8qHK6ZCOnqZpsqAhvGiGNti+CNMhR8tY=;
        b=XpO2l27EmfKRAdLkoWUa00n8PEcJtoqnibEi5ihkSxeCznmTcPkWe4dfL8DtIZJbdN
         OUWXZUHSpHmG20JOQwr50XRBeiZOEUMVfOScyxZGKREqSG+Z8HbD8cPTItcozsgrpNsW
         S4ghDUZWp9GB9FIYrGF26agID3pR32qgUA7RBMYloQvlnUAQ0yC4dFyY/Snn+W0Ff7YW
         Ulf+TODP/cQ/pZXRR9q2OlbDWzb0LLRPP1A79vCAICpAPCGpkorYW8xLHPFzcuurx17V
         7okyIRYbI1Hx2EeS3Cp9eJtpD5bdH4sAqGkxyQKNuCvE6f9HrWd5tK/YD9hOaFW//qAM
         vawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+7tCG2RVp+L8qHK6ZCOnqZpsqAhvGiGNti+CNMhR8tY=;
        b=GUXUqjVwzPbpVW5oKSJdoC1ADrMjuXyuIVsbVhQLOjrOUe2/QqXJrQRBbLJvOLIq7K
         UcLRK2kXxhnzqkIPFY1LAeF59d7irs8qI9HsQ0+cFknHpPeOnspsD9WBVBQ/2ajc8Zka
         ROlsUkTwKsFg2AfvErA38g4dK/o/OcAMbYa7UY3VHgzVSZDX8DaFrkR0YUno3RGE3qT2
         HjSz0AnsCigASL7GGkvc/g37oJ/xBeD0CKEvgYhB/buAzYnNOuA6YYkAY3Q1ePdPJOSg
         XM8PHncOiIXBMovC+FHCtbi5+VxWrGjWidY7BIwFtZlU8xS8i1tGTPKl9l1CFcmmbweq
         FqHA==
X-Gm-Message-State: AFqh2kq7Tg1c/7TdIoYFwdD7d20IXcNipvj5Rs+anvCf7MuQc6bCC4YL
        malGj+DLeGk7rD5USaysSGC1YQ==
X-Google-Smtp-Source: AMrXdXscQ2YCy04SKsOId4OsLJX5iBr6uNz1PZSH8I+aVEvdWEBlVGq1TELm/MLSb5gDqbXCFv6ODA==
X-Received: by 2002:a05:600c:512a:b0:3cf:8957:a441 with SMTP id o42-20020a05600c512a00b003cf8957a441mr5868404wms.12.1671761440308;
        Thu, 22 Dec 2022 18:10:40 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d452b000000b0022cc0a2cbecsm1849725wra.15.2022.12.22.18.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 18:10:39 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v6 11/18] arm64: dts: qcom: msm8953: Add compat qcom,msm8953-dsi-ctrl
Date:   Fri, 23 Dec 2022 02:10:18 +0000
Message-Id: <20221223021025.1646636-12-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
References: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add silicon specific compatible qcom,msm8953-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for msm8953 against the yaml documentation.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index 32349174c4bd9..acbe100d9b5be 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -797,7 +797,7 @@ mdp5_intf2_out: endpoint {
 			};
 
 			dsi0: dsi@1a94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,msm8953-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0x1a94000 0x400>;
 				reg-names = "dsi_ctrl";
 
@@ -867,7 +867,7 @@ dsi0_phy: phy@1a94400 {
 			};
 
 			dsi1: dsi@1a96000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,msm8953-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0x1a96000 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1

