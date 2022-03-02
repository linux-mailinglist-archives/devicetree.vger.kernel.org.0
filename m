Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB3E4CB2AB
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 23:58:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbiCBW72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 17:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbiCBW71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 17:59:27 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0521216AF
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 14:58:34 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id i11so5370780lfu.3
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 14:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I/L0yu6xWoay6PlawGPpd06J/A2WPkL2s2cqdaEK+Ks=;
        b=b94OIzWbOWEGzrng+NGPHaIrx/8QeINkda6Ml263QN1J+oQbqRkOIt79judywV36nB
         EBELVRi8yLkxbmFX9xDQBOzTD82Z8GHuMPr9QqAmkk/8aX4gGfrJMhf7vN/QEESU7Rja
         5wGREPlwRjZtPgCOwYPgqYrpeFszqOv4ZyaMCnIwKmhVGQQJb7BWnoY/gYwyplXQ7cJ7
         pDtSBof5k3cxKJQjQauif9RtTCMu7hwoSPUTNCH4yZsGSr4m0EQRl7un2VYmVI4Nj5zU
         wB397Lrqu67l0iW2rxkW3I01a82yBW9G2DcU8LVMVAdxTf3Gs4KQUBGUjlefnJ5Q7eJB
         INRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I/L0yu6xWoay6PlawGPpd06J/A2WPkL2s2cqdaEK+Ks=;
        b=tzYJm2pVras2AKm1Nz003dhUX2oK6svAi/TcKnT4bwJdPYCqM3CwdRCRWtT6spvWiJ
         L+sEqSzIL8VEmnRVuYoXgWlXL+qj4k5UPUlwHHt/aPOtZ3rOuNMUPh+Ec4+fbY4F3TnE
         G7XoG+c5DzmXK1qOUAiFqXj92yyUSi+BusrJ7xdz7aiXWctUN02ASuf1M4jUpf5b69xg
         lGJ7KoDGjVBLPrfXwONMBqM++OAC5ecAWtjgcYP5r3huSzFAwxVZPof1gEePsmGOCNa1
         kWEht07HneAxUQuwbrHy0WIkJZDc8Exb7B33/QMO2TYPKo24LvJFST102Wv3xHh/ApOH
         U8IQ==
X-Gm-Message-State: AOAM5318/pkZkz8ntioJhc5Qsi1DCWBok3hl8BR2RTqjcuJ2e+PSFQp6
        Zx5ru8ZcXQzZz6Rg0N9RoDz3kg==
X-Google-Smtp-Source: ABdhPJwwvQR0vD9FZ299QAiPm1IxiWVuAajuPYm5A9TWGw/1UDW6EZnSZpLduvd6UfFyY/mSiEZLoA==
X-Received: by 2002:a05:6512:ba6:b0:42a:84ee:d9d9 with SMTP id b38-20020a0565120ba600b0042a84eed9d9mr20848149lfv.353.1646261659976;
        Wed, 02 Mar 2022 14:54:19 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x26-20020a05651c105a00b00246585ccd53sm54236ljm.75.2022.03.02.14.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 14:54:19 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: [PATCH v2 6/6] arm: dts: qcom-msm8974: Drop flags for mdss irqs
Date:   Thu,  3 Mar 2022 01:54:11 +0300
Message-Id: <20220302225411.2456001-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
References: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The number of interrupt cells for the mdss interrupt controller is 1,
meaning there should only be one cell for the interrupt number, not two.
Drop the second cell containing (unused) irq flags.

Fixes: 5a9fc531f6ec ("ARM: dts: msm8974: add display support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 412d94736c35..3b9af5e24907 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1495,7 +1495,7 @@ mdp: mdp@fd900000 {
 				reg-names = "mdp_phys";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <0 0>;
+				interrupts = <0>;
 
 				clocks = <&mmcc MDSS_AHB_CLK>,
 					 <&mmcc MDSS_AXI_CLK>,
@@ -1530,7 +1530,7 @@ dsi0: dsi@fd922800 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <4>;
 
 				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
 				                  <&mmcc PCLK0_CLK_SRC>;
-- 
2.34.1

