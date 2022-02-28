Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53FD54C6C8D
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 13:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236491AbiB1Mbk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 07:31:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236524AbiB1Mbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 07:31:34 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4775C74DC4
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:30:55 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id q11so10567739pln.11
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j3aWYND6Rah5MwBRKosGEcq2he6bs68uYcHr/zACh+Q=;
        b=B8IPW5mdWip8zbN63uWgzsenAT++ZjK5Gzfd2G8hEShQnxQZU2uw4GUE+N5tGRjK7q
         JdLLGD3gmOpS6X4Vvk5OaHgiCYtT5y9mx4kuMVvVpawFFnXyhUosdViFnIGfzdxjRZRl
         DVy0iPbg0MpDRwBvrq1zxDWdMxeC4f4IrgoTaUL/Uuz9YOyul3k4Gqhu7gfY6Npjvm8o
         GEYrgw1EWCTTkORX0gwcWVXJAnf4/DaRQYmqo3MQBcSRk3MV/gV/QAYJlpD6gqsbkhgt
         2CBxzsdwv3+zRHjtK+1OMliIXfcjkzsl3DISJTg56FQ8G2oQ6+/vK7UZj9o/X5PdNC9F
         6lOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j3aWYND6Rah5MwBRKosGEcq2he6bs68uYcHr/zACh+Q=;
        b=PdAK9RChqyNSKYfUg+thRx2PgrfmwUlpkiaJPy2RCtjqqLe4Ye/z+9Wl+nMKwWRMLM
         NoxSr5alVEEpl8bbeYa1IIRsnWiMg3GhC9yDg8pBwbVgvlXBcosLH+pBl6EulR1lAx1o
         XjMT2OWFVsW48iQ8XA1YGX2UZocjwlkrVcrNUKDFaqt7Xu7jb95uMsdsRrdAwj16B64f
         7U5kyTWA/FMsqtKvPw2/cT7V1kIRugjBo9Nd4s2UJE/XZhnKS9rjuaLO8uMmsDY3FR4o
         sK5abypVaIYERuBappXFYHLWWR5MulRUux4+Mf4tgWmIumKvnnfEtJDJlOAyTk/pEUIX
         v4eQ==
X-Gm-Message-State: AOAM5313/OMztf4xs62xvIj/q2/HbuJiT0SFrmzaHujeEZOTyWLKSLM6
        ltxNeNXybCWWlG8lJRqH7aez8RHFJUePCQ==
X-Google-Smtp-Source: ABdhPJxWcPHi467ng6xttXcLULyyw3GisHpRAFDT1q3PqYaIQQOlCff5blDsVc+bjTonIfz3jtrgvQ==
X-Received: by 2002:a17:902:7c88:b0:151:6d4b:a27d with SMTP id y8-20020a1709027c8800b001516d4ba27dmr3526141pll.17.1646051454738;
        Mon, 28 Feb 2022 04:30:54 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
        by smtp.gmail.com with ESMTPSA id f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 04:30:54 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, shawn.guo@linaro.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 5/8] arm64: dts: qcom: sm8450: Fix qmp ufs phy node (use phy@ instead of lanes@)
Date:   Mon, 28 Feb 2022 18:00:16 +0530
Message-Id: <20220228123019.382037-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
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

Fix the 'make dtbs_check' warning:

arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml: phy@1d87000:
 'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 10c25ad2d0c7..68f7fe26f7b9 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1049,7 +1049,7 @@ ufs_mem_phy: phy@1d87000 {
 			reset-names = "ufsphy";
 			status = "disabled";
 
-			ufs_mem_phy_lanes: lanes@1d87400 {
+			ufs_mem_phy_lanes: phy@1d87400 {
 				reg = <0 0x01d87400 0 0x108>,
 				      <0 0x01d87600 0 0x1e0>,
 				      <0 0x01d87c00 0 0x1dc>,
-- 
2.35.1

