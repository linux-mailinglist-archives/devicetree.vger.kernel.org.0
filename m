Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 977252FDD4B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 00:45:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732137AbhATXo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:44:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404051AbhATXXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 18:23:48 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 605A8C0617BB
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:45:25 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id 15so69758oix.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UMTJ0JHuVDvRdMql14H7mW/63Qwi+kchpGfybyMLqlE=;
        b=L9pnkOb1g0h9Evn94z6yhdXe3BvX/dUxq9knD0iUOvRAt1duITpneYRtHD+gXRcK6S
         Wjrf/CHEut8lVcecB5qDwtxsMJ7b8Vyn3RAA3BIkVo6iajtZ2Z8yWukVOPaEPAwG7439
         XYmbT+iozQ7IU7YXxxU84GmbxKMgK2dT0IFMR0QTxX373UWdKGZE2zoRojbdcmoLJkbP
         Vkz9FNtjrMVubvGmoH7N0ZjtH2Uscp9/1HFqolXy1BedRri1yOJ9uGdAB9kMdAvpGO/o
         pGMe5gO7Pkl2DmypS+eXHI7Ec6mwjQJMUXzDNoun+11rRuF3ncq5sVUpJRr4x+j8trVx
         j86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UMTJ0JHuVDvRdMql14H7mW/63Qwi+kchpGfybyMLqlE=;
        b=s+msp4bWR/mJQ7ldAaZZt8IQwA6LxXLh5DlFDJjvo7QI3SEbdsOdVcq7bdM3XSwmWQ
         cWFBO1VaqKdOu9pbV0Vlf9XmByfAXaTjVf1MNIbCAFDPHVmk/uIoWv2FC0KWhogiTfWi
         ygN4CAB8sDe4T9utjiwdzRamTkx+xv2R8gWusg8xHi6y+1kFyMqHVMCcPBoqMIDx3/gw
         nTeouQ3RychaJTrbO724i8SgNYfJkCzr7LZybGfl9Fk/0Mse8XeOTKcIVlPbmq27PM0s
         38Q1cdKlFz0fnHOuOJHA0ue14yesuHc3kompJ/vIQIjm4RJPYGorGDKuqADNZQwcfByL
         EXYA==
X-Gm-Message-State: AOAM532HL6+fbzAC/hKq6IyW3a4+78mBM+8BURev9cppkerHkGd+bxQ9
        VNguIpLjnoEzj9j/yfzy2L/BszUY9EG+IQ==
X-Google-Smtp-Source: ABdhPJyzj88dLLbYYlRKVCaP9cu++hO6ZvH1DKP9EnzLKSXpe9DE4vXK0nUQiowjRr/XNElYNdeXDQ==
X-Received: by 2002:aca:d98a:: with SMTP id q132mr4302008oig.33.1611182724813;
        Wed, 20 Jan 2021 14:45:24 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m18sm692791otj.50.2021.01.20.14.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 14:45:24 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom-qmp: Add SC8180X UFS phy
Date:   Wed, 20 Jan 2021 14:45:31 -0800
Message-Id: <20210120224531.1610709-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120224531.1610709-1-bjorn.andersson@linaro.org>
References: <20210120224531.1610709-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The UFS phy found in the Qualcomm SC8180X is either the same or very
similar to the phy present in SM8150, so add a compatible and reuse the
SM8150 configuration.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index bdcb8bf6225d..a1ea911856fb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -4208,6 +4208,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		/* It's a combo phy */
+	}, {
+		.compatible = "qcom,sc8180x-qmp-ufs-phy",
+		.data = &sm8150_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sdm845-qhp-pcie-phy",
 		.data = &sdm845_qhp_pciephy_cfg,
-- 
2.29.2

