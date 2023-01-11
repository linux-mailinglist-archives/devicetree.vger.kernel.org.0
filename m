Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4CE866648F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 21:06:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231623AbjAKUFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 15:05:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235143AbjAKUFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 15:05:11 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBDAE43E46
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:33 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id g13so25209570lfv.7
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xw/nftZkBpYy5/CKpZ6ADRGZbB0kdGeQLhoDqoX3D5Y=;
        b=dShShSvTAUSJ10W6zEI+6/zh53LzYvuTQnttuhVw5TmllFifUjZabUfJ/7qP2nu6HR
         RCWR620XQotrceLUrhJk1KUnMxQ+3xpw7CRde59wLeWz3vfOhXSEVF/FgOBT3GXalK0U
         8OEhctEeW9EfqSIT2LX4KCZD42/o6mel+TWblifveKWAwWij3P0FgXbTGCBc4eWTyNuG
         OFj5cTqrIXFlpdu4fkCL0lR566qhDmeqU/xErx+5uknwP2SwPLcvuOWanuOhZmxoXaXs
         X5/azRRPb8QKmajagGylo4gix1/a/0kyiXx7QmW+m0/GED7L7EqUjFpukAyusIwct/+/
         l//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xw/nftZkBpYy5/CKpZ6ADRGZbB0kdGeQLhoDqoX3D5Y=;
        b=XNF3vHRDlQtJybZOdMpX5JbrAIP4z5Da+tWOXE4J3/BqxQAa6G4sqTSZmkUka8Uu5U
         EUaIa0k8DcYajQfcRSEjm32htn6dB8tyjqBWg3QfaTNvSWLycy32XI3Ig2nKF9YFTNNA
         bn3gQzafLxWuwikYhOg5RAj381+sO5QpFzgWJ5cwDQpWKAqsUtgue+LSb7X21Qw3e3i+
         uYpdE4VgvOa2kfibonBOzzCtu9opFS1RjkeueN70XLBm0592NUpAZx35TdZ1vWeLw/Ig
         ySTtPXfpi9AMXPDfKMJ3gkVjEh2qi/49QxmkbeKd4ZIPvusaSJzXko6iqo6e3qewmuo3
         o92g==
X-Gm-Message-State: AFqh2krkN3BHJRGdd0b/JhKLzljDL4gXvNjlBwAiDyI9mTISjeJePvnx
        1SJU78X+9J5IW0H+b7t0lZAc9A==
X-Google-Smtp-Source: AMrXdXuBbYBJc3ASFs1f4Duc4EsEJdYqBUE22A6NV5REp2hvuWh8vI2gC9IgZcKTWsh7mXFQKGlKXQ==
X-Received: by 2002:ac2:5454:0:b0:4cc:8985:b565 with SMTP id d20-20020ac25454000000b004cc8985b565mr2512508lfn.30.1673467292007;
        Wed, 11 Jan 2023 12:01:32 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a05651203b400b004b4e6dab30esm2881437lfp.222.2023.01.11.12.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 12:01:31 -0800 (PST)
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
Subject: [PATCH v2 04/14] clk: qcom: cpu-8996: fix the init clock rate
Date:   Wed, 11 Jan 2023 23:01:18 +0300
Message-Id: <20230111200128.2593359-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
References: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
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

Change PLL programming to let both power and performance cluster clocks
to start from the maximum common frequency.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index ed8cb558e1aa..d51965fda56d 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -102,7 +102,7 @@ static const u8 alt_pll_regs[PLL_OFF_MAX_REGS] = {
 /* PLLs */
 
 static const struct alpha_pll_config hfpll_config = {
-	.l = 60,
+	.l = 54,
 	.config_ctl_val = 0x200d4828,
 	.config_ctl_hi_val = 0x006,
 	.test_ctl_val = 0x1c000000,
-- 
2.30.2

