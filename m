Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7EB2FE02D
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 04:52:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727155AbhAUDwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 22:52:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733244AbhAUBr1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 20:47:27 -0500
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2552C06179B
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 17:45:59 -0800 (PST)
Received: by mail-oo1-xc2b.google.com with SMTP id x203so122865ooa.9
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 17:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6KQrJpxzoEOP183dwS54dhdJ00ZQkcSYlNAckMrfyS4=;
        b=pWN+Q8SFX0/VoEi62+5ReF1K5LVJ8inQdlJsatRbtoMa9Or+sx8ejT9jJ7YkPOvzlU
         mKLchPlYnhLgHBRTt90Kln+V0lXx0QutBR5YeXqVCkxuZ8I4nLHsj2nE9NgOqIqlCCOJ
         NMNvqyJihw6wqTUCccLQXOAoHPRhHzegPzrg5qqetLwqCxBumeiaqBqZNEiuALRgD9qx
         OGpTwXSF5PgxONbhZPcT/qm67ZhKr4yObFx5PoRcJNt4Ger4FMuHf48qWG8m+3+aK9PF
         xRW52FzedpD6N7xXriTG8t2lngDRnNnqBz8eaITE62Jf8+z8DljEU2NSqRRZCmR0ON06
         Q8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6KQrJpxzoEOP183dwS54dhdJ00ZQkcSYlNAckMrfyS4=;
        b=CD82m3OJ6q6UBGtOyp7gOcYVU/Gl6jtSmHiRcbZJ6NaEl15VCjoe8KN8zdW4JYMJxK
         Y+REiS49RvEgRvyjPgQupdufggEbRe/p4rc6fpy+/Ujh9tzq8b6ylSXDGHdDLyUAhOtL
         SNAo6rh9hCwjvTYidSOfpnj2EB1KqgHAASkKKhHNfW99/FE1CA5lHP1yQAtyQyYvZ++a
         8YQkTQthSlIT+sRTT/MEsaiXpZbCdJ7qFCELh+9e7koHFcBhUuYxXgTdEYLRauEXqDdv
         PziAgk+cps2I0YYPlvOXUMvW80zg1LbEeKak+nNn6YSEMZnh1g3ByFeoR9tGU9AlHe07
         Pp/g==
X-Gm-Message-State: AOAM532MCR7mJMpUrCUYsgEmLwGYE6qBPD4AGU2I8ekU8T6F25j4PQEj
        Uo+qLmc7K+g8gZyxUdnICilCQw==
X-Google-Smtp-Source: ABdhPJw7hcw3C3V4C4SQV3doWhAKFFrJsBA2zpYFqPvJYlRSPdw9RtlatXpFYUcp9cqtI/6r1ZGBTQ==
X-Received: by 2002:a4a:9608:: with SMTP id q8mr3051298ooi.79.1611193559419;
        Wed, 20 Jan 2021 17:45:59 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j17sm784398otj.52.2021.01.20.17.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 17:45:58 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] soc: qcom: aoss: Add SC8180X compatible
Date:   Wed, 20 Jan 2021 17:46:06 -0800
Message-Id: <20210121014606.1612668-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121014606.1612668-1-bjorn.andersson@linaro.org>
References: <20210121014606.1612668-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm SC8180X platform has an AOSS that needs to be communicated
with, add a compatible for this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/soc/qcom/qcom_aoss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/qcom_aoss.c b/drivers/soc/qcom/qcom_aoss.c
index b5840d624bc6..bc01ff7c5d3f 100644
--- a/drivers/soc/qcom/qcom_aoss.c
+++ b/drivers/soc/qcom/qcom_aoss.c
@@ -597,6 +597,7 @@ static int qmp_remove(struct platform_device *pdev)
 
 static const struct of_device_id qmp_dt_match[] = {
 	{ .compatible = "qcom,sc7180-aoss-qmp", },
+	{ .compatible = "qcom,sc8180x-aoss-qmp", },
 	{ .compatible = "qcom,sdm845-aoss-qmp", },
 	{ .compatible = "qcom,sm8150-aoss-qmp", },
 	{ .compatible = "qcom,sm8250-aoss-qmp", },
-- 
2.29.2

