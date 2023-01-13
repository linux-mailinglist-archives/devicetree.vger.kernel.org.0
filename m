Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 476A3669278
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 10:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241125AbjAMJLB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 04:11:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240859AbjAMJKY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 04:10:24 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C63675752
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 01:07:53 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id j17so32235211lfr.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 01:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60yxEW22hoAOOhOWGOTH5M2hZiABdMD97947KesUJto=;
        b=REXQMGrJIZiWEPdOgQHYLdJ9o+K2QMjcuaT+NTV+ebUUz4hhyPNl9sS599Q6Ybm7on
         LjFQxGfLaVPqPg5CNyr7pWxxYPYt99yLCFsnkoU0UH6WnbuqPHHNqSOjSYhwD74f3Lig
         Z2Kuvn5xMbIy8l7iXCZ8oWHZ4WxCyJE4Ztf6vAMucE4c8LRI9NlKyDiNeavPUhV+EnhX
         DjNYDvoFKcpxXdqP2jflY7yQYUHA1Kf0Wx5ozomvhedwtI5rIxe3Ws6ZwAjqPt/9SWOV
         RHO5xV2KDTI58qogbnCe2QuGJMEicSGwPyCEXB06Jls1QNS5SbT+XSuQQZXrrmouxgfy
         IHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=60yxEW22hoAOOhOWGOTH5M2hZiABdMD97947KesUJto=;
        b=xUoENaaDhFTAY/Zt1xQPN2RiH8fGExTNj9umHX1hQ0NiK6cN3uqHG4v7Z8GomR0nw6
         0gfqp0Ust1bh7hXoSk9qQDSq1kmdnemVYc1W38Mp+LCXZ93f3mAh4DVB0jrvMtr7MXXT
         iHUpoNwurOhz18FnPV2sSGirg9wIduwiQrA1a7l03LsfFt8PjPC9K6RDmy2U6o4NE0pj
         QLbipQeaMoIgtTWg8inR8vT8hyUW3ypw+E3hTLUR0YO3SSOpNS1lBA8OtxwaDcbSvtwA
         Mr0rJNCIsSvtAxi89Hz5mhVAyOwGXtXWXbb3nr8kryiRquZ441hwd9Y0XiXtuu4mLHIu
         C/bw==
X-Gm-Message-State: AFqh2kq3E69kX1h/qeG/TIPzQ0DcC5rvHdUyDt/CsKpJKTiGeNxZkEVo
        fkSeL+doQzYo3EAkofLDzrn1Fg==
X-Google-Smtp-Source: AMrXdXtXkDr/H6UigCTKrCgJk574+PyWuTRkf5tQWSma76n0kWaaeffJv22h2NdCvHUGDJNVy3Ixog==
X-Received: by 2002:a05:6512:3051:b0:4b5:79ca:e62d with SMTP id b17-20020a056512305100b004b579cae62dmr32092348lfb.16.1673600872902;
        Fri, 13 Jan 2023 01:07:52 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id d4-20020a05651233c400b004947a12232bsm3735296lfg.275.2023.01.13.01.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 01:07:52 -0800 (PST)
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
Subject: [PATCH v2 3/4] mailbox: qcom-apcs-ipc: enable APCS clock device for MSM8996
Date:   Fri, 13 Jan 2023 11:07:38 +0200
Message-Id: <20230113090739.45805-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113090739.45805-1-dmitry.baryshkov@linaro.org>
References: <20230113090739.45805-1-dmitry.baryshkov@linaro.org>
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

MSM8996 also has the clock-related part of the APCS mailbox device.
Follow the usual pattern and create a child device to handle these
clocks.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index 0e9f9cba8668..bd61dacb44ba 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -42,7 +42,7 @@ static const struct qcom_apcs_ipc_data msm8994_apcs_data = {
 };
 
 static const struct qcom_apcs_ipc_data msm8996_apcs_data = {
-	.offset = 16, .clk_name = NULL
+	.offset = 16, .clk_name = "qcom-apcs-msm8996-clk"
 };
 
 static const struct qcom_apcs_ipc_data apps_shared_apcs_data = {
-- 
2.39.0

