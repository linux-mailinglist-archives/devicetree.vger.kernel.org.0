Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6DB55526BC
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 23:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242602AbiFTVvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 17:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235833AbiFTVvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 17:51:54 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F21AE1A3A3
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 14:51:52 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id e4so13369545ljl.1
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 14:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5VB+OjNM0FgonA9OHE0Kg6JQZj4dnCquoYDOQxZe7mo=;
        b=cSQ/oyUJ0l8bbipEuGZvIJbKdKDyUZMNlwVg8LRafAdPRUa9D0djloP235lZUMRwDw
         jkwaAYtU8t3g8YuYJdS2FZQrwcyVIJgxS6yZ227PYhN3yWad1AqT6BpZ1YFeqRIM+ASv
         1DyE29iwPK17YCir+i3cl2T8kumxk9VIfX8hsMl7YD9PrMWrXB+5n36815k+usCQFwsJ
         MthIcOk+TC8tuata+ssCePg0xWkbggqN7EJ8Ejj55/4XDWNwPN/jNXD0BDjXMJByJCLY
         jXzIABNP1yLrVbVaDiEU2LdU0UiWWtfRM0gypEMQaFl3sqsi5eRICLOqzKzgcLoUo2sU
         yZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5VB+OjNM0FgonA9OHE0Kg6JQZj4dnCquoYDOQxZe7mo=;
        b=2nCNf2gtW5pg+M3BicyoyTGo8CddxdQQ9x+2sNMQ8oG3N5nQFsWO6e4zDyh8rwVgYR
         c633mnX0bVH7mFTVSFeAoKGios6FK9EVgt6YsKB6wcUkgsiyr2bgzxTd3H1ljM63XBA8
         O25G62pT3n4CTPAzYw4q43C+EIkBR1Rjje4iQ185m19PJo/WvQbk4Fyfyg3sPdSfA+e1
         t0qnIpu2KD4myOZncEfOO3DeqwmjyFDNd1ag78jMmmzIUYZ3meqD2aPo//HneYKFYloN
         pde+pv4R+LbRF7CcnVA/NbX2k/YZpaW74hesUHR8j2GVwZ03AtDqeGggR6OyQt6Lyupy
         yP+w==
X-Gm-Message-State: AJIora/q8PhAUrRc8G8bd/G/5ckFsJ9V+bafd6zYDwnOKIn4Htbild/C
        s9t2q9JoxiHsRR2YlAsowJmP2Q==
X-Google-Smtp-Source: AGRyM1vMoxB1T2TWeP+vflMBzhmgPmXF5Lj32pDYPWXE9f/D85wvLBD/f/9hzHWJX5L/IGNQX5slig==
X-Received: by 2002:a2e:bf02:0:b0:25a:6348:95c6 with SMTP id c2-20020a2ebf02000000b0025a634895c6mr6553256ljr.183.1655761911351;
        Mon, 20 Jun 2022 14:51:51 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s30-20020a195e1e000000b00479307e4a1bsm1897989lfb.135.2022.06.20.14.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 14:51:50 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, Ansuel Smith <ansuelsmth@gmail.com>
Subject: [PATCH] clk: qcom: gcc-ipq806x: use parent_data for the last remaining entry
Date:   Tue, 21 Jun 2022 00:51:50 +0300
Message-Id: <20220620215150.1875557-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Use parent_data for the last remaining entry (pll4). This clock is
provided by the lcc device.

Fixes: cb02866f9a74 ("clk: qcom: gcc-ipq806x: convert parent_names to parent_data")
Cc: Ansuel Smith <ansuelsmth@gmail.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/gcc-ipq806x.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gcc-ipq806x.c b/drivers/clk/qcom/gcc-ipq806x.c
index 718de17a1e60..6447f3e81b55 100644
--- a/drivers/clk/qcom/gcc-ipq806x.c
+++ b/drivers/clk/qcom/gcc-ipq806x.c
@@ -79,7 +79,9 @@ static struct clk_regmap pll4_vote = {
 	.enable_mask = BIT(4),
 	.hw.init = &(struct clk_init_data){
 		.name = "pll4_vote",
-		.parent_names = (const char *[]){ "pll4" },
+		.parent_data = &(const struct clk_parent_data){
+			.fw_name = "pll4", .name = "pll4",
+		},
 		.num_parents = 1,
 		.ops = &clk_pll_vote_ops,
 	},
-- 
2.35.1

