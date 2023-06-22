Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95C0D739C11
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 11:09:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232109AbjFVJGv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 05:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232043AbjFVJEr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 05:04:47 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71E1749F4
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 01:58:17 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f9b258f3a2so44802655e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 01:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687424256; x=1690016256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=om/hpeJ6YsJZU6z6fVNWt1z8zkWkEd+JNPjaMCsn/LA=;
        b=hQNOooZGAssYLnyaqoI1PfZWCYBwedKh3tSElE+VrKZBBc3tApkwaP9xfEOFRTasCR
         XZiGJH1JtSmTnmJRMglRMSO2lCHJ06/7HvPpiBx5O7y38n9tBWFDkjEVw9SFu3pGEMMj
         C1vKmo5PQVEKfIAke9PcRxMAftA+3gDc4VBMe/UkqaU/bQE1VuRqj618I9dPlQuzvegl
         +dgtXw1kPJc5I4vQM4vimIOnFn3f3ba21izLxkoIe62awuNnlzcv4cXE21ftMQh6FaFT
         0+JK1+thUl2ozDWPaGCRtOyQVs6z/deXwq13go00bMMxPIPsyaChTh+ip5DAtBmW2o7R
         yzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687424256; x=1690016256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=om/hpeJ6YsJZU6z6fVNWt1z8zkWkEd+JNPjaMCsn/LA=;
        b=eQtNK8PBKB8Vi/mEpw7DyjTq+T5v0B/QXyO/55/6Kn2SgwFFU6QsIi3rUvT16lv0O+
         POPMgOzzorU9UO4MYwdYWrsKJCyztDLM2iCGujPQm941EULkQuCs62X9gykBFNwbpnNx
         Qkr4lZEyRMIeZNrhEUcNCOQdOAyIMM1YdtqngIr5dOa+kPWNqKl4GMvix85G/tLKNHmg
         XzYf8tJYWQfwsIa2czYdSErH1plXGLyppqZmQeeC1qXOwfzqr26zfOHmNsBwXfgqDz4C
         rS7uJD/u4Gh9ENpxtg1rS2aR9ToT/wrYoA7icTQGyMqLojJqF9HKlSGrMAF6PsYqMG7C
         1tiw==
X-Gm-Message-State: AC+VfDwVkh76CMHsIwzf6mBQKzWnfI0+/Rsc99quWUByrNzuRQlxfn7n
        EPiwiDYRLH0qw2fL58qqoqlxTg==
X-Google-Smtp-Source: ACHHUZ5M562Gx8B1LSdx1KwsEOFGTMTRnXJVp0Afgo4IUbS2wx6RDEcLL9TS5lzWnWUriuL9mKFkcA==
X-Received: by 2002:a05:600c:3799:b0:3fa:6fc:679f with SMTP id o25-20020a05600c379900b003fa06fc679fmr1466153wmr.25.1687424256704;
        Thu, 22 Jun 2023 01:57:36 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c20ca00b003f9b29ba838sm7136305wmm.35.2023.06.22.01.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 01:57:36 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Thu, 22 Jun 2023 10:57:20 +0200
Subject: [PATCH 3/5] arm64: dts: qcom: sm8[1234]50-hdk: add chassis-type
 property
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230622-topic-sm8x50-upstream-chassis-type-v1-3-13f676eb71f3@linaro.org>
References: <20230622-topic-sm8x50-upstream-chassis-type-v1-0-13f676eb71f3@linaro.org>
In-Reply-To: <20230622-topic-sm8x50-upstream-chassis-type-v1-0-13f676eb71f3@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2135;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=h4pYCJwd1gZJKanPo5q7rpNOmu/dAkP4wXEaQN3yc8M=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBklAz7JBOlAAijNb2tycjxhv3S6eKFbJ5jvNoa27JC
 HYdGPUeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZJQM+wAKCRB33NvayMhJ0bP9EA
 CPIOyLHOqXLr+bFH+R2TFNu6PTaWHt3V11X0QI+13Zf7/0S/eMMGu56wpUvfCDd1heU4DmWaCAnN+B
 We6MZ2IFajnV/VoiTZEQVlrjD1aCJfRiZ3jo2YJKRZiaaA8wqqwKPI9w2lwe7L1GxA+QPd7ex8Svj1
 ZJLAMXDmXj6m/6wnEhK5bM4g3ZQXF/sTKsLQveiA+UZC6Asl8g+DnzG7qQhI6Zm5jR73a5yOEI5DTy
 mqXQIRSgOxQNsHB568Sr1TDEgkkJnagcEM91zhs3im9AcHqm2+5gkbtRbxD5WkjfD8XoKsFRabwy0F
 APyBZpLuXEmHl3kFAgFCJz9UIG/n5LsdRU5en6m2K0hEVAgUZ6HM44tqaSugn4d0ATIrE8Oa1xkhGP
 FLkpJCqC2idBBl11MDhNqvBYWL5hbB2tCt8QMV4uHWtQfCnoegBmayHOiUrg5D7MOB0KmdFctTFQgM
 Sz24gVwRAKvZCfMinKf75eE+dYeFWuy4xYsrsxPtO0ovdZ9I8e6Uty3YQVTgcpDwMyJw0oLXsBNAES
 CXMaGxF6xkYZBvDejyv+ulQf06lFWdm8q0EO0KAWGEpnXD7rocjfIa2soqQ5bjfcoiKUJdtteucz83
 Uq8D7l/XpWLAdztHTNV6qhHYMhbXnzLtoVZOO6dHS0GgoVwWp68IlAjlsDeg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm's Hardware Development Kits devices are embedded platforms,
set the chassis-type property to 'embedded'.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 1 +
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts | 1 +
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 1 +
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index c0200e7f3f74..bb161b536da4 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Qualcomm Technologies, Inc. SM8150 HDK";
 	compatible = "qcom,sm8150-hdk", "qcom,sm8150";
+	chassis-type = "embedded";
 
 	aliases {
 		serial0 = &uart2;
diff --git a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
index 0aee7f8658b4..1bbb71e1a4fc 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
@@ -14,6 +14,7 @@
 / {
 	model = "Qualcomm Technologies, Inc. SM8250 HDK";
 	compatible = "qcom,sm8250-hdk", "qcom,sm8250";
+	chassis-type = "embedded";
 
 	aliases {
 		serial0 = &uart12;
diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 61dd9663fabe..a43e153e2a65 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -11,6 +11,7 @@
 / {
 	model = "Qualcomm Technologies, Inc. SM8350 HDK";
 	compatible = "qcom,sm8350-hdk", "qcom,sm8350";
+	chassis-type = "embedded";
 
 	aliases {
 		serial0 = &uart2;
diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index bc4c125d1832..984e3960a3f3 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -19,6 +19,7 @@
 / {
 	model = "Qualcomm Technologies, Inc. SM8450 HDK";
 	compatible = "qcom,sm8450-hdk", "qcom,sm8450";
+	chassis-type = "embedded";
 
 	aliases {
 		serial0 = &uart7;

-- 
2.34.1

