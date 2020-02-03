Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD141150F80
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2020 19:32:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728554AbgBCScn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Feb 2020 13:32:43 -0500
Received: from mail-pg1-f194.google.com ([209.85.215.194]:32949 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729977AbgBCSc3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Feb 2020 13:32:29 -0500
Received: by mail-pg1-f194.google.com with SMTP id 6so8277724pgk.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2020 10:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wwHxgEKez+fOFQykbyJ2qqd0S0Aa+T2rnyaksz+8v/M=;
        b=TePUltcYjHGOlhvm0sss/m7Bi8+vuqTXeBmxqiuTXNO7vBo8DOMdKF8xaaGZ+Ak1/L
         e+xMsYn8+w1pPO2BsSHcBT9+8H8s1i0ZN+cXyfYYl3D4XMGvL9VvLivjnfdhUztJtqpN
         nAlwQ0RtFvqRjNWTF81qT183sNFpLO6Dx+2mM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wwHxgEKez+fOFQykbyJ2qqd0S0Aa+T2rnyaksz+8v/M=;
        b=LTuSR6OCbw7UJwHX5OHEhmMFTaVS6EQmdA2xKQtNdH0kVVWQ2D9YU1Ytfxxwe5QoJq
         IyNW3OOR7y5biFX9B2VL9b38fSerfB/XUf23M3npnYDA68GKsaPziWeuz3midXOa9ZUE
         tawhQKOc8BIE3OtT9lcPwTOjLKXMRsHsNER9A3/Jxee+/Kuxf7DmtFZtFqognEwRt1AT
         ioILolPtj8xesgFQ+SvfLRCM8ZbStcTOiV0Tb0CpKkM451xHqbdK0FNlFlH8YIJsBDA+
         g/pmsgvx6QEQM8XA35/UdBrWryHbKn9D3HIyK+Yy1ts9D5G9BpJ58HOmX+3bsndOOdFa
         QT5g==
X-Gm-Message-State: APjAAAUSSvAW96Oes7Zu9FCRIBIi4/q1hc5w79tdBJcu+xcVmsmB2/ZO
        uYAlmh8Z33kZThSKf0Y7dd5lrQ==
X-Google-Smtp-Source: APXvYqz38nwGUpv83wdaxTCNi+AL895a1bGWZsc4tkumVdC6AUR9GLTk3X5Ee2dUKrhJgDGub2DzRQ==
X-Received: by 2002:a63:1f5b:: with SMTP id q27mr12770437pgm.434.1580754747633;
        Mon, 03 Feb 2020 10:32:27 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id f9sm21009137pfd.141.2020.02.03.10.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 10:32:27 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Jeffrey Hugo <jhugo@codeaurora.org>,
        Taniya Das <tdas@codeaurora.org>, jeffrey.l.hugo@gmail.com,
        linux-arm-msm@vger.kernel.org, harigovi@codeaurora.org,
        devicetree@vger.kernel.org, mka@chromium.org,
        kalyan_t@codeaurora.org, Mark Rutland <mark.rutland@arm.com>,
        linux-clk@vger.kernel.org, hoegsberg@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 12/15] clk: qcom: Get rid of the test clock for videocc-sc7180
Date:   Mon,  3 Feb 2020 10:31:45 -0800
Message-Id: <20200203103049.v4.12.Ifd19a2701a102ec9f04e61a09345198383a9e937@changeid>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200203183149.73842-1-dianders@chromium.org>
References: <20200203183149.73842-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The test clock isn't in the bindings and apparently it's not used by
anyone upstream.  Remove it.

Suggested-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v4: None
Changes in v3:
- Patch ("clk: qcom: Get rid of the test...videocc-sc7180") new for v3.

Changes in v2: None

 drivers/clk/qcom/videocc-sc7180.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/videocc-sc7180.c b/drivers/clk/qcom/videocc-sc7180.c
index 76add30024aa..653fc4e6bb6f 100644
--- a/drivers/clk/qcom/videocc-sc7180.c
+++ b/drivers/clk/qcom/videocc-sc7180.c
@@ -50,13 +50,11 @@ static struct clk_alpha_pll video_pll0 = {
 static const struct parent_map video_cc_parent_map_1[] = {
 	{ P_BI_TCXO, 0 },
 	{ P_VIDEO_PLL0_OUT_MAIN, 1 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data video_cc_parent_data_1[] = {
 	{ .fw_name = "bi_tcxo" },
 	{ .hw = &video_pll0.clkr.hw },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct freq_tbl ftbl_video_cc_venus_clk_src[] = {
@@ -78,7 +76,7 @@ static struct clk_rcg2 video_cc_venus_clk_src = {
 	.clkr.hw.init = &(struct clk_init_data){
 		.name = "video_cc_venus_clk_src",
 		.parent_data = video_cc_parent_data_1,
-		.num_parents = 3,
+		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 		.ops = &clk_rcg2_shared_ops,
 	},
-- 
2.25.0.341.g760bfbb309-goog

