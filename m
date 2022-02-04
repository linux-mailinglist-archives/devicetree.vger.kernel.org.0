Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98AA64A9B44
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 15:46:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359418AbiBDOqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 09:46:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359421AbiBDOqy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 09:46:54 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C45A8C06173E
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 06:46:53 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id o12so13029331lfg.12
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 06:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dQskIWPtgp2J5yJOwdCR4mBsDP1w2VL2nYwAV+AoOmM=;
        b=WSAmXb5F0p6ou1ZHNI2DrVx5lvwbHHwMQMjKOZ4cLRuhjDRMUdZidwARuayPIzv7WS
         qeiMX7Uqh5uMnPv4a2r9IFwd369fpG1b6HVQrwtuLpVyanDPWns7CZBoXmliEY4nxFO4
         p4kZihmAgfKszYRrYElizjI233FKZtlLZKbPmIorSEYhKi81v9Z/vvuCjjwzSSg6cwCt
         O8bEKZwJvQ4EkKsH54CtPQ5ZMoEuD7qvkjHcpD5hSVwOxG6gO5wINiNf86qnkFncqYbs
         JGdsoyiQLqTbCBQtU/K38C7xbp4yQzYYYg9AvGzCslN91Rx//JbIZPVnV3qIGjhTT83P
         HQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dQskIWPtgp2J5yJOwdCR4mBsDP1w2VL2nYwAV+AoOmM=;
        b=ndpvbKZj/+4nrT3jOIjVlfmMYiB6z30xL8Gv7g2h7hjyBB3YXYsOov8jWAb2RfOANP
         HWNU33nmBlQbKweQg/7VRYeX7I0BXnTQQFhadd1QS6PhaZD8p5W3lwxVFYLquh+lapWN
         MbVEDX1LwSa/qpneCJ5WytX5v74hYmZMnbjwv/jK6L3G33kwRUaa1elky2ajf/0wUMLf
         Hc5hqGcXUayRvCSWWE3dul3WfiQBPwuULj4k5+iZtKUpOXjhWmm1sfHTz+sKcyW/lTRR
         vTJ+v6potTrV410wxP98kCDS5oi0L3dN0cr5YpMrS6whS2bvASOJaumQjZidZT+e4kBU
         eEUA==
X-Gm-Message-State: AOAM533BerCQnCkrBFrm+NGaSk8SG1blflSlIBVnnlVRw/WgvjSNOYRs
        C0B9KkIQDOYaWkRUONxz9YuzTw==
X-Google-Smtp-Source: ABdhPJzZH3LUnkpEthSQS9GURctNxbyh2dNi9CcuZ5NiWTYdlJ/9UUv05scCKRvk4RNOBik3l/G2CQ==
X-Received: by 2002:a05:6512:118e:: with SMTP id g14mr2493286lfr.541.1643986012179;
        Fri, 04 Feb 2022 06:46:52 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y23sm348222lfb.2.2022.02.04.06.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 06:46:51 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 06/11] PCI: qcom: Balance pm_runtime_foo() calls
Date:   Fri,  4 Feb 2022 17:46:40 +0300
Message-Id: <20220204144645.3016603-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220204144645.3016603-1-dmitry.baryshkov@linaro.org>
References: <20220204144645.3016603-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the error path in qcom_pcie_probe(): remove extra calls to
pm_runtime_disable() (which will be called at the end of error path
anyway). Replace a call to pm_runtime_get_sync() with
pm_runtime_resume_and_get() to end up with cleaner code.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index c19cd506ed3f..85c2ad8c551c 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1549,9 +1549,9 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	pm_runtime_enable(dev);
-	ret = pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
 	if (ret < 0)
-		goto err_pm_runtime_put;
+		goto err_pm_runtime_disable;
 
 	pci->dev = dev;
 	pci->ops = &dw_pcie_ops;
@@ -1594,7 +1594,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 
 	ret = phy_init(pcie->phy);
 	if (ret) {
-		pm_runtime_disable(&pdev->dev);
 		goto err_pm_runtime_put;
 	}
 
@@ -1603,7 +1602,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 	ret = dw_pcie_host_init(pp);
 	if (ret) {
 		dev_err(dev, "cannot initialize host\n");
-		pm_runtime_disable(&pdev->dev);
 		goto err_pm_runtime_put;
 	}
 
@@ -1611,6 +1609,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 
 err_pm_runtime_put:
 	pm_runtime_put(dev);
+err_pm_runtime_disable:
 	pm_runtime_disable(dev);
 
 	return ret;
-- 
2.34.1

