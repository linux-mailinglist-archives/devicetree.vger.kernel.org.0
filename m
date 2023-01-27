Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6319C67E656
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 14:15:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234637AbjA0NPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 08:15:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234648AbjA0NPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 08:15:47 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E804B890
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 05:15:19 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id q10so4947949wrm.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 05:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1/i8HRUIQevoqQyNxhOKILdilu7Ol6BsCbFP0mV8Ms=;
        b=i+jiFsKrA3zgtC2I8IEJAZyCGW6+jHVKNL8KESaldA+ljIIuDA1rXRIh9VanTksvmg
         YGEmmvkYJpEvxv4o0DouQb6SXWeNYgKsIOPoYtP7nDQtVfQz+slqBznlMdaEuz9tFDU+
         0YGecnkttP8ezTkHew81yUgsjkMHGg1fQJ4I8B5w1nkU+SDPgbFd5CH5YrDYuj7VQawU
         ayZvrtxB4FHjIzOpM2XPtzbaZRTKVYjiDuM5YaqO8wNLOZGS0/UDa8etCAA3lV+wTxnU
         ol9Gb7c0etd+FRzjhbUdkY9l6RTU0O4kJVQ/FM0czoBMJXZft0U1PVWIpeOZiFLZ9IYI
         iZog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1/i8HRUIQevoqQyNxhOKILdilu7Ol6BsCbFP0mV8Ms=;
        b=dDn+cga2NbywZ7Fb1PN615Cx/rK1bkO37TzuFYXd+4g+6/9IK2yY3q0xsgtfTzTBJz
         cotU8rVkeOuit/7R5VraMPxoq3hhIhCZnF9KcocRSbxfkxBsqSoo/7T+SmlL99mBilAQ
         uWPhtssGTBhfxurujw19CUq3m6JrCH0HI+5j3eP08ieHhme/gsOEh2H78Aoj5KNkiZM4
         U1ZNhXddR2L2lCFSR2zYLg7rxqlUyKAPAO7bVGe/2pvfF4iOcQuYM7yBP9lrIzvuYENO
         osNrEtpKFhAXMwJdzVqablw+joTT7nWVQ82Ai9Zxhez6sjzSO56Pqfu15EUWHCfd2ZSj
         HUOw==
X-Gm-Message-State: AO0yUKVQYkyitjpcwniicm3vvPzqP5OkzEnjBSjn0/iD3lfW6ltdTjCe
        0zYLu6sConJOZYL5Y18DR/0MBA==
X-Google-Smtp-Source: AK7set/anTV6XicubpRlw2HH2aUQEYPRTgpeUam1ELUNXOPB8Kip+bHD+49HJCAIiBVzY1Dq+99dnA==
X-Received: by 2002:adf:a156:0:b0:2bf:b672:689b with SMTP id r22-20020adfa156000000b002bfb672689bmr9702037wrr.62.1674825291718;
        Fri, 27 Jan 2023 05:14:51 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id u14-20020a5d434e000000b002bfbda53b98sm3924733wrr.35.2023.01.27.05.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 05:14:51 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc:     devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8550: Fix the aoss_qmp node name
Date:   Fri, 27 Jan 2023 15:14:41 +0200
Message-Id: <20230127131441.1157679-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The proper name for it is power-management. Currently, with the node
name being power-controller, the bindings check fails due to the
property #power-domain-cells missing.

Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 6ff135191ee0..57878ea64ee0 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2503,7 +2503,7 @@ tsens2: thermal-sensor@c273000 {
 			#thermal-sensor-cells = <1>;
 		};
 
-		aoss_qmp: power-controller@c300000 {
+		aoss_qmp: power-management@c300000 {
 			compatible = "qcom,sm8550-aoss-qmp", "qcom,aoss-qmp";
 			reg = <0 0x0c300000 0 0x400>;
 			interrupt-parent = <&ipcc>;
-- 
2.34.1

