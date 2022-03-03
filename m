Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC5C4CB982
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 09:49:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbiCCItr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 03:49:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231608AbiCCItm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 03:49:42 -0500
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDB8416E7ED
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 00:48:53 -0800 (PST)
Received: by mail-io1-xd32.google.com with SMTP id r8so4974934ioj.9
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 00:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=482hD2qt/fBTqqMj7tAx9n2UG+YZouWq5uywKb+Ersw=;
        b=M19HlaEWFMO5kHQfzFlCLzmDcVSL7CIc0WlpcCMOt9UgrGMCX4Lr0eNBQ5L6PyXgl8
         IkHtVnjDicQhYvUbChvfUgrsu2QfAuhtnwGJLJc0TcXKu6eUe9oHglyI7PkxlnH6hUx3
         aaFpSrogRbKBIobHDn5OTu8YJBTcwN5YZjjffLSb3yysxbLD0xoO47DF1HBW60GfOMty
         AogDZ6dOstriarTzpKLv+3xBXF+8KhfiDOAgP+A5ocHrBQc1jjP+DfI1twjNWOb1oGWN
         w2nScQ7ohoKGjjStfKCpFaJrPruocyH/u3DMg+sTExXCEQehx9VCQ7PPhBsig0RT2jSL
         945A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=482hD2qt/fBTqqMj7tAx9n2UG+YZouWq5uywKb+Ersw=;
        b=k7tZnhjysRO4OxPQmtJNc2/1Ut/3gb0DQBLbtK3LZFpLbd5AD8U4fCI/v2bBEQuvig
         v0Ha+Pc3aistlZ/p8cg5P2ywyjD0esOCsQ0aDhSH9QIErIkuk6dDwsCK7APiz9IGe3jX
         x2DJp7RnM0MS8FI8pN1Qn26eE30wbm7FXWWREF9Jzil4pN7gt0Kps6A6fDtTbjjsjnvl
         NRi+ScDEIzGpvpHN19UmajmVdbMxVO1UWuTEHR2rMV1eaxRHyMXJapPYHbqteSTHWiDI
         cyDG9NBbwj+7INRuIWZenVq1zjrkgYNtRoW39C6LJQH3Wl4g5buwkm6fCsz+J8vrfUKj
         Omyg==
X-Gm-Message-State: AOAM533eVKwL9Xn9P5aMWZMM884QULXNN7pyzuG++bKv5Rc1VgY+16IF
        FOsFRfRATkDV50GZS42EVcjGvw==
X-Google-Smtp-Source: ABdhPJyph0+r+OaL+USUMZ6pzp9tvhX9O/L6ChA22JMqK7rKFwLKaSCOe7ZVdIORk9Of7XkvPGd6sQ==
X-Received: by 2002:a5e:d60d:0:b0:640:9e90:c1c4 with SMTP id w13-20020a5ed60d000000b006409e90c1c4mr26083357iom.0.1646297333361;
        Thu, 03 Mar 2022 00:48:53 -0800 (PST)
Received: from localhost.localdomain ([182.64.85.91])
        by smtp.gmail.com with ESMTPSA id m9-20020a923f09000000b002c2a1a3a888sm1480704ila.50.2022.03.03.00.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 00:48:53 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, sboyd@kernel.org, tdas@codeaurora.org,
        mturquette@baylibre.com, linux-clk@vger.kernel.org,
        robh+dt@kernel.org, bjorn.andersson@linaro.org
Subject: [PATCH v3 3/6] clk: qcom: gcc: Add emac GDSC support for SM8150
Date:   Thu,  3 Mar 2022 14:18:21 +0530
Message-Id: <20220303084824.284946-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220303084824.284946-1-bhupesh.sharma@linaro.org>
References: <20220303084824.284946-1-bhupesh.sharma@linaro.org>
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

Add the EMAC GDSC defines and driver structures for SM8150.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/clk/qcom/gcc-sm8150.c               | 10 ++++++++++
 include/dt-bindings/clock/qcom,gcc-sm8150.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sm8150.c b/drivers/clk/qcom/gcc-sm8150.c
index 85a431ac417b..08ba29e3a835 100644
--- a/drivers/clk/qcom/gcc-sm8150.c
+++ b/drivers/clk/qcom/gcc-sm8150.c
@@ -3448,6 +3448,15 @@ static struct clk_branch gcc_video_xo_clk = {
 	},
 };
 
+static struct gdsc emac_gdsc = {
+	.gdscr = 0x6004,
+	.pd = {
+		.name = "emac_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR,
+};
+
 static struct gdsc usb30_prim_gdsc = {
 	.gdscr = 0xf004,
 	.pd = {
@@ -3714,6 +3723,7 @@ static const struct qcom_reset_map gcc_sm8150_resets[] = {
 };
 
 static struct gdsc *gcc_sm8150_gdscs[] = {
+	[EMAC_GDSC] = &emac_gdsc,
 	[USB30_PRIM_GDSC] = &usb30_prim_gdsc,
 	[USB30_SEC_GDSC] = &usb30_sec_gdsc,
 };
diff --git a/include/dt-bindings/clock/qcom,gcc-sm8150.h b/include/dt-bindings/clock/qcom,gcc-sm8150.h
index 3e1a91876610..40596b9ded06 100644
--- a/include/dt-bindings/clock/qcom,gcc-sm8150.h
+++ b/include/dt-bindings/clock/qcom,gcc-sm8150.h
@@ -243,5 +243,6 @@
 /* GCC GDSCRs */
 #define USB30_PRIM_GDSC                     4
 #define USB30_SEC_GDSC						5
+#define EMAC_GDSC						6
 
 #endif
-- 
2.35.1

