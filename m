Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E568F32D266
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 13:09:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239946AbhCDMGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 07:06:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239954AbhCDMGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 07:06:36 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94C7EC0613A7
        for <devicetree@vger.kernel.org>; Thu,  4 Mar 2021 04:05:55 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id b7so20955161edz.8
        for <devicetree@vger.kernel.org>; Thu, 04 Mar 2021 04:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZzNAE8DcF9c7gV07r9a7AjhjR1cDYzLUD3bNmPF3IsA=;
        b=IoI4Z42ESsRI/IHOgWdbFDzDe3K8zFMLxJhPAj1yPeDFYKU5ai0630E6DGe9oytfaR
         Y39MkN2E3MxADtOfbqgqVs9ICcWheqVm0jFWzmjHCgFp/pW/h5HL4nz0aoYaFQVBOl3g
         M9PlKW4GBi2XW3upiswdjDjsu2Hc0d6Fw3/zOtxNyYvD/uaBSuJkx/swuxEjrXIdSbYb
         7CDx6/LW2SQa26mnlw0JhU1H257isqP1LY9jcRemmusitsU6t5qUXX3wW/opp5jcDjKM
         o3RQXbTWQ7Dzbv2TZC5OLGsUD32ocNswHHjbljYKEMdmW+iem+vWSqwtfsKBOUWj6iZS
         zxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZzNAE8DcF9c7gV07r9a7AjhjR1cDYzLUD3bNmPF3IsA=;
        b=dq6cbaBSR0L1ZzyN2/Nm/qMN6LDA/PFnCmvMve8IKEVb4xUuGgBr1f5o2+OR48Um+K
         EcPBWu/ZTfyVbW6KqtKORAF2XqImazVDvQFmb0fPsuPrXU3CFIHgj+v2yn3AjRH0sA5l
         pEF6EmqhoxCg/Mlv2/Mo4yGNMs1QrPZXLAu1I+CA0g2bAqmN7hH9uSvCPhIF7sNBwl9e
         t0NPv+Rk6fuDN+sZmdUL/x7H7gWAuKfFFTAhcH0Gs2V3pQDoDpSGej+rrvSeidDqg8Ss
         uL6Dh+PdHywyQKAVt5w1W1OmSs4qO2noOh0B+3WMi9ot08MOPrfgtX96qDveHRW/CXlj
         byJw==
X-Gm-Message-State: AOAM530eF7lP4CufCP3/SFttdm23MLS8VUmPJVUInmBQzmg/DSIiUQfG
        SPqJEjSOKBk9ElKBVRQJIMwRKg==
X-Google-Smtp-Source: ABdhPJwGXgGGQJj8dD5+wzj5VQ2Tq754qCjScfxg3Ey/rw9mC8F7pkpkQoDM+eqRmktGOufdisWrOQ==
X-Received: by 2002:aa7:d54a:: with SMTP id u10mr3985931edr.316.1614859554370;
        Thu, 04 Mar 2021 04:05:54 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:470a:340b:1b:29dd])
        by smtp.gmail.com with ESMTPSA id cf6sm20464447edb.92.2021.03.04.04.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 04:05:53 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v6 13/22] media: camss: Enable SDM845
Date:   Thu,  4 Mar 2021 13:03:19 +0100
Message-Id: <20210304120326.153966-14-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210304120326.153966-1-robert.foss@linaro.org>
References: <20210304120326.153966-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable support for SDM845 based Titan 170 ISPs.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>

---

Changes since v5
 - Andrey: Add r-b

 drivers/media/platform/qcom/camss/camss.c | 17 +++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  6 ++++--
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 0a9388227c59..7446f9c71b3a 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -916,6 +916,12 @@ static int camss_init_subdevices(struct camss *camss)
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
@@ -1218,6 +1224,8 @@ static int camss_configure_pd(struct camss *camss)
 	if (camss->version == CAMSS_8x96 ||
 	    camss->version == CAMSS_660)
 		nbr_pm_domains = PM_DOMAIN_GEN1_COUNT;
+	else if (camss->version == CAMSS_845)
+		nbr_pm_domains = PM_DOMAIN_GEN2_COUNT;
 
 	for (i = 0; i < nbr_pm_domains; i++) {
 		camss->genpd[i] = dev_pm_domain_attach_by_id(camss->dev, i);
@@ -1286,6 +1294,12 @@ static int camss_probe(struct platform_device *pdev)
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
@@ -1417,6 +1431,8 @@ void camss_delete(struct camss *camss)
 	if (camss->version == CAMSS_8x96 ||
 	    camss->version == CAMSS_660)
 		nbr_pm_domains = PM_DOMAIN_GEN1_COUNT;
+	else if (camss->version == CAMSS_845)
+		nbr_pm_domains = PM_DOMAIN_GEN2_COUNT;
 
 	for (i = 0; i < nbr_pm_domains; i++) {
 		device_link_del(camss->genpd_link[i]);
@@ -1450,6 +1466,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,msm8916-camss" },
 	{ .compatible = "qcom,msm8996-camss" },
 	{ .compatible = "qcom,sdm660-camss" },
+	{ .compatible = "qcom,sdm845-camss" },
 	{ }
 };
 
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 244991710879..a2994c9251f4 100644
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

