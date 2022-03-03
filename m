Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1BC4CB97C
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 09:48:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbiCCIti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 03:49:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231608AbiCCItg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 03:49:36 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C734C17584B
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 00:48:48 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id c14so4874306ioa.12
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 00:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MSMHKR0pmUBVsu3Vu2wBxwFcKUCdAyp38lru1FeWzYE=;
        b=mNlWeTevAfC6NBCmgAqO7gQgNy0HxOaeX7ypa+R+i8lHm7E6Qxfqktf+3G+1FmnWs+
         FisZv0YRzClLKs3OT/u3rNZViWcMFBkMKWI5jYipSyNSWfdqYUF74IZG4zVqAeSXnN8E
         p+lRi9exYQ3G7hoP3v5jvTdw2TbgtOJB85OfKvCNmp0mZzGsCEXzKYxeYRHU1t2Xf0cy
         JtkSkUVrWrCaDKV+As6AGNtxH1O5nzkHvvcBRl2lN58ZMhJCTiA/VJGBfzBL9fgcDlGg
         Lu6nzgydgwClyT4CoFKgG3XdNkgGIBu+gK8y3XyUAtZ/uTYH0QYxUGnwEpJlAt4aYlLG
         y+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MSMHKR0pmUBVsu3Vu2wBxwFcKUCdAyp38lru1FeWzYE=;
        b=uAz+lmuhsQIml3Q88atvCt8pAlmHTuMD0dYue9/FfBzSqeKbS6fgVu346Mdbp6NHpZ
         28KEP/ol4o6IZDMOYl9Wge/FMJ7K3uEyphFNNK9OArCvnMxDiOBL89MleN6yeNG63ocw
         OVY01stXcvTgnRSYRSCuJHBA2ZNMszpIsE3R2qA5D3P1Y41G8T3HDKlqScjNe51oD8lg
         L12dkspw5Jpiqu79U9lT7iJL5gmi+2VMvPcBXG6t+8bbjPT3Wiyzramo1V4jfDp/WOIZ
         zT6oZFVLYi5MJ3lKWCVcJijgzzYs4/pClvUlX03Ywj8kxtcU/mS3YCFAA/fRrq/qMld6
         ZHdA==
X-Gm-Message-State: AOAM530BBuj9dxhqMDQdr510jd79MdJN/HVCuIkCpRH9aHqVWgtvFMc2
        Urj8sJogQPnAYRpFNNzsdpy+XQ==
X-Google-Smtp-Source: ABdhPJxk4BEn7tYqG9TYEaBYdHLNzALSFZ3qp6vUvK8puPIYmfuW2OoY4zgtrIqQFLL42BG5MiF1Iw==
X-Received: by 2002:a5e:881a:0:b0:640:d0a5:2bfe with SMTP id l26-20020a5e881a000000b00640d0a52bfemr25696913ioj.34.1646297327976;
        Thu, 03 Mar 2022 00:48:47 -0800 (PST)
Received: from localhost.localdomain ([182.64.85.91])
        by smtp.gmail.com with ESMTPSA id m9-20020a923f09000000b002c2a1a3a888sm1480704ila.50.2022.03.03.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 00:48:47 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, sboyd@kernel.org, tdas@codeaurora.org,
        mturquette@baylibre.com, linux-clk@vger.kernel.org,
        robh+dt@kernel.org, bjorn.andersson@linaro.org
Subject: [PATCH v3 2/6] clk: qcom: gcc: sm8150: Fix some identation issues
Date:   Thu,  3 Mar 2022 14:18:20 +0530
Message-Id: <20220303084824.284946-3-bhupesh.sharma@linaro.org>
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

Fix identation issues with usb30 gdsc structs in gcc-sm8150.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/clk/qcom/gcc-sm8150.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/qcom/gcc-sm8150.c b/drivers/clk/qcom/gcc-sm8150.c
index 245794485719..85a431ac417b 100644
--- a/drivers/clk/qcom/gcc-sm8150.c
+++ b/drivers/clk/qcom/gcc-sm8150.c
@@ -3449,21 +3449,21 @@ static struct clk_branch gcc_video_xo_clk = {
 };
 
 static struct gdsc usb30_prim_gdsc = {
-		.gdscr = 0xf004,
-		.pd = {
-			.name = "usb30_prim_gdsc",
-		},
-		.pwrsts = PWRSTS_OFF_ON,
-		.flags = POLL_CFG_GDSCR,
+	.gdscr = 0xf004,
+	.pd = {
+		.name = "usb30_prim_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR,
 };
 
 static struct gdsc usb30_sec_gdsc = {
-		.gdscr = 0x10004,
-		.pd = {
-			.name = "usb30_sec_gdsc",
-		},
-		.pwrsts = PWRSTS_OFF_ON,
-		.flags = POLL_CFG_GDSCR,
+	.gdscr = 0x10004,
+	.pd = {
+		.name = "usb30_sec_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR,
 };
 
 static struct clk_regmap *gcc_sm8150_clocks[] = {
-- 
2.35.1

