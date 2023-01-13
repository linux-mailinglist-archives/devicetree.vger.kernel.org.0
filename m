Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BEC666969A
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 13:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241221AbjAMMND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 07:13:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232935AbjAMMMB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 07:12:01 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38F226B5D1
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 04:07:02 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id g13so32844376lfv.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 04:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksf6wPCM78iDSAnwWvEN2fC3NKtOND1ShZbLm8iD+Xs=;
        b=ubeSSU7IIZztio2IXXQ0eFrvFYHx3By1DgnBksr+DMIEmucsGZNJZKGi4MfcNNvdDp
         o8VMzGzH1Vp/Ebed5eSR1Cx9kQkxsw9VqmEMBjB9c6FCsVH13OII3CNL6DahFitapnlA
         P4/dSVdECqOisJC15I2CPRo4u0fkJPJtIV3gXsCMLhIs+0ECfwNXcHm28iK/meKm0Q34
         0AlZrpRACFSUO4/JC9e0jOrld5/gWyd4XH4n+cMwtMYpEJgqgT4O/9r6yljZAyISoCgu
         0/nsKO0/wlv0EZFBLi/oUem0Q8H/Vo1X0i9Grg37Pby98U6K7M1vClhPBQY1uH+p8ND2
         Ucpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ksf6wPCM78iDSAnwWvEN2fC3NKtOND1ShZbLm8iD+Xs=;
        b=DI3wuWQ5CuqlXatsIcRfwSzzJI7+d0TMy/5zqe9MunPF6znzqsA5/uVeQpYnw9fPya
         ohfJF/C5QvWtkKiWK4DFuWmCPKkaOLOjQKBeBFNG7rlw1N5U+LtWsEkXV24L99HXzo2Y
         AsMyLsNMinJndFMcBtylW9QQZQvlbALxmPA27p+hDHw0laXtprxMfxTo+XyLL46qmBlJ
         pFddi2nQJiHfbAdHIDo2KI8rK7wiPbZMvMdvVDCJXtUrF99ktL/rL88mYScaqPhpY9P0
         GoxBKDbLf7lLwwH0a3PgiBj0ZRpyZBUKjc4jwgAELDniTsyz2WZyLsmu3wmaYHMFK91r
         ZLmw==
X-Gm-Message-State: AFqh2koLlGKFheQBryr4ursWp/kJlegbYAAd/3/6qn1cDjwcsOqBUM4P
        0cnqkqN5qXTUtLNps8BYADM2zg==
X-Google-Smtp-Source: AMrXdXtT/+PSu7BZPrSZYRkksoaCDocW8kdf0WVwYm+vo+4pTjBO429VwflQphgVBElX2JGuXGI3AQ==
X-Received: by 2002:a05:6512:3f0c:b0:4b5:2ef3:fd2b with SMTP id y12-20020a0565123f0c00b004b52ef3fd2bmr26921445lfa.18.1673611620600;
        Fri, 13 Jan 2023 04:07:00 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.170.82.205])
        by smtp.gmail.com with ESMTPSA id i7-20020ac25227000000b004ac6a444b26sm3806290lfl.141.2023.01.13.04.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 04:07:00 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 05/14] clk: qcom: cpu-8996: support using GPLL0 as SMUX input
Date:   Fri, 13 Jan 2023 14:05:35 +0200
Message-Id: <20230113120544.59320-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113120544.59320-1-dmitry.baryshkov@linaro.org>
References: <20230113120544.59320-1-dmitry.baryshkov@linaro.org>
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

In some cases the driver might need using GPLL0 to drive CPU clocks.
Bring it in through the sys_apcs_aux clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index d51965fda56d..0e0c00d44c6f 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -12,6 +12,8 @@
  *                              +-------+
  *               XO             |       |
  *           +------------------>0      |
+ *               SYS_APCS_AUX   |       |
+ *           +------------------>3      |
  *                              |       |
  *                    PLL/2     | SMUX  +----+
  *                      +------->1      |    |
@@ -310,20 +312,29 @@ static const struct clk_ops clk_cpu_8996_pmux_ops = {
 	.determine_rate = clk_cpu_8996_pmux_determine_rate,
 };
 
+static const struct parent_map smux_parent_map[] = {
+	{ .cfg = 0, }, /* xo */
+	{ .cfg = 1, }, /* pll */
+	{ .cfg = 3, }, /* sys_apcs_aux */
+};
+
 static const struct clk_parent_data pwrcl_smux_parents[] = {
 	{ .fw_name = "xo" },
 	{ .hw = &pwrcl_pll_postdiv.hw },
+	{ .fw_name = "sys_apcs_aux" },
 };
 
 static const struct clk_parent_data perfcl_smux_parents[] = {
 	{ .fw_name = "xo" },
 	{ .hw = &perfcl_pll_postdiv.hw },
+	{ .fw_name = "sys_apcs_aux" },
 };
 
 static struct clk_regmap_mux pwrcl_smux = {
 	.reg = PWRCL_REG_OFFSET + MUX_OFFSET,
 	.shift = 2,
 	.width = 2,
+	.parent_map = smux_parent_map,
 	.clkr.hw.init = &(struct clk_init_data) {
 		.name = "pwrcl_smux",
 		.parent_data = pwrcl_smux_parents,
@@ -337,6 +348,7 @@ static struct clk_regmap_mux perfcl_smux = {
 	.reg = PERFCL_REG_OFFSET + MUX_OFFSET,
 	.shift = 2,
 	.width = 2,
+	.parent_map = smux_parent_map,
 	.clkr.hw.init = &(struct clk_init_data) {
 		.name = "perfcl_smux",
 		.parent_data = perfcl_smux_parents,
-- 
2.39.0

