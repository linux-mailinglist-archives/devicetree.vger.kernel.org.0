Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAE60ECC41
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2019 01:16:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728222AbfKBAQh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Nov 2019 20:16:37 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:40842 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727846AbfKBAQh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Nov 2019 20:16:37 -0400
Received: by mail-pf1-f193.google.com with SMTP id r4so8090196pfl.7
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2019 17:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vwfNasNmk/zaE6boGrbx1PqkuEi6mq3j6Mt8dGLE6Ps=;
        b=EPcVFzqSL64s0YIj+h3PJq7y8bYRW20pfznj3BLHp+oQLsCu3Ta+Q7gXLFv4bwQ0w+
         hl2erg4NmbjRIS+aGigEMfaHHtBJW3JgeboPhNoQlrj2wFQ0EQ7/g8rwaxWbzge6K1CT
         ZH4cBy3Yc8PzgTHrPI2MHY2vk8cvgpFjyMLd59iAze207ykg0bFbbRVErSC/wKaQEmrn
         BVhgmbzSLluEpgOJyFg4wrRyVgj/FB9cJrjeajfNHqFTIZrSqHGOYi+XMfSGXiNYTlpo
         QpcwmubIccH28bOHvX+fUEee08/bNfwv1MPWtIWp7+7eQSBA8bSTycr4yA4cqGoulglR
         MoDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vwfNasNmk/zaE6boGrbx1PqkuEi6mq3j6Mt8dGLE6Ps=;
        b=bWLyonD0YlRJP5iwA9louvkNo2r1nnFwkmObVc1RM0XLb/dNFuGZZfF+iEjxTZuzko
         3aOh9J6Z2JJ2v70okNgHRDqcSj1yEXcBok4/Q/fRLEt5enxNsVmVkJ0OfFC6W7PHfZKq
         i+rFm8jtir7fbVfUP0gRSUzwDwVspZznKf9bVz7jMFQXw4OKrlsTDVIlm4WfVHxNA6h/
         5NhGzs5ZdGZQgLY5iY6XoO7Pu5R5zUcKF4HZDM6eUrELIQwQjErNHQSBVsNbR09T0RUd
         Dw4NRqlyw7H05I/63KktzJgVrTU/ASHzCq9gmkpM6F6XDLJUDrhSP2JUtMAG8dmQPdPj
         2Yrg==
X-Gm-Message-State: APjAAAVYSQSN4uAdJkY0RK2QAS6bNMsgl3kIhqrbRKOHUvXsonUxLxOP
        m5jwWlah5m3Keqg/dbvMZCeE2A==
X-Google-Smtp-Source: APXvYqySSoNenfb7Gm7zScZPIqQugNGFW6uy/GggRVKYyC4nFsrgeNA8bJ/glcvhuN4MFJwUGGOp1w==
X-Received: by 2002:a17:90a:3ac8:: with SMTP id b66mr19246861pjc.9.1572653796381;
        Fri, 01 Nov 2019 17:16:36 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id j11sm7876250pgk.3.2019.11.01.17.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:16:35 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/5] phy: qcom: qmp: Use power_on/off ops for PCIe
Date:   Fri,  1 Nov 2019 17:16:26 -0700
Message-Id: <20191102001628.4090861-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102001628.4090861-1-bjorn.andersson@linaro.org>
References: <20191102001628.4090861-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PCIe PHY initialization requires the attached device to be present,
which is primarily achieved by the PCI controller driver.  So move the
logic from init/exit to power_on/power_off.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- New patch

 drivers/phy/qualcomm/phy-qcom-qmp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 66f91726b8b2..b9f849d86795 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -1968,7 +1968,7 @@ static const struct phy_ops qcom_qmp_phy_gen_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static const struct phy_ops qcom_qmp_ufs_ops = {
+static const struct phy_ops qcom_qmp_pcie_ufs_ops = {
 	.power_on	= qcom_qmp_phy_enable,
 	.power_off	= qcom_qmp_phy_disable,
 	.set_mode	= qcom_qmp_phy_set_mode,
@@ -2068,8 +2068,8 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id)
 		}
 	}
 
-	if (qmp->cfg->type == PHY_TYPE_UFS)
-		ops = &qcom_qmp_ufs_ops;
+	if (qmp->cfg->type == PHY_TYPE_UFS || qmp->cfg->type == PHY_TYPE_PCIE)
+		ops = &qcom_qmp_pcie_ufs_ops;
 
 	generic_phy = devm_phy_create(dev, np, ops);
 	if (IS_ERR(generic_phy)) {
-- 
2.23.0

