Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC30661B5C
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 01:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234052AbjAIA3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 19:29:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231410AbjAIA3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 19:29:40 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0650C741
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 16:29:38 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id p25so1169775ljn.12
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 16:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TuUy5yyevuXzH7JuK2+w6B5BQU4+qQbNBPhTpPAW49E=;
        b=BUr+afNqyFUbblkeLwvb4Itn25XCp+Rgx8j9Y2DQWrX8NDUnDWAy51gsbP/fEiaIUq
         PNqI+baEwMpZO4598h406g8S7zTav+grYCxIpnaFdLlEzYN5Ht/CSPFdMmpCjTItQ6La
         PMN+vZCLde/h4fVjoJAABfCunuzBbkbM85arQK55FJH4gGqCRRpcueSLUZEC6Z6ewsM0
         71I6NdUeZER+dbLuCfON+zQt0KbRPg/xoA4hFkoTQsTMMHUrRFYRdKkjmN+J+PyaXq4S
         q//zPg/tyhcpfxDm2e3nfoy4gtGBVoFgZpCPSokRJujcML4nLC+wnwWhmH5H+8v4Iqlk
         58Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TuUy5yyevuXzH7JuK2+w6B5BQU4+qQbNBPhTpPAW49E=;
        b=oqWWYueC+fjSYyzp2jTbjmR1jPwaKbngV6OeZMGPTlgOGoPhzbUdpJwBbXjLBP8UU1
         acyDiwCwkp9wT/VkBCq1VzlJszh0H4jJTQnatRvJVnqhFuEgwMrEUk1r/JWY4fTGQR+b
         RRZvPqvzo5LFuqwyVuRWM3WJMv+atyTlc1SV8wdz1WYBneP85kt2hf8TTlOrjGPvqPK5
         QA5DH6+3nFMJzrCD6RTzHjjUQC7nnaYiCyMipXjAUdtP28kzKpscdoHBZGmzl+9LaNus
         CD2/FNB0VNWsVB205G28VTnWCXeA4bGzCyAfLMXnPvkhloQ2ddD7v2KK17Y5MNYQtrWM
         9O2A==
X-Gm-Message-State: AFqh2kqlGhRzOdzxZbsuDYFgIGtOMb2YZoXQVIkaDZ/LCDwRzchfJwwA
        5x3hiJ46iK7QpMmbcvw2Wh8QXg==
X-Google-Smtp-Source: AMrXdXuiUq/JXsdkD+m8b6Ksu/HV4ZAbT6VX0HTqZu6xxNED5SY6Zvh2bGgdjg0WOXstrAgJBp82SA==
X-Received: by 2002:a2e:a901:0:b0:278:ed26:6070 with SMTP id j1-20020a2ea901000000b00278ed266070mr20636412ljq.50.1673224177031;
        Sun, 08 Jan 2023 16:29:37 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a22-20020a2e9816000000b0027fc54f8bf0sm706626ljj.35.2023.01.08.16.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 16:29:36 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     Georgi Djakov <djakov@kernel.org>, Alex Elder <elder@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 01/12] interconnect: qcom: sdx55: drop IP0 remnants
Date:   Mon,  9 Jan 2023 02:29:24 +0200
Message-Id: <20230109002935.244320-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109002935.244320-1-dmitry.baryshkov@linaro.org>
References: <20230109002935.244320-1-dmitry.baryshkov@linaro.org>
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

Drop two defines leftover from the commit 2fb251c26560 ("interconnect:
qcom: sdx55: Drop IP0 interconnects"), which dropped handling of the IP0
resource in favour of handling it in the clk-rpmh driver.

Fixes: 2fb251c26560 ("interconnect: qcom: sdx55: Drop IP0 interconnects")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/interconnect/qcom/sdx55.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/interconnect/qcom/sdx55.h b/drivers/interconnect/qcom/sdx55.h
index deff8afe0631..46cbabec8aa1 100644
--- a/drivers/interconnect/qcom/sdx55.h
+++ b/drivers/interconnect/qcom/sdx55.h
@@ -6,7 +6,7 @@
 #ifndef __DRIVERS_INTERCONNECT_QCOM_SDX55_H
 #define __DRIVERS_INTERCONNECT_QCOM_SDX55_H
 
-#define SDX55_MASTER_IPA_CORE			0
+/* 0 was used by MASTER_IPA_CORE, now represented as RPMh clock */
 #define SDX55_MASTER_LLCC			1
 #define SDX55_MASTER_TCU_0			2
 #define SDX55_MASTER_SNOC_GC_MEM_NOC		3
@@ -28,7 +28,7 @@
 #define SDX55_MASTER_QDSS_ETR			19
 #define SDX55_MASTER_SDCC_1			20
 #define SDX55_MASTER_USB3			21
-#define SDX55_SLAVE_IPA_CORE			22
+/* 22 was used by SLAVE_IPA_CORE, now represented as RPMh clock */
 #define SDX55_SLAVE_EBI_CH0			23
 #define SDX55_SLAVE_LLCC			24
 #define SDX55_SLAVE_MEM_NOC_SNOC		25
-- 
2.39.0

