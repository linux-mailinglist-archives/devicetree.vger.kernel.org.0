Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6393F333529
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 06:26:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232236AbhCJF0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 00:26:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232320AbhCJFZ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 00:25:56 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D212EC061762
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 21:25:56 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id a24so7887864plm.11
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 21:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VmOMUUhp3vtSE7CptEWQ9fYIwV1ThT78JbnR+RZ0uIQ=;
        b=TqE0mZ6ZH/dhIJ1JDztPKdeokaTI8W2brCl7nkuChEyTAn29JJhimIDqG+Zeb8ABH9
         +eUxVbGOkkBfpjptJZxEA4yxQo4UWi5+HQm87PusbYbcX7h+ZIp6ErI3FKJzdF/V8AMV
         rn3goVF13mF3/IhQG+bm4cELSJWjt7DPDTqXchcRwUNR/014/WpHdkhob4AlWS42sIne
         2N+A8k5gtSd1pPmc9sXXUhlP12k/UNE7nxha+iz9X/LDFU0BnOKBJ93MA8VvqYSU3PkD
         KQCYf7xfuvp3SWGaPy7zOjTv+6jtSYOdXdYhEn4581kXudurSOJ2QHENaqBeI3HfKh7j
         GLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VmOMUUhp3vtSE7CptEWQ9fYIwV1ThT78JbnR+RZ0uIQ=;
        b=ThVv3ZZavmtwi3GwPawcxbREfE5d+Pfjp+ujXj5nH+LXpnj7L+BvupyPQtv+7nORsY
         2f1AzHldXgtF8H+v/uiGFScRHX2falxyNFjKlgZojJrCaZ5M1kqLVboBxnB6Ury1pT8X
         ZLcsf2rz+xO6Br771iNBCMEYKS+7XYZU2LbUkIswxnw97W2gbsPgAgLCnDnM6FPUkxw6
         6q8RvxpDmY27xn6lJON9/EQCIOmfEhxM9DTZBQJaM7QWKFrPmQjGRd+Ebr700DIO+gIa
         naDFi5FTqutWbgXYKT0RidcpZ9WFhMSDJzgA3evjJAlGnTF3DPezKlVa0cr1L2bS1hio
         wZZQ==
X-Gm-Message-State: AOAM532wb/u45i2vT+VfZcd/6EJDfT9WE1DyF1xqMpWzXHGnL3ZoZndb
        FF27XKp1hwrOM+TGfWJC0gSJfQ==
X-Google-Smtp-Source: ABdhPJwTXHZP5PDYf47cVuytOuWRQMvaZxPhsVLjHkn2E/yCYJ/LpAqCdIaO/es35OFo7YfEcCYo3Q==
X-Received: by 2002:a17:902:dacb:b029:e5:b538:9ce6 with SMTP id q11-20020a170902dacbb02900e5b5389ce6mr1444258plx.8.1615353956435;
        Tue, 09 Mar 2021 21:25:56 -0800 (PST)
Received: from localhost.localdomain ([2402:3a80:9f4:a436:21bd:7573:25c0:73a0])
        by smtp.gmail.com with ESMTPSA id g7sm13915224pgb.10.2021.03.09.21.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 21:25:56 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH 5/8] clk: qcom: clk-rpmh: Add CE clock on sm8250
Date:   Wed, 10 Mar 2021 10:55:00 +0530
Message-Id: <20210310052503.3618486-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310052503.3618486-1-bhupesh.sharma@linaro.org>
References: <20210310052503.3618486-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm CE clock resource (managed by BCM) is also required
by sm8250 crypto driver to access the core clock, so add an entry
for the same in 'sm8250_rpmh_clocks' array.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/clk/qcom/clk-rpmh.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 91dc390a583b..59f73494a9c1 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -470,6 +470,7 @@ static struct clk_hw *sm8250_rpmh_clocks[] = {
 	[RPMH_RF_CLK1_A]	= &sdm845_rf_clk1_ao.hw,
 	[RPMH_RF_CLK3]		= &sdm845_rf_clk3.hw,
 	[RPMH_RF_CLK3_A]	= &sdm845_rf_clk3_ao.hw,
+	[RPMH_CE_CLK]		= &sdm845_ce.hw,
 };
 
 static const struct clk_rpmh_desc clk_rpmh_sm8250 = {
-- 
2.29.2

