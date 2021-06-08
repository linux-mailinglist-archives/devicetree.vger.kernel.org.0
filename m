Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF4A39FE30
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 19:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233883AbhFHRwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 13:52:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233748AbhFHRwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 13:52:41 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 201B9C061789
        for <devicetree@vger.kernel.org>; Tue,  8 Jun 2021 10:50:34 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id t140so17104020oih.0
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 10:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X9zro4Vc1E9NQWs0dfxD3ilnXRKka3meacOTat93e/Y=;
        b=K9ygi+hSRK7UXZ19Xo44KiVUwDJnhFLTAs69hp1Z4ik3ftARsDB4JpRtUCZJIhkT0c
         dPi7ZCrY+2SXu28N6UMSARt8QRwLApfh7yJrvjl+bLeRxxSz7r+ROAs+WhDTI8UGMDKi
         Fy0u6FzbblQkcyMcdlScSLlRbX/XAp+dVdr3cFsHFSpY+gxACyQEzF68b4CTcRa4HXOX
         c2L8knwj5f6wlmmr6kJdZWDP3BW/HZyApzEYc9PSH4VhmfW80EePozxYGBlNRAemS0BZ
         V9EzWLY4F2V18rBWdRbdN7me4M+mWXNzJ3ZhSM+7kUVFYe8P7ox8VPf+gDcQU8wp4GxM
         fruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X9zro4Vc1E9NQWs0dfxD3ilnXRKka3meacOTat93e/Y=;
        b=GomGwl9m/g/GIr7STGIO4z9Wbk8tpjnuVIrpRNsDy2NMKPVl14aDS7DnF2qCguRNKf
         SFSHScZ5qQzOfYClxEASDCr/Wn9DacXZQCRzxN1nQatShIgUpkUbx0MdDtVMy+5JyfKc
         MDV+3QF34uQbNJlW/+6N8OlzVLlUP9zzz4Kj5mX8/dNu/E9c4eUNVPcbqcWjoPBPOFjH
         ZvlinS/HmCZfu5p5x89eRtAR+yIluQQesQ/nOcmcr8+Hrn+7fpZfapEHl/ng+BZ4modt
         cOEdcOxQ7QXz5HnlMGG2JPqPEbW+uMN7TyUiUybkEksCKqWXaZ+LxWpl2wyJTC8nCtHw
         7T9Q==
X-Gm-Message-State: AOAM532iJHsVr8c5UuBK6PXX2Iexesn+GmzICdGvyec8n8moYfRoV9pp
        9l8qAUI8djgqxR9y2Z6FRw0bOQ==
X-Google-Smtp-Source: ABdhPJzNckfpl5VR9Un+ieSDIHA9Iu5hEPnv+vkak/JRYxMrZDzCrTVIH3cFsi02xXFOCzELBdbEqQ==
X-Received: by 2002:aca:340a:: with SMTP id b10mr3697818oia.95.1623174633383;
        Tue, 08 Jun 2021 10:50:33 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id c11sm1663960oot.25.2021.06.08.10.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 10:50:32 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] remoteproc: qcom: pas: Add SC8180X adsp, cdsp and mpss
Date:   Tue,  8 Jun 2021 10:49:44 -0700
Message-Id: <20210608174944.2045215-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608174944.2045215-1-bjorn.andersson@linaro.org>
References: <20210608174944.2045215-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm SC8180X has the typical ADSP, CDSP and MPSS remote
processors operated using the PAS interface, add support for these.

Attempts to configuring mss.lvl is failing, so a new adsp_data is
provided that skips this resource, for now.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- None

 drivers/remoteproc/qcom_q6v5_pas.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index b921fc26cd04..a79bee901e9b 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -689,6 +689,25 @@ static const struct adsp_data mpss_resource_init = {
 	.ssctl_id = 0x12,
 };
 
+static const struct adsp_data sc8180x_mpss_resource = {
+	.crash_reason_smem = 421,
+	.firmware_name = "modem.mdt",
+	.pas_id = 4,
+	.has_aggre2_clk = false,
+	.auto_boot = false,
+	.active_pd_names = (char*[]){
+		"load_state",
+		NULL
+	},
+	.proxy_pd_names = (char*[]){
+		"cx",
+		NULL
+	},
+	.ssr_name = "mpss",
+	.sysmon_name = "modem",
+	.ssctl_id = 0x12,
+};
+
 static const struct adsp_data slpi_resource_init = {
 		.crash_reason_smem = 424,
 		.firmware_name = "slpi.mdt",
@@ -811,6 +830,9 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,qcs404-cdsp-pas", .data = &cdsp_resource_init },
 	{ .compatible = "qcom,qcs404-wcss-pas", .data = &wcss_resource_init },
 	{ .compatible = "qcom,sc7180-mpss-pas", .data = &mpss_resource_init},
+	{ .compatible = "qcom,sc8180x-adsp-pas", .data = &sm8150_adsp_resource},
+	{ .compatible = "qcom,sc8180x-cdsp-pas", .data = &sm8150_cdsp_resource},
+	{ .compatible = "qcom,sc8180x-mpss-pas", .data = &sc8180x_mpss_resource},
 	{ .compatible = "qcom,sdm845-adsp-pas", .data = &adsp_resource_init},
 	{ .compatible = "qcom,sdm845-cdsp-pas", .data = &cdsp_resource_init},
 	{ .compatible = "qcom,sdx55-mpss-pas", .data = &sdx55_mpss_resource},
-- 
2.29.2

