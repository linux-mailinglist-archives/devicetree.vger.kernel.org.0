Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FC7E661DE1
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 05:33:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234227AbjAIEdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 23:33:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236782AbjAIEcm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 23:32:42 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64B9BAB
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 20:20:49 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id g13so11163002lfv.7
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 20:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=voUxNI9zYlvcKPOUFsnogN+cXc4BBqk6mGhnSwGNM4g=;
        b=Nzyiak3c+ggCgrOKSxh/EIF8OeDkFmjIbiqu3BQ3GwX8Uaiq1hGsh8fhzWn3RZi911
         CPP9oxX2F920mnS2kCAHIaKJUfdV6x3fYUKJTgCGkLpiRf7zMadOWN0HMreNyD2WqMDw
         vgLoW2qQxOUe9goJoB9WqPiVpDYtgOXSQS9+/4IjVmThSOoqRF0c01GZvPUUeRggxphB
         00YkWDlFhhdOovv+ygkYeRlnTV5MgvhiE++ruLhDc9g3ISYW8HFbE9PfKszQvBhrBaka
         iECN+Dh2qS/CcYH2mnTpbizuf+ehSWFVjmItH2DnBNoOlZKUGdwfqpyt841vT6axiUgx
         ZlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=voUxNI9zYlvcKPOUFsnogN+cXc4BBqk6mGhnSwGNM4g=;
        b=O7DN/OZkIACq8F8nwFF2alZ6SGYD7ut8ilzG45q0B0D34TTShKON/8O13lnPB0SbKR
         9PajcSLqSMaAkm8CzSaGwtX7jOHrrj9UG9/4r8cP8+QkqyKhRO1h0gxmyQKAEBkzu7wT
         u0L+SlwQ6HYwrfx+wN5jhmgo364cKdybhfZoFAzvJaKilTSlSHCR3wWovYp795tz5T1x
         H6HYz39CxJenZV1N5QvaMuVIemWaRyVEc1VNFdxrayG46/fCGWTrmEynlvX9fmfjdgGU
         9Ior+1GywimZSfpsHqSQL5QmJjqNIOrV7jFi9c89rHRgAFH4YLLBey38Qnk5JdvTjp9J
         oQVA==
X-Gm-Message-State: AFqh2kpbhOnKdCXprMxWmrH2LFPDVD52855dv8skeeOuQ5UcFbIypdG9
        WwNCJOuezZBrqEOmnXfqV8bUMA==
X-Google-Smtp-Source: AMrXdXuoDB7G1QMIGNdNpogmbcM/wY1UAVys4ETOQfkWB7upt4SG+A9X5Z7irKrbuEW1rDYgeUNMEQ==
X-Received: by 2002:a05:6512:158d:b0:4b5:90c5:281c with SMTP id bp13-20020a056512158d00b004b590c5281cmr20149092lfb.19.1673238048201;
        Sun, 08 Jan 2023 20:20:48 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id v8-20020a056512348800b004b4bae1a05asm1388029lfr.293.2023.01.08.20.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 20:20:47 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: qcom: apq8064: drop the label from the DSI node
Date:   Mon,  9 Jan 2023 06:20:47 +0200
Message-Id: <20230109042047.309845-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

The upstream kernel doesn't use labels on the DSI nodes, drop one.

Fixes: f078eac68e8d ("arm: dts: qcom: apq8064: Add dsi, gpu and iommu nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 9134bc512cc8..5fdd78477666 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1278,7 +1278,6 @@ mmss_sfpb: syscon@5700000 {
 
 		dsi0: dsi@4700000 {
 			compatible = "qcom,mdss-dsi-ctrl";
-			label = "MDSS DSI CTRL->0";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.39.0

