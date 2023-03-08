Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C00C56B1402
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 22:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbjCHVfy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 16:35:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbjCHVfu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 16:35:50 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BF51B3727
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 13:35:44 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id i28so23205575lfv.0
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 13:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678311342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZR8rEfH+mByVpllyIkEvGaJqUK/MTbgeGfOlnZZHumI=;
        b=j5mdZnIXSPZgZ84/ChHPJU3MRFTAFSRTVSFKGDnDq8LQZHHRpw6zKsGRmwb8B7nLUe
         t9RKmbMdGY8w7Vuotqvr2aKglsFlIJQT+BELcAjgQesTzQUek3uaoQ03uYkZh4tlSc7w
         5t5FkAm8JPSG/RLCn/dV/bs6WyLPCtVd8AK3yop13ht3+3vTHA8OJOpCvBBjgfsGFZ7b
         ws3hIvpjUmG734VwrFACIlR7AmoXyX+i5UVoklHS+vxrKWR/jWqzvafsHQB+8Zj1OikC
         imP0UVpgyHObbiVoCmXO5AR8vmCo6MCHeurn973btqrBEToWyewl45YnD3T016gJ4+On
         oaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678311342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZR8rEfH+mByVpllyIkEvGaJqUK/MTbgeGfOlnZZHumI=;
        b=mthfme4hgirju2K6auW7IWC7EYNLTe90WV7TXP/aI3SV6laPo10hq5XOhjW2Kaapfx
         u7D/abOXwwmVheBBF6vUrZ8r2xn3uSxWWVn0+QgAkE5pP34yhfXuXLmK3DItzwtxtL91
         FKHpjs22UGBDLTbhqJxmncWZbTr6UrrO8a2qLysLkGfkcMdNZWajf/2cgp/FQWQm3u1N
         B5DBA0VcR3W/rS54Ugbimf7IRFD7L19pWBrcZJrK5MQznsnIa1Ae4WLMwekLeQLnT0lZ
         CRvBODhnuduQoMPZh5xn1dcTfqPAdgEciNaHFDKp0YC60lQTf1yZw31JRBkk9bKhoqc0
         ib6g==
X-Gm-Message-State: AO0yUKUjbVL7QGJpH4MOLaNDzIFNzyUYjnMwDLkYBMnVPdWtHVc/TgtX
        EYfjAgo2mdQsiTUHmJlsI4a09A==
X-Google-Smtp-Source: AK7set9sJIy5ZuLxBh5lDZbltjJuYSZnf3f/k93H386tFxS4vn4xgQwY79ATHTAqpMNQ6F+zjCDXYA==
X-Received: by 2002:ac2:593b:0:b0:4a4:68b7:deab with SMTP id v27-20020ac2593b000000b004a468b7deabmr5396112lfi.7.1678311342439;
        Wed, 08 Mar 2023 13:35:42 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id u7-20020ac243c7000000b004dc4d26c324sm2467479lfl.143.2023.03.08.13.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 13:35:41 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 08 Mar 2023 22:35:20 +0100
Subject: [PATCH RFT v2 04/14] clk: qcom: smd-rpm_ Make
 __DEFINE_CLK_SMD_RPM_BRANCH_PREFIX accept flags
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-rpmcc_sleep-v2-4-ae80a325fe94@linaro.org>
References: <20230303-topic-rpmcc_sleep-v2-0-ae80a325fe94@linaro.org>
In-Reply-To: <20230303-topic-rpmcc_sleep-v2-0-ae80a325fe94@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678311334; l=2532;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=XuAIaIbpiaJbVxAhaqMtXMVrCCmBcmYgJ4nDGrAeQno=;
 b=jZNigdsRXfdIB65SyKr65oVKcy+ixT8aE4ifRveJcZemRFeUe6X7/ib04zd35LNJEGWZm0kL1yI8
 ug9NlicED7TK1xGd6sC07EquGHlLsUaI0XaRyQpieU97pGBPNVp6
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In preparation for supporting keepalive clocks which can never be shut off
(as the platform would fall apart otherwise), make the
__DEFINE_CLK_SMD_RPM_BRANCH_PREFIX macro accept clock flags for the
active-only clock.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/clk-smd-rpm.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/qcom/clk-smd-rpm.c b/drivers/clk/qcom/clk-smd-rpm.c
index cce7daa97c1e..72b1f010509b 100644
--- a/drivers/clk/qcom/clk-smd-rpm.c
+++ b/drivers/clk/qcom/clk-smd-rpm.c
@@ -67,7 +67,7 @@
 				    type, r_id, key)
 
 #define __DEFINE_CLK_SMD_RPM_BRANCH_PREFIX(_prefix, _name, _active,\
-					   type, r_id, r, key)		      \
+					   type, r_id, r, key, ao_flags)      \
 	static struct clk_smd_rpm clk_smd_rpm_##_prefix##_active;	      \
 	static struct clk_smd_rpm clk_smd_rpm_##_prefix##_name = {	      \
 		.rpm_res_type = (type),					      \
@@ -102,12 +102,13 @@
 					.name = "xo_board",		      \
 			},						      \
 			.num_parents = 1,				      \
+			.flags = (ao_flags),				      \
 		},							      \
 	}
 
 #define __DEFINE_CLK_SMD_RPM_BRANCH(_name, _active, type, r_id, r, key)	      \
 		__DEFINE_CLK_SMD_RPM_BRANCH_PREFIX(/* empty */,		      \
-		_name, _active, type, r_id, r, key)
+		_name, _active, type, r_id, r, key, 0)
 
 #define DEFINE_CLK_SMD_RPM(_name, type, r_id)				      \
 		__DEFINE_CLK_SMD_RPM(_name##_clk, _name##_a_clk,	      \
@@ -126,12 +127,12 @@
 #define DEFINE_CLK_SMD_RPM_BRANCH(_name, type, r_id, r)			      \
 		__DEFINE_CLK_SMD_RPM_BRANCH_PREFIX(branch_,		      \
 		_name##_clk, _name##_a_clk,				      \
-		type, r_id, r, QCOM_RPM_SMD_KEY_ENABLE)
+		type, r_id, r, QCOM_RPM_SMD_KEY_ENABLE, 0)
 
 #define DEFINE_CLK_SMD_RPM_BRANCH_A(_name, type, r_id, r)		      \
 		__DEFINE_CLK_SMD_RPM_BRANCH_PREFIX(branch_,		      \
 		_name, _name##_a, type,					      \
-		r_id, r, QCOM_RPM_SMD_KEY_ENABLE)
+		r_id, r, QCOM_RPM_SMD_KEY_ENABLE, 0)
 
 #define DEFINE_CLK_SMD_RPM_QDSS(_name, type, r_id)			      \
 		__DEFINE_CLK_SMD_RPM(_name##_clk, _name##_a_clk,	      \
@@ -146,7 +147,7 @@
 		__DEFINE_CLK_SMD_RPM_BRANCH_PREFIX(_prefix,		      \
 		_name, _name##_a,					      \
 		QCOM_SMD_RPM_CLK_BUF_A, r_id, r,			      \
-		QCOM_RPM_KEY_SOFTWARE_ENABLE)
+		QCOM_RPM_KEY_SOFTWARE_ENABLE, 0)
 
 #define DEFINE_CLK_SMD_RPM_XO_BUFFER_PINCTRL(_name, r_id, r)		      \
 		DEFINE_CLK_SMD_RPM_XO_BUFFER(_name, r_id, r);		      \

-- 
2.39.2

