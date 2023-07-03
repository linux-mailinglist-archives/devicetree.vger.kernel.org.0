Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBFA174622C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 20:20:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231316AbjGCSUg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 14:20:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbjGCSUX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 14:20:23 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1D45E74
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 11:20:17 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b5c231c23aso76561451fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 11:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688408416; x=1691000416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mMoCMtDKw+oilBFVn9iuBCIfJo4ov6JGgxWl+DyeDZI=;
        b=mkJkyf3cCt0nkb+4LfexC3d1AK/CC33YpQLi4RMAQ6jddtFVDVCNk19KxBVVO6ex41
         YvGg3As8fxUKT30C51+08/We/atAU6CPC1fL+X+Wr80NDrR1FzxgtlrQYz1BYZjiut5S
         eOXVX8pm7UaoKk0A7OSsOsDnTaeHOWqx1sgSAnJNFnXGewtViaMpNltNK2/Q0g+G7QqZ
         dqaZPr3QWDKwfUP15wFfX0qogXcNuXAs+aYCmMjaztul5N4wOszC/ksaLHFh76jYp4T6
         ErOSEmsFGQfjc3rDOb1zkalHqG28fXu/sY0oc0N3q3tQh4eMi4ERY6oqkLN/9WTq68dr
         MprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688408416; x=1691000416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mMoCMtDKw+oilBFVn9iuBCIfJo4ov6JGgxWl+DyeDZI=;
        b=hvs/Si0ZCcJYjVtBJTTLF6vDYJT04nIDzwQ+Nv2N3UTdCsXsOs61m/lIi/0kUfYfZU
         83OXBndNZVP9ClqQlpbYj351eraBp/YcNBTRg6z4LQY3M+AOsdIYA8y1p71k71d12Ibe
         YdczDGAcsj67c6BW219lhh5HCchpBCLXvm7nFd4Yw//IAzzpfHORuFFvNHXYUdD8vtwa
         AgxzdAjNZjNUDmOOYDBEWOTP92WW8ES5HNTYsGhV9OyfdghX2ciU+puUaHBJtNM+9w5i
         bhsbHfm8OU0zdnxnsFWg+fu5sJ2LIJvwmQqnmHmQ4XPQYpAsj9Gzr68SqyfzgoDHeonq
         TfWg==
X-Gm-Message-State: ABy/qLaVEXDCPY/GPEpUkJIzHHAtiq2EgAjVxH1NiGLrsWyz9kSnLDes
        FS5QUpMTSYrig4DJBZmn+tmG5w==
X-Google-Smtp-Source: APBJJlEdMlWsbEJAgyrqjFSYTIHacyg2SS1m44Awa4ZwaUPhz9uDUB9S06BvI/4neG0YONpl93/T9Q==
X-Received: by 2002:a2e:80d5:0:b0:2b6:ec2d:a4b with SMTP id r21-20020a2e80d5000000b002b6ec2d0a4bmr2256165ljg.42.1688408416333;
        Mon, 03 Jul 2023 11:20:16 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id s9-20020a2e9c09000000b002b6995f38a2sm4946224lji.100.2023.07.03.11.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 11:20:16 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 03 Jul 2023 20:20:09 +0200
Subject: [PATCH v2 5/8] clk: qcom: gpucc-msm8998: Use the correct GPLL0 leg
 with old DTs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230622-topic-8998clk-v2-5-6222fbc2916b@linaro.org>
References: <20230622-topic-8998clk-v2-0-6222fbc2916b@linaro.org>
In-Reply-To: <20230622-topic-8998clk-v2-0-6222fbc2916b@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688408407; l=933;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=of30u1SnABmz3I8AeyXXYsnJq/vKvFUI7MDU8kDdOEI=;
 b=e9UlQ0qbi7SeWjuaZi73FWEHwOV0ZkqBcHYh6CVRQzhQO0sDUsTh8aV0y0/KQriKJ31lc0ZYV
 pRgsGnb1AjrCnAOwk3EgQifWya7nK/l3i4qJkj3d6QG2UOwInovq6dY
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

GPUCC has its own GPLL0 legs - one for 1-1 and one for div-2 output.
Add .name lookup to make sure older DTs consume the correct clock.

Reviewed-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Tested-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gpucc-msm8998.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gpucc-msm8998.c b/drivers/clk/qcom/gpucc-msm8998.c
index f929e0f2333f..cc0b43354787 100644
--- a/drivers/clk/qcom/gpucc-msm8998.c
+++ b/drivers/clk/qcom/gpucc-msm8998.c
@@ -98,7 +98,7 @@ static const struct parent_map gpu_xo_gpll0_map[] = {
 
 static const struct clk_parent_data gpu_xo_gpll0[] = {
 	{ .hw = &gpucc_cxo_clk.clkr.hw },
-	{ .fw_name = "gpll0" },
+	{ .fw_name = "gpll0", .name = "gcc_gpu_gpll0_clk" },
 };
 
 static const struct parent_map gpu_xo_gpupll0_map[] = {

-- 
2.41.0

