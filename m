Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0582A74EF1D
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232196AbjGKMhy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:37:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232392AbjGKMhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:37:45 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F7D1989
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:37:21 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3fbd33a57b6so70101555e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689079002; x=1691671002;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/asgZ03NiEjGsv4yFwqtkX/wMZgRigqk79OQqEY/FpA=;
        b=wXMqUq5BJu1KMJ8gXFRXFiuZULEtrh/jmXWBZz0D21+C+ItP5PvqGzH9taHvZ7ncV0
         ufp9VNxEG/Pb1CJanNdcmqnA00YO2SIILxUKuuvgE358MOAETtphw7LFWCDuxc0dLo/m
         GSbY94Pm+FjF/6fnVPtoO5o3P3+GsjlJQQEekm2EDk4VgDBCRwdgEaXL7LgWqJHCfvIA
         s9MteJJu3nbXJPjTVcGoXhUtRwZ0yqCyLXMpxJkOqU+LICmEb0z9vHaRSh5h+Gssvfda
         MrPAsz3S1Ud09z6yMW6yiLlIS5hXOssi03cLIOdDyTjlLxtKRyXfeN4hKbFaa0ZAHX/R
         gL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689079002; x=1691671002;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/asgZ03NiEjGsv4yFwqtkX/wMZgRigqk79OQqEY/FpA=;
        b=LPmlqnqNpIso9wCgMAFJuJEo6aR4xT3uysg688JmmkPeqS8+Q8teuqf4i8xl4z9q5c
         wSoIhYsbSa5fFXYMwNb1NbXjVgZwhpACONak/TXnM+TY3otuHe+I4OTt+UcEdA+0/cHQ
         76cjxzkrnYptX/69q2urzdXqLomkMOqjKXlRJTqa4SmTrqwL4NMBJD6GLqpAne4vNbbL
         R83GbfinONyW074v6vw7igOLlf/PplueYCap6SCnYZ8K7zfd7gibJjr0KSmXsJ/xaXuM
         4yICkoelFeiC2+dIP++ah+huNXUYbsIxp8ORzrKtrOUUfk2tZF73Z5hYlzDzJaVJLxHd
         zX3g==
X-Gm-Message-State: ABy/qLY/DLjAHNplBEvheIJkrLIJCtyRyMKAepIvzl1lLBnVqtIYJfKv
        r+yR5N/4UBaMEmVJlKYJ0GOMVJZcfSMDaGBzoC15ZA==
X-Google-Smtp-Source: APBJJlGydSY5p6okL4PaU6GFDJfbxqkpBMjvgZKcHal05MTStl5cNcj28rvD3wzeEz2DDLdvr8RZag==
X-Received: by 2002:a05:651c:102f:b0:2b5:85a9:7e9b with SMTP id w15-20020a05651c102f00b002b585a97e9bmr14905048ljm.33.1689077972306;
        Tue, 11 Jul 2023 05:19:32 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:31 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:49 +0200
Subject: [PATCH 50/53] interconnect: qcom: sm8350: Point display paths to
 the display RSC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-50-b223bd2ac8dd@linaro.org>
References: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
In-Reply-To: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=2325;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=4cN3u17a4Tjp9KwmLVHyYCuynLOUrKPYJniM89DUm8c=;
 b=TCiw8Gn5E+kROybJ7eM9HDAHOFyDwfav4mFNcXKQuvK0+BeKxlWbuCdcJLWAdcb6awXlEbvSA
 6TqOK3Ni0LHAsoY4ARc1sb+WTzVrou+euI5hOGVp7EXrDzsuyVwnFNu
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The _DISP paths are expected to go through the DISP RSC. Point them to the
correct place.

Fixes: d26a56674497 ("interconnect: qcom: Add SM8350 interconnect provider driver")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/interconnect/qcom/sm8350.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/interconnect/qcom/sm8350.c b/drivers/interconnect/qcom/sm8350.c
index c48f96ff8575..0466ba5d939a 100644
--- a/drivers/interconnect/qcom/sm8350.c
+++ b/drivers/interconnect/qcom/sm8350.c
@@ -1609,7 +1609,7 @@ static struct qcom_icc_bcm bcm_sn14 = {
 static struct qcom_icc_bcm bcm_acv_disp = {
 	.name = "ACV",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 1,
 	.nodes = { &ebi_disp },
 };
@@ -1617,7 +1617,7 @@ static struct qcom_icc_bcm bcm_acv_disp = {
 static struct qcom_icc_bcm bcm_mc0_disp = {
 	.name = "MC0",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 1,
 	.nodes = { &ebi_disp },
 };
@@ -1625,7 +1625,7 @@ static struct qcom_icc_bcm bcm_mc0_disp = {
 static struct qcom_icc_bcm bcm_mm0_disp = {
 	.name = "MM0",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 1,
 	.nodes = { &qns_mem_noc_hf_disp },
 };
@@ -1633,7 +1633,7 @@ static struct qcom_icc_bcm bcm_mm0_disp = {
 static struct qcom_icc_bcm bcm_mm1_disp = {
 	.name = "MM1",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 2,
 	.nodes = { &qxm_mdp0_disp, &qxm_mdp1_disp },
 };
@@ -1641,7 +1641,7 @@ static struct qcom_icc_bcm bcm_mm1_disp = {
 static struct qcom_icc_bcm bcm_mm4_disp = {
 	.name = "MM4",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 1,
 	.nodes = { &qns_mem_noc_sf_disp },
 };
@@ -1649,7 +1649,7 @@ static struct qcom_icc_bcm bcm_mm4_disp = {
 static struct qcom_icc_bcm bcm_mm5_disp = {
 	.name = "MM5",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 1,
 	.nodes = { &qxm_rot_disp },
 };
@@ -1657,7 +1657,7 @@ static struct qcom_icc_bcm bcm_mm5_disp = {
 static struct qcom_icc_bcm bcm_sh0_disp = {
 	.name = "SH0",
 	.keepalive = false,
-	.voter_idx = 0,
+	.voter_idx = 1,
 	.num_nodes = 1,
 	.nodes = { &qns_llcc_disp },
 };

-- 
2.41.0

