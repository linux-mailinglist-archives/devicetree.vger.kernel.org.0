Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06F4C3579DC
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 03:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231371AbhDHBsC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 21:48:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231347AbhDHBsC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 21:48:02 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50065C061762
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 18:47:50 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id u20so279822lja.13
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 18:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mdh5NvSZNpel1YT/OpgDBwKJu+seO7F56lAGeiiRX4I=;
        b=ewH8uoeAdnOoaCaXSC6E9olXCsgxh1TXcEaj5URQqxBvys1ZDOQIcFx9+5Kxk2Rfz3
         oGi8viQGgMuFSZUVUfvjERRET6hTeyuaxoG8jzoo33L1e3yb5JHFl19J5vB0oJzjoT9w
         qb4/400uDi/EELGVZUy2H9BQJNWQe9vhwIwtGDK8eBmgqVXkrmqsfs19Sx5zZD3MY1EX
         YTEPYK60qlysfRpA2Q+c7e9leoKowgc6LpO7KcpVXEng77QOrLWyl79iTT87AAZuS6RQ
         c4xmRQZeZPKRiJzTZ3dCP+EX4UD50nAtAomr/SJcIIywnJ2HceQUkCHW7zF2p8AIJKgI
         DUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mdh5NvSZNpel1YT/OpgDBwKJu+seO7F56lAGeiiRX4I=;
        b=dbnl3XfeLhnHWzcO3ihN0fS1dwu3zY3oNKpj0zROzz/uI94TjALIMw7DxXNUFpIWBl
         wk5rJmhRnrJwK5WF9PeVQHtu/FE0CP1l6pULfN6iFqJ8MXPa7W3DOWebWLXB92Yw/7QU
         F5cDMp6/JH8lfrqwRiEo9ITaJE02XgA15YJ5GiTqSQCZxxqKwxrmL3UspXZkv7blwmXw
         1MNmkeoKFZZhC7atf+6EPYWIBbj8qtuuWwd5DbP8CCvV0OwQdqwG0ktmWuz1GqGfKI0W
         sBOuDOVpo5OjUgLNztK5c2ISBiIQVL+QbruYUzdfRB184STLMa+FsKwOsqaEhMyk8Dza
         ha2g==
X-Gm-Message-State: AOAM533zLV4aIu5c+YKT+bK2ZYB19ZWXaUv9cVg2u5IbPOjAUenVW3Kb
        ZJjPEod2mHKo1N5g7Zb445yYaA==
X-Google-Smtp-Source: ABdhPJxI6fR5PFr6TqG2xSpwLOsBrWf5SnE87ZFDx0YAjLL9bqVzRlV4HqktHF5ofEd2No1Eywg0/Q==
X-Received: by 2002:a2e:98d1:: with SMTP id s17mr4008098ljj.349.1617846468876;
        Wed, 07 Apr 2021 18:47:48 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w24sm2686705ljh.19.2021.04.07.18.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 18:47:48 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>
Subject: [PATCH v3 3/4] clk: qcom: gcc-sdm845: get rid of the test clock
Date:   Thu,  8 Apr 2021 04:47:37 +0300
Message-Id: <20210408014737.955979-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210408014737.955979-1-dmitry.baryshkov@linaro.org>
References: <20210408014737.955979-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The test clock isn't in the bindings and apparently it's not used by
anyone upstream.  Remove it.

Suggested-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/clk/qcom/gcc-sdm845.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/clk/qcom/gcc-sdm845.c b/drivers/clk/qcom/gcc-sdm845.c
index 46be43a02bf6..58aa3ec9a7fc 100644
--- a/drivers/clk/qcom/gcc-sdm845.c
+++ b/drivers/clk/qcom/gcc-sdm845.c
@@ -28,7 +28,6 @@
 enum {
 	P_BI_TCXO,
 	P_AUD_REF_CLK,
-	P_CORE_BI_PLL_TEST_SE,
 	P_GPLL0_OUT_EVEN,
 	P_GPLL0_OUT_MAIN,
 	P_GPLL4_OUT_MAIN,
@@ -98,14 +97,12 @@ static const struct parent_map gcc_parent_map_0[] = {
 	{ P_BI_TCXO, 0 },
 	{ P_GPLL0_OUT_MAIN, 1 },
 	{ P_GPLL0_OUT_EVEN, 6 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_0[] = {
 	{ .fw_name = "bi_tcxo", .name = "bi_tcxo" },
 	{ .hw = &gpll0.clkr.hw },
 	{ .hw = &gpll0_out_even.clkr.hw },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map gcc_parent_map_1[] = {
@@ -113,7 +110,6 @@ static const struct parent_map gcc_parent_map_1[] = {
 	{ P_GPLL0_OUT_MAIN, 1 },
 	{ P_SLEEP_CLK, 5 },
 	{ P_GPLL0_OUT_EVEN, 6 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_1[] = {
@@ -121,41 +117,34 @@ static const struct clk_parent_data gcc_parent_data_1[] = {
 	{ .hw = &gpll0.clkr.hw },
 	{ .fw_name = "sleep_clk", .name = "core_pi_sleep_clk" },
 	{ .hw = &gpll0_out_even.clkr.hw },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map gcc_parent_map_2[] = {
 	{ P_BI_TCXO, 0 },
 	{ P_SLEEP_CLK, 5 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_2[] = {
 	{ .fw_name = "bi_tcxo", .name = "bi_tcxo" },
 	{ .fw_name = "sleep_clk", .name = "core_pi_sleep_clk" },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map gcc_parent_map_3[] = {
 	{ P_BI_TCXO, 0 },
 	{ P_GPLL0_OUT_MAIN, 1 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_3[] = {
 	{ .fw_name = "bi_tcxo", .name = "bi_tcxo" },
 	{ .hw = &gpll0.clkr.hw },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map gcc_parent_map_4[] = {
 	{ P_BI_TCXO, 0 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_4[] = {
 	{ .fw_name = "bi_tcxo", .name = "bi_tcxo" },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map gcc_parent_map_6[] = {
@@ -163,7 +152,6 @@ static const struct parent_map gcc_parent_map_6[] = {
 	{ P_GPLL0_OUT_MAIN, 1 },
 	{ P_AUD_REF_CLK, 2 },
 	{ P_GPLL0_OUT_EVEN, 6 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_6[] = {
@@ -171,7 +159,6 @@ static const struct clk_parent_data gcc_parent_data_6[] = {
 	{ .hw = &gpll0.clkr.hw },
 	{ .fw_name = "aud_ref_clk", .name = "aud_ref_clk" },
 	{ .hw = &gpll0_out_even.clkr.hw },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 static const struct clk_parent_data gcc_parent_data_7_ao[] = {
@@ -198,7 +185,6 @@ static const struct parent_map gcc_parent_map_10[] = {
 	{ P_GPLL0_OUT_MAIN, 1 },
 	{ P_GPLL4_OUT_MAIN, 5 },
 	{ P_GPLL0_OUT_EVEN, 6 },
-	{ P_CORE_BI_PLL_TEST_SE, 7 },
 };
 
 static const struct clk_parent_data gcc_parent_data_10[] = {
@@ -206,7 +192,6 @@ static const struct clk_parent_data gcc_parent_data_10[] = {
 	{ .hw = &gpll0.clkr.hw },
 	{ .hw = &gpll4.clkr.hw },
 	{ .hw = &gpll0_out_even.clkr.hw },
-	{ .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
 };
 
 
-- 
2.30.2

