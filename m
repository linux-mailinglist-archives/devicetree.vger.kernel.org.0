Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C91E5773B41
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 17:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbjHHPri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 11:47:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbjHHPqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 11:46:13 -0400
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 045413A8B
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:40:58 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-4fe0e34f498so9629360e87.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509191; x=1692113991;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJRcX7l83GzG4nljjiXsSgTVORkCZorOu6CVVdtQF3E=;
        b=RP2oyHv/tvvdhS4Nb9im14GaqyfYnt4wxfRffFYh/Sho9Y9s84kY5aIyvYxpRhHs6O
         dEacZJQDabc6gB3odgLRVubW/H2AKR9XE5Hj8dVgrhE1b9rxU9VT7NYFJzpFS2zw4fIU
         KJCOC4K6GrzBdaHQGo4bAB3lJtO8woM9SORp0WnZteK98j91hcL9snkc4JILFaJ9kxOp
         FJ9ZRyaMT+mv1JEA8kvQxeDNF/LLqL9uQROjb5Dd15zFuiQyJY6l+sNvwKrRTqF+4BT2
         S7CAhhoglFrOq4aehU424oe4pWUuOeJs3Q7IPtvpg5Bu7ddXUaUS6dYFbEszIH8cuodS
         PhYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509191; x=1692113991;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJRcX7l83GzG4nljjiXsSgTVORkCZorOu6CVVdtQF3E=;
        b=GAujS3/KGg3FHd3K6TrPVx3xwRP4FuaCVlhAWzP3BRZgj0CfDysjzRhIKdJpLE1ZNz
         DBKYJCLWR0KXABZH08K/k737vTSdiMXtVfoOItXafY+LcDv0MlMuiKYezWUbHFUxncuo
         Jl0ZDLn0Vikms8XelOGmak/dcyOq5aSYSbGSZlxsTkJrAqDJWyB9DiythsC9gpcXlGtT
         XQsqPSCyLq+gGp5/moVCcc3LAIMqoQwZEJmWn2WbveTrHkTMH6dRHS0YjkfeyTN8Krt3
         mbMFwIzcQoB13Ho2h9PhpjpR62raRjeElVQzhi94dmFwhVex52cZrw1pwcTB9jgIZnUB
         jqgw==
X-Gm-Message-State: AOJu0YysmnNxgtkK9rHn1Qr4BW62/+0IWYuENjCb8tAcq0jjf4Hpe71q
        6At4lJqKB8cm8glpsawhocYyLa/1/222zPCcRDo=
X-Google-Smtp-Source: AGHT+IGHUT7VSfmI8VQtBPNaetpOWrfLKOPZbXgUnGq/oqs5MCTMjFVV+jNZ7mtrZHhq6p1BDeKZtQ==
X-Received: by 2002:a05:6512:39c3:b0:4fb:89e3:5ac6 with SMTP id k3-20020a05651239c300b004fb89e35ac6mr9893926lfu.62.1691487893637;
        Tue, 08 Aug 2023 02:44:53 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id i6-20020a056512006600b004fdba93b92asm1818884lfo.252.2023.08.08.02.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 02:44:53 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 08 Aug 2023 11:44:43 +0200
Subject: [PATCH v2 3/6] clk: qcom: gcc-msm8998: Don't check halt bit on
 some branch clks
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-8998_mmssclk-v2-3-34273e275c51@linaro.org>
References: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
In-Reply-To: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
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
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691487885; l=1627;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=4vcJD39xmmwGxR16do/vEynX3nfOkYLGbzSw65dGFMA=;
 b=t/2b5DxWk6eOZxBSMoG1WvSgfjtXnl9wcFAwd+sra0DiGErD9S3YZpkCbKjr1qwJdtT7FY3gv
 IJZo/StB+T4CsgBs40j0+BPJSYBAKHNwSKgL7MrSPgapI+FCbOr3UJU
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some branch clocks are governed externally and we're only supposed to
send a request concerning their shutdown, not actually ensure it happens.

Use the BRANCH_HALT_SKIP define to skip checking the halt bit.

Fixes: db2c7c0a04b1 ("clk: qcom: Add missing msm8998 gcc_bimc_gfx_clk")
Fixes: b5f5f525c547 ("clk: qcom: Add MSM8998 Global Clock Control (GCC) driver")
Reviewed-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gcc-msm8998.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/gcc-msm8998.c b/drivers/clk/qcom/gcc-msm8998.c
index 1ba516a0c0f3..257b27d8eeb6 100644
--- a/drivers/clk/qcom/gcc-msm8998.c
+++ b/drivers/clk/qcom/gcc-msm8998.c
@@ -2060,7 +2060,7 @@ static struct clk_branch gcc_gp3_clk = {
 
 static struct clk_branch gcc_bimc_gfx_clk = {
 	.halt_reg = 0x46040,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x46040,
 		.enable_mask = BIT(0),
@@ -2073,7 +2073,7 @@ static struct clk_branch gcc_bimc_gfx_clk = {
 
 static struct clk_branch gcc_gpu_bimc_gfx_clk = {
 	.halt_reg = 0x71010,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x71010,
 		.enable_mask = BIT(0),
@@ -2099,7 +2099,7 @@ static struct clk_branch gcc_gpu_bimc_gfx_src_clk = {
 
 static struct clk_branch gcc_gpu_cfg_ahb_clk = {
 	.halt_reg = 0x71004,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x71004,
 		.enable_mask = BIT(0),

-- 
2.41.0

