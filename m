Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 415DD370B7A
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 14:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232178AbhEBMVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 08:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232167AbhEBMVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 08:21:39 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A72DDC06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 05:20:47 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id b17so178289ede.0
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 05:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DVP6tvcY63isDzrbgebsNJ+d5nHbeNK30t0HTq6Wq9o=;
        b=Og8MV0xvowL/XNFJbuLBiawFbDdqVUe3M5x6cFxDxOtAZ9uAWLJdG0el6oiCBtbjE3
         Uy89+c9bsXRg316V3OblZgQITGvdaD1PUEa20SLG3gt7upEeAIA0yDlAW+ePzXt2qVi/
         UE5qjhdKEofCBodirCKhTv2yP88/KhjYrMGeWlLie0BDsV8kjYzlnUGS1VnrL0O5UGxV
         gzV9fVS8qapyfiknVpVrU/uHJ23mXtcf/FikaVhs19EaMUVPikvGcpHzseztvw6rMkVo
         SmekMdwy3e/N4qJMCX0luGIXAj/DC2u6RpW7gmEpNN1e5NFbh6Ukcy555ZBBOxhMbnov
         zFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DVP6tvcY63isDzrbgebsNJ+d5nHbeNK30t0HTq6Wq9o=;
        b=cxwicNhkWWzdinV3ZRVzlEblTTbxSCU+0r49LOzS1GqMcXiIxl6ZeZh/NjgPJ8m/dQ
         L3w6nVdtLlZlTMOYnE9mtLAR9GF0K+70IBFvzN7ysHQGYvOTCjJz4j8IB+Y2s4qr6JwC
         n1M92cuEvTEQ/z2CFuwqt4764pPUIeEmxpqJgDN5oQpMkhTIIw3jCaPTTa66nLUS0YNW
         C/tgzbdTpA/ra47NCWuXfE0wHugbSXQPNqmTAzNBawBCzHoOnNN5sclk06d+OF0ot9iI
         WVtduOptPPshC+kpr7ZW+Ez9rUs64/kd4hvRmTHnsT8BJf5+Jivw49s4mGYghxS5shT7
         nLJg==
X-Gm-Message-State: AOAM533Age0nlZ0dMQH5ScxyloNZhne8ByXZ3Nt9n2BgFaZMxN8qyivK
        vmKU29tdf+CyAifzAerEkWwN4Q==
X-Google-Smtp-Source: ABdhPJwGSU2RTKhUOnidg44VV7INqtY5vNHzHH8BZy+McrojNRPs1BvDK/zKbJFPPa1OjSEe7j1/3w==
X-Received: by 2002:a05:6402:309c:: with SMTP id de28mr15088836edb.191.1619958046471;
        Sun, 02 May 2021 05:20:46 -0700 (PDT)
Received: from PackardBell (192038133011.mbb.telenor.dk. [192.38.133.11])
        by smtp.googlemail.com with ESMTPSA id p21sm10064085edw.18.2021.05.02.05.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 05:20:46 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id ab01b034;
        Sun, 2 May 2021 12:20:32 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [PATCH 2/4] soc: qcom: smd-rpm: Add MSM8226 compatible
Date:   Sun,  2 May 2021 14:20:25 +0200
Message-Id: <20210502122027.9351-3-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210502122027.9351-1-bartosz.dudziak@snejp.pl>
References: <20210502122027.9351-1-bartosz.dudziak@snejp.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible for the RPM on the Qualcomm MSM8226 platform.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 drivers/soc/qcom/smd-rpm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/smd-rpm.c b/drivers/soc/qcom/smd-rpm.c
index b93218cb50..abd4178ec1 100644
--- a/drivers/soc/qcom/smd-rpm.c
+++ b/drivers/soc/qcom/smd-rpm.c
@@ -233,6 +233,7 @@ static void qcom_smd_rpm_remove(struct rpmsg_device *rpdev)
 static const struct of_device_id qcom_smd_rpm_of_match[] = {
 	{ .compatible = "qcom,rpm-apq8084" },
 	{ .compatible = "qcom,rpm-ipq6018" },
+	{ .compatible = "qcom,rpm-msm8226" },
 	{ .compatible = "qcom,rpm-msm8916" },
 	{ .compatible = "qcom,rpm-msm8936" },
 	{ .compatible = "qcom,rpm-msm8974" },
-- 
2.25.1

