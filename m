Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5C70389171
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354381AbhESOk4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:40:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347639AbhESOki (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:40:38 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AA11C061373
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:38:46 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id t193so9612822pgb.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TY0eJSU95uLiOCWXW1DYk1X5OH/Ime0PUPY+J48rkIg=;
        b=F3d7wUPyo9PBu8YRLs5cZJpSw17DtIczxMbxddaoCAbCm/qZ4eNqEJBlW6K3+/ftz5
         ZiQxmMWV1oyHOkPnF6TKxjKnTD7J2o6YaIRE5xNS9QkPLIQPr/dv3Ve5BszmenWPW20T
         RceTiqnNCAXyMMzU4ouqs/LQKpmWNFxB5dzWpjPejzxluBp2VRt+C3jLe5P5ng/CgR69
         bkVfRELgzDP2UHePljJD6dEDqykpHrLoN4k3IOrUziwzWwxdvDwr3x9Sf+xLKDH9XNWQ
         wOHzOSVN1GqoBoZ8oFgK7ifa67R2P3Abp+fHB/HVf7D0iHl8PSluEKU7wCSO6/kD+AIi
         DGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TY0eJSU95uLiOCWXW1DYk1X5OH/Ime0PUPY+J48rkIg=;
        b=FaR9Y7ODm6LdnAI7xKw8iEF6O9jR/9pIYgfM7mHQbucQ2JqjNY9m/5X/m73uZwG+Mv
         pojI5zKtRIWQSWlMu4K0aMmDhuvHjlLavujdAeiHt7X8sJhTuFR0x2+OtFm6nSJNAu7N
         unlgl3nqlpVfENiKo+63Id5S3aWv0p+yabf7HD/uEmElKKTmD1pmOeCHqhZE2qKACNjk
         OpFGK4y19g3V9uZy+dyYeR1IqmXQn3helnGAvsNU/JdLiDaUk4R/uCC4m9bElqPwJj3i
         hB5D5Yyif6JGdZf9erjZ4WFx9bwUG1gK8VCdQmWRzANdSvJRGt8Wfn9XmCUqPJdN59UB
         Qp7Q==
X-Gm-Message-State: AOAM5310Tz+5ArjQNRIoWFB3dHyZqpRD82oPuFwTFJKha54gFrHcSSRO
        ieMN/Ej946DHdlA41U8ONY09RA==
X-Google-Smtp-Source: ABdhPJyHx1wCzN9J3+OQs1nCUtaRmTRkPnFBIJdgGQJ4sMPEBbrS3fiqDdhkUvjCmLlBm8BwCupgfQ==
X-Received: by 2002:a62:7c12:0:b029:2d9:a70:2b9c with SMTP id x18-20020a627c120000b02902d90a702b9cmr11182474pfc.22.1621435125887;
        Wed, 19 May 2021 07:38:45 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.135.250])
        by smtp.gmail.com with ESMTPSA id o24sm9239515pgl.55.2021.05.19.07.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:38:45 -0700 (PDT)
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
        Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH v3 12/17] crypto: qce: Add new compatibles for qce crypto driver
Date:   Wed, 19 May 2021 20:06:55 +0530
Message-Id: <20210519143700.27392-13-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
References: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since we decided to use soc specific compatibles for describing
the qce crypto IP nodes in the device-trees, adapt the driver
now to handle the same.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/crypto/qce/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index 89a17b677607..905378906ac7 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -285,8 +285,8 @@ static int qce_crypto_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id qce_crypto_of_match[] = {
-	{ .compatible = "qcom,crypto-v5.1", },
-	{ .compatible = "qcom,crypto-v5.4", },
+	{ .compatible = "qcom,ipq6018-qce", },
+	{ .compatible = "qcom,sdm845-qce", },
 	{}
 };
 MODULE_DEVICE_TABLE(of, qce_crypto_of_match);
-- 
2.31.1

