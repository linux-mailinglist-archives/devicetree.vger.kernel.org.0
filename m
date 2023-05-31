Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6AB9717B01
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 11:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235257AbjEaJBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 05:01:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234799AbjEaJBi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 05:01:38 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92034135
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:01:36 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f3b9755961so6216144e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685523695; x=1688115695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRDkbjMTdDqIX5txCgAI4qwPmqTuC0wBW6Dd+QET4Vg=;
        b=aJfxubRXb5x1zHRFjCAXEHB4LdoqpZF7IAqlg4LUNeG2wdmcLSFNxGHJ2ggXXozOEG
         iSunyTSAz+yAYvBKwU3fb+qUTV5jdOuD6S7dUSyMZScotapFVvlXvDWaUHoQIJgO/irm
         xIuqb/EPQYgGgY/naa9xVq7hU+L7UbzgjEYwz6Sr4kwrz2WznMC3Otzay9/d7IQ74XKL
         JuozV8swJzhGH2gwnNs1c3NwxvxvCjBllT7FpEQ7MzXRGoI9lSl21oUkwiFT5oRP6LxD
         qbyVAR70MBV53ZZtSyDUwZN15WS9bZslb7Tg2EILJ9AyG20FHoXdLbdNCu5HBjKjJtL8
         NKGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685523695; x=1688115695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TRDkbjMTdDqIX5txCgAI4qwPmqTuC0wBW6Dd+QET4Vg=;
        b=c2jkLN9cYL95onbXUySDVZwrIzJg6l8hA365b8BY4SluE/dxVRvcVjLpbmzH0dqQ1V
         /0hOp815FunR0cK08Vqr8zaUeRFTWA4ySkVJSO2lTEFnzG8xL4pAkKxqSK94LQVGbp7w
         wr+RyktDjN23nW9MkP1BfKS3JDjrDVrohkW0TmXhv/AS+MAh9TFrboON/HuqdfYdFJ1e
         ai+hUnHk1Ok/DsX/WiD+V1NrNam6UxCghxlG7rUjgGHi2F18a//9VRzW1TSdjL8GBHm+
         +9soec7vNjINGyrao+xezITueq+fClVMef1TCJIbGeMJGlge/458TOoHdEUS44LgDUwK
         Sfjw==
X-Gm-Message-State: AC+VfDxKMQDt1gHQrxo90VU0PDrZpg3ed4FIeSjfiRDoWRaSBVa+cLSk
        5S0+AMx16sbZL/djeb5jJOGNGw==
X-Google-Smtp-Source: ACHHUZ6+/Qk5gAJYAjLG8FzKNVMug7bY6Nbrgy6YrjoDolg3NgEkWoyRilUbuWh7St3iWPxUWnbsjQ==
X-Received: by 2002:a2e:924b:0:b0:2b0:497a:2029 with SMTP id v11-20020a2e924b000000b002b0497a2029mr2279050ljg.23.1685523694853;
        Wed, 31 May 2023 02:01:34 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id f4-20020a2e9184000000b002adbe01cd69sm3217446ljg.9.2023.05.31.02.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 02:01:34 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 31 May 2023 11:01:23 +0200
Subject: [PATCH 4/4] clk: qcom: mmcc-msm8998: Fix the SMMU GDSC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-8998_mmssclk-v1-4-2b5a8fc90991@linaro.org>
References: <20230531-topic-8998_mmssclk-v1-0-2b5a8fc90991@linaro.org>
In-Reply-To: <20230531-topic-8998_mmssclk-v1-0-2b5a8fc90991@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Imran Khan <kimran@codeaurora.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Joonwoo Park <joonwoop@codeaurora.org>,
        Jeffrey Hugo <jhugo@codeaurora.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685523686; l=1105;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=U11cPNBCetgr5hd+fDIKoJDD5fDRdvw6Gnlma9DUXKU=;
 b=N3+OLnogrIsl+g8OU9USSSHaW3r6dF+xQp++9Sdi5dDUtVtkR4Fsz0TOp+XZXk2eA25+y0lcX
 zb4+VCa6xi+BhsZqQAlHww+t/C/O0XsXx8tNBBbragw5+aSpME8EHtT
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SMMU GDSC doesn't have to be ALWAYS-ON and shouldn't feature the
HW_CTRL flag (it's separate from hw_ctrl_addr).  In addition to that,
it should feature a cxc entry for bimc_smmu_axi_clk and be marked as
votable.

Fix all of these issues.

Fixes: d14b15b5931c ("clk: qcom: Add MSM8998 Multimedia Clock Controller (MMCC) driver")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/mmcc-msm8998.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/mmcc-msm8998.c b/drivers/clk/qcom/mmcc-msm8998.c
index 9b98e0fb8b91..7b1d105afbd8 100644
--- a/drivers/clk/qcom/mmcc-msm8998.c
+++ b/drivers/clk/qcom/mmcc-msm8998.c
@@ -2628,11 +2628,13 @@ static struct gdsc camss_cpp_gdsc = {
 static struct gdsc bimc_smmu_gdsc = {
 	.gdscr = 0xe020,
 	.gds_hw_ctrl = 0xe024,
+	.cxcs = (unsigned int []){ 0xe008 },
+	.cxc_count = 1,
 	.pd = {
 		.name = "bimc_smmu",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
-	.flags = HW_CTRL | ALWAYS_ON,
+	.flags = VOTABLE,
 };
 
 static struct clk_regmap *mmcc_msm8998_clocks[] = {

-- 
2.40.1

