Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF5BD3C28AB
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 19:43:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbhGIRp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 13:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231519AbhGIRp4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 13:45:56 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F737C0613E5
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 10:43:12 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id w127so13109410oig.12
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 10:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5MQYZkcj7PXPFMtimh+m2etrFEIiXsdDPmjJZdcGVj4=;
        b=aPLvukXvM1FC1LRyGwGij2jsF0yLRd2cT7TUSZ9bJjAuIx7TS6y1IoNHeazRuQn85I
         Jc4Y/rWLe/HH7cOVQ5c2ZFKi7VE4/DpiCGUIfhF6Ed3MzuONdNd4oI5Seg3zxUR1uuPs
         c5P56uAWAUPBxF7TixgekcTiQgC7z4ontqYTr4TDTW+mOzhk1asHrbq0b7MZoMgtqt/d
         E037IyDwpnUwhZCVeNVlqQmXXSnT/nHH2lle5RUJKxSEwWJSBIRwLyPxTffkxPetlk41
         o3aQoaz83tpiiizb8rQJfxikdr3BkQtZ5sxiZlQaw5j5lxy4GtGPf3XM/vjROYvudJVL
         fnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5MQYZkcj7PXPFMtimh+m2etrFEIiXsdDPmjJZdcGVj4=;
        b=OGcTkL0uuRJW1NRvCc6TJVTBS7+Ku/4arqGIt1IYEVlv/bDF4S4TW4WjGqZaDpRxrY
         XXNMvN42uVD5lyVFf4zV4S7P8FvV40VcCpoP0o5B5stL1d1ZLK3JXjOb02IxOm/u+dzt
         ura9aJIkRYOgLP+5SHDuVpcO3iRt+itj5LVHLxozjvUWBXwGTSV+OGTz6d47QIE/Prgy
         NcLCKNl0Dr55L5Dceg7N8OyaQDDQi/YvE15tNzZEj5M2zussBEZs9+6o8Tl3G6izrDyk
         3+/v2aPXAMZqhty/Qo4gFfCX6yNCgkNRocPlqUzJGeiLteovl4fpvvhaSWbIc8cTj5Ag
         f7ig==
X-Gm-Message-State: AOAM532i6Gq/z0lB9o60GuHFGKipT1MaZqhvmbKffDvwCwNJYtHw2fWS
        WZJ2f6v1HOoJeTmoRO3bBs30fA==
X-Google-Smtp-Source: ABdhPJyOlx52v2F41NFeyBTfCQWv3yZmy4Xt3t0F8QUUXQJEotXoT2vCvvP2SOrukmrSPeG6ziau1A==
X-Received: by 2002:a05:6808:d8:: with SMTP id t24mr14549348oic.105.1625852591772;
        Fri, 09 Jul 2021 10:43:11 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 100sm1263446otv.32.2021.07.09.10.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 10:43:11 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sibi S <sibis@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] soc: qcom: aoss: Add generic compatible
Date:   Fri,  9 Jul 2021 10:41:42 -0700
Message-Id: <20210709174142.1274554-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210709174142.1274554-1-bjorn.andersson@linaro.org>
References: <20210709174142.1274554-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It seems we don't need platform specific implementation for the AOSS
QMP, so let's introduce a generic compatible to avoid having to update
the driver for each platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- None

 drivers/soc/qcom/qcom_aoss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/qcom_aoss.c b/drivers/soc/qcom/qcom_aoss.c
index 934fcc4d2b05..92a1af70a649 100644
--- a/drivers/soc/qcom/qcom_aoss.c
+++ b/drivers/soc/qcom/qcom_aoss.c
@@ -602,6 +602,7 @@ static const struct of_device_id qmp_dt_match[] = {
 	{ .compatible = "qcom,sm8150-aoss-qmp", },
 	{ .compatible = "qcom,sm8250-aoss-qmp", },
 	{ .compatible = "qcom,sm8350-aoss-qmp", },
+	{ .compatible = "qcom,aoss-qmp", },
 	{}
 };
 MODULE_DEVICE_TABLE(of, qmp_dt_match);
-- 
2.29.2

