Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D412133DAAB
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 18:21:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239207AbhCPRVF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 13:21:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239124AbhCPRU2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 13:20:28 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65763C0613D9
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:20:27 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id o19so22491990edc.3
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mmqVIPBxKIKvU8Bdd/FgQ0GyF2dozyeDsDzk/kAUqZQ=;
        b=okHuJuiylPX9ztxuLMJpOQ1i730ZovLal4CO7XorLg0pw3awkr7Ulqq4v1kipTGHHi
         fXFSn1QqUv2KNzAnsDrYUN0mpRviC+I/kbT16accZcEskmoCqTJvwos8wJVvLnD/JiXk
         e1Pw8VGBvOPEIINN3MSc/HdGk7E9nSZzZQ0dGLoAVnagQmc5ARFTO3wJQzMB8uLg01DG
         9S+4x91w+nXy68kwH+TxMRHv5Kk5Yh1hnd3GO8HMypgKU9qyBRKM36WfZn7WgnSQMluI
         lpLXBj51H/pyhAwg2mVps24MuxGqqhoTgx0CEw2KnBPhr4GMFUFApdkiiYySTukD5kVq
         +6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mmqVIPBxKIKvU8Bdd/FgQ0GyF2dozyeDsDzk/kAUqZQ=;
        b=URIHASSdPFq1wJ/aj/nUDwnvZxiNWGGB8WFfepuHLJcm5fZU7JclAil2/dM0OuFqFc
         Bzinfd1WVfg89mEodiKbdnGTaUViqhsDdiOLHqtBQpLSHtDxDFa9cRwtp+G/GqmgUuDl
         mqx7wxJ8JgL1gTOUbjqa5vsCgye6BpVnUW3sNPx2SoGPPxT3RvvqRwwyBkTCSTw6uqY1
         rfWO9Wkd5eToggaWP93Qub2s0BNKbKkgAw92P0DOJQx9kIr4/7BX1plq3TzUtFL6R50V
         5lxJ9GpNKLuqYRNg4d0bGM4KR/+hed+ZvfAPBAUsjtPCBzPT1PLDV6lLSQJNui0ZmVKM
         pM+A==
X-Gm-Message-State: AOAM532QvwAZP0+G+DoceDrzE/a3lyNWAKeP8RlPT4mI5cqBu2eTm6rM
        7SC5SFxR2ioeZNVAuimo58pooQ==
X-Google-Smtp-Source: ABdhPJydmzbYOWD8LZsjUyQnLJiVq5lVaSW38NTCBm5qNy67joVleNXs7UZkauM5gdqilVRm0IR/uw==
X-Received: by 2002:a50:fa92:: with SMTP id w18mr37030856edr.172.1615915226182;
        Tue, 16 Mar 2021 10:20:26 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id u1sm10571584edv.90.2021.03.16.10.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 10:20:25 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org, mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
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
Subject: [PATCH v9 13/22] media: camss: Enable SDM845
Date:   Tue, 16 Mar 2021 18:19:22 +0100
Message-Id: <20210316171931.812748-14-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210316171931.812748-1-robert.foss@linaro.org>
References: <20210316171931.812748-1-robert.foss@linaro.org>
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

