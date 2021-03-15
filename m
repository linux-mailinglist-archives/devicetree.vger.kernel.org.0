Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1799833C0E3
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 17:02:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232836AbhCOQBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 12:01:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbhCOQAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 12:00:51 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EF9EC06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:00:51 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id r17so67102948ejy.13
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R6aBUu7XE1YisU90N3EIguZcLh4QG6jqc/g/Smv0dIs=;
        b=Pt2wjwEGaTHW4jyO/7EDJbSgAUT3H9lHLgSWwvUlzKSa45Jtxk2vuL9tNRzYbeGHD1
         k1SycUo5PU5iET0yWfjMSihXIvQZ3lNEcb3DisrOPwKhoxo2CjGVJ0BEL0G88vISf/+v
         yIpdaEMVH2MB+3bQE1LZU0NmX0sHE9BLk4mWGeaXR4GBj/Q9XfAHSqge/o5fvm+EL6V7
         TMwwur+ql+ysV3QN2v6Jm65DPAWD50VAduIFgiZ5PfmcI7xQjbQNZkDCluDG8EibJLiy
         wXo4L9X/j0PMgFxKVgCOq2C3rpJNWn6Ir0w4hi9tF8qlglzRGrdhPiW/FIBT2QWKfOHT
         tF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R6aBUu7XE1YisU90N3EIguZcLh4QG6jqc/g/Smv0dIs=;
        b=EAv5rtjl3fsAntD2DhdyRtcUBMR0ko8mJJ0Hpk5BCr3Yg+0/2Wa48D0KGrPXCdeVcP
         J3Z1bp9y/6KqkNZ+4Ytbh54bHG37fAofKR0M9rsnxBV3VbwMYUtdwADgsZXsc52vs4tM
         CfIrwgOliMdOkCfOMW9Ku0fZgAaRw/whrBO9lmu+Ojg9dEYbekHQXzNMm2Z0bCURtkOl
         0PTsoDzbP9JnjO22IN0YJdS+vABIut3Aw9yttqbpaL/QwSo6pQp9u9/EWstUWVDPp2wr
         2jy08bkGHAYhVPzdUZprlaPwUH2WiOPG9acBJoCzGf9EOF6DyhqDXgaAzN6DVgO2VduK
         jMzQ==
X-Gm-Message-State: AOAM530XVMzH5KMlEfXMKSfEOk37IBvqI7+TcMO5L7PlW/tin4IgacbZ
        N7aUty9nUqM4YI+oVL62hGgqcg==
X-Google-Smtp-Source: ABdhPJyI9QEe8hhUS67pKJ1BlI8pBc7aerThh6+NwC4rEtbmohUvz5u11xYJS9nitzvFH4H6ZHn3KQ==
X-Received: by 2002:a17:906:cb0a:: with SMTP id lk10mr19592025ejb.479.1615824049713;
        Mon, 15 Mar 2021 09:00:49 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id r5sm8456445eds.49.2021.03.15.09.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 09:00:49 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Hans Verkuil <hverkuil@xs4all.nl>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v8 13/22] media: camss: Enable SDM845
Date:   Mon, 15 Mar 2021 16:59:34 +0100
Message-Id: <20210315155942.640889-14-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210315155942.640889-1-robert.foss@linaro.org>
References: <20210315155942.640889-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable support for SDM845 based Titan 170 ISPs.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---


Changes since v5:
 - Andrey: Add r-b


 drivers/media/platform/qcom/camss/camss.c | 17 +++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  6 ++++--
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 9b23285d1c20..ef100d5f7763 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -939,6 +939,12 @@ static int camss_init_subdevices(struct camss *camss)
 		csid_res = csid_res_660;
 		ispif_res = &ispif_res_660;
 		vfe_res = vfe_res_660;
+	}  else if (camss->version == CAMSS_845) {
+		csiphy_res = csiphy_res_845;
+		csid_res = csid_res_845;
+		/* Titan VFEs don't have an ISPIF  */
+		ispif_res = NULL;
+		vfe_res = vfe_res_845;
 	} else {
 		return -EINVAL;
 	}
@@ -1244,6 +1250,8 @@ static int camss_configure_pd(struct camss *camss)
 	if (camss->version == CAMSS_8x96 ||
 	    camss->version == CAMSS_660)
 		nbr_pm_domains = PM_DOMAIN_GEN1_COUNT;
+	else if (camss->version == CAMSS_845)
+		nbr_pm_domains = PM_DOMAIN_GEN2_COUNT;
 
 	for (i = 0; i < nbr_pm_domains; i++) {
 		camss->genpd[i] = dev_pm_domain_attach_by_id(camss->dev, i);
@@ -1312,6 +1320,12 @@ static int camss_probe(struct platform_device *pdev)
 		camss->csiphy_num = 3;
 		camss->csid_num = 4;
 		camss->vfe_num = 2;
+	} else if (of_device_is_compatible(dev->of_node,
+					   "qcom,sdm845-camss")) {
+		camss->version = CAMSS_845;
+		camss->csiphy_num = 4;
+		camss->csid_num = 3;
+		camss->vfe_num = 3;
 	} else {
 		ret = -EINVAL;
 		goto err_free;
@@ -1443,6 +1457,8 @@ void camss_delete(struct camss *camss)
 	if (camss->version == CAMSS_8x96 ||
 	    camss->version == CAMSS_660)
 		nbr_pm_domains = PM_DOMAIN_GEN1_COUNT;
+	else if (camss->version == CAMSS_845)
+		nbr_pm_domains = PM_DOMAIN_GEN2_COUNT;
 
 	for (i = 0; i < nbr_pm_domains; i++) {
 		device_link_del(camss->genpd_link[i]);
@@ -1476,6 +1492,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,msm8916-camss" },
 	{ .compatible = "qcom,msm8996-camss" },
 	{ .compatible = "qcom,sdm660-camss" },
+	{ .compatible = "qcom,sdm845-camss" },
 	{ }
 };
 
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 33ed16ab821d..dc8b4154f92b 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -60,6 +60,8 @@ enum pm_domain {
 	PM_DOMAIN_VFE0 = 0,
 	PM_DOMAIN_VFE1 = 1,
 	PM_DOMAIN_GEN1_COUNT = 2,	/* CAMSS series of ISPs */
+	PM_DOMAIN_VFELITE = 2,		/* VFELITE / TOP GDSC */
+	PM_DOMAIN_GEN2_COUNT = 3,	/* Titan series of ISPs */
 };
 
 enum camss_version {
@@ -83,8 +85,8 @@ struct camss {
 	int vfe_num;
 	struct vfe_device *vfe;
 	atomic_t ref_count;
-	struct device *genpd[PM_DOMAIN_GEN1_COUNT];
-	struct device_link *genpd_link[PM_DOMAIN_GEN1_COUNT];
+	struct device *genpd[PM_DOMAIN_GEN2_COUNT];
+	struct device_link *genpd_link[PM_DOMAIN_GEN2_COUNT];
 };
 
 struct camss_camera_interface {
-- 
2.27.0

