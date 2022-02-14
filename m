Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE9B24B55B5
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:12:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356151AbiBNQKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:10:32 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356167AbiBNQKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:10:23 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E1360D81
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:14 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id q7so27581223wrc.13
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b/uKzniHb9UB6MYZAJLuo4z7YZEOuojp10KqgKZuEAA=;
        b=qdt0JjkIS5Au+XCm2PNkkj4pu2ouPIrhx3OvBdF9QpFcoEr0MoQ6rN5+iZarwCB2k0
         bBXXvgh2RuQ+9eM2aRWhX4C4ylqiaQYrP5DsP8HjKKD4KicSZSWnOo4lqntP6+C25ZtI
         FdbDbNfZ1t+Z/Kj7QNoBxvdbAQoU3dukDdBbnV51ap+V+VAeRWy7aMloAkIGj8r1OqkH
         s89B4FJUOR8BLqH0B0BsVgmKg2oKBeuMlEBYlbVdj9XlrynDcT1x6wOdCkkQbIu/FkhO
         R1Zl8t69i3eLMCM1+FNWvO9owdDRSchX/I/x886RgOC8xlYZyH8TohUqaNIlWm7m2DK7
         NKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b/uKzniHb9UB6MYZAJLuo4z7YZEOuojp10KqgKZuEAA=;
        b=QVgESZ+8FiEgm9baXe+Iri2Ch/I3ct7rItMNKTIEbiG2W9I52xoK6RQmiEVITa813R
         6Mu1WbQoxAoCStFWo93cuzqzs/l9qkVDS3PFBEqd5IXsUHHLniOSD/YiWCoJu4qbIsf4
         K4DmqtwGGi9WY7fORMmhJ8hKOI9YYZdtcVDiF9v3KyQdLhm97uffeU71iWSNdEjDq/ul
         7xX65CFCABBOuBLSGg3tsV00BxrgXZDazuI/G/EPqa5qHlR5/T7iVxNxVM4rI01831FS
         kIksoxLHejzb7leQ2YqUCV2Cf3gbwBvf2asyO7/v0IOevo86gbYwK6negAe5smjzeYIg
         UPsA==
X-Gm-Message-State: AOAM533dIfP5LuTgtIwZNa+j758Pyc67OOqt/S9vDD3O0+bYAEUucg+n
        y5tq1SIPf+kiAOaiw5Z+VVXfZw==
X-Google-Smtp-Source: ABdhPJzTl37LXFaFRnBtOkuhJqHbJgq3ph4br9O4D918TmCZs1OyIKcYqr4vD5thysE8BsQxlCWIFw==
X-Received: by 2002:a5d:64ec:: with SMTP id g12mr272829wri.143.1644855013363;
        Mon, 14 Feb 2022 08:10:13 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id k28sm13677022wms.23.2022.02.14.08.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 08:10:12 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        bkumar@qti.qualcomm.com, linux-kernel@vger.kernel.org,
        srini@kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 05/12] misc: fastrpc: add secure domain support
Date:   Mon, 14 Feb 2022 16:09:55 +0000
Message-Id: <20220214161002.6831-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220214161002.6831-1-srinivas.kandagatla@linaro.org>
References: <20220214161002.6831-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ADSP/MDSP/SDSP are by default secured, which means it can only be loaded
with a Signed process.
Where as CDSP can be either be secured/unsecured. non-secured Compute DSP
would allow users to load unsigned process and run hexagon instructions,
but blocking access to secured hardware within the DSP. Where as signed
process with secure CDSP would be allowed to access all the dsp resources.

This patch adds basic code to create device nodes as per device tree property.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/misc/fastrpc.c | 55 +++++++++++++++++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 9 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 528ae5777586..af8bb4bd0cb3 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -241,12 +241,15 @@ struct fastrpc_channel_ctx {
 	/* Flag if dsp attributes are cached */
 	bool valid_attributes;
 	u32 dsp_attributes[FASTRPC_MAX_DSP_ATTRIBUTES];
+	struct fastrpc_device *secure_fdevice;
 	struct fastrpc_device *fdevice;
+	bool secure;
 };
 
 struct fastrpc_device {
 	struct fastrpc_channel_ctx *cctx;
 	struct miscdevice miscdev;
+	bool secure;
 };
 
 struct fastrpc_user {
@@ -1690,7 +1693,7 @@ static int fastrpc_req_mem_map(struct fastrpc_user *fl, char __user *argp)
 		return -EFAULT;
 
 	/* create SMMU mapping */
-	err = fastrpc_map_create(fl, req.fd, req.length, &map);
+	err = fastrpc_map_create(fl, req.fd, req.length, 0, &map);
 	if (err) {
 		dev_err(dev, "failed to map buffer, fd = %d\n", req.fd);
 		return err;
@@ -1884,7 +1887,7 @@ static struct platform_driver fastrpc_cb_driver = {
 };
 
 static int fastrpc_device_register(struct device *dev, struct fastrpc_channel_ctx *cctx,
-				   const char *domain)
+				   bool is_secured, const char *domain)
 {
 	struct fastrpc_device *fdev;
 	int err;
@@ -1893,13 +1896,19 @@ static int fastrpc_device_register(struct device *dev, struct fastrpc_channel_ct
 	if (!fdev)
 		return -ENOMEM;
 
+	fdev->secure = is_secured;
 	fdev->cctx = cctx;
 	fdev->miscdev.minor = MISC_DYNAMIC_MINOR;
 	fdev->miscdev.fops = &fastrpc_fops;
-	fdev->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "fastrpc-%s", domain);
+	fdev->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "fastrpc-%s%s",
+					    domain, is_secured ? "-secure" : "");
 	err = misc_register(&fdev->miscdev);
-	if (!err)
-		cctx->fdevice = fdev;
+	if (!err) {
+		if (is_secured)
+			cctx->secure_fdevice = fdev;
+		else
+			cctx->fdevice = fdev;
+	}
 
 	return err;
 }
@@ -1910,6 +1919,7 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 	struct fastrpc_channel_ctx *data;
 	int i, err, domain_id = -1;
 	const char *domain;
+	bool secure_dsp;
 
 	err = of_property_read_string(rdev->of_node, "label", &domain);
 	if (err) {
@@ -1933,10 +1943,31 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 	if (!data)
 		return -ENOMEM;
 
-	err = fastrpc_device_register(rdev, data, domains[domain_id]);
-	if (err) {
-		kfree(data);
-		return err;
+
+	secure_dsp = !(of_property_read_bool(rdev->of_node, "qcom,non-secure-domain"));
+	data->secure = secure_dsp;
+
+	switch (domain_id) {
+	case ADSP_DOMAIN_ID:
+	case MDSP_DOMAIN_ID:
+	case SDSP_DOMAIN_ID:
+		err = fastrpc_device_register(rdev, data, secure_dsp, domains[domain_id]);
+		if (err)
+			goto fdev_error;
+		break;
+	case CDSP_DOMAIN_ID:
+		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
+		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
+		if (err)
+			goto fdev_error;
+
+		err = fastrpc_device_register(rdev, data, false, domains[domain_id]);
+		if (err)
+			goto fdev_error;
+		break;
+	default:
+		err = -EINVAL;
+		goto fdev_error;
 	}
 
 	kref_init(&data->refcount);
@@ -1950,6 +1981,9 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 	data->rpdev = rpdev;
 
 	return of_platform_populate(rdev->of_node, NULL, NULL, rdev);
+fdev_error:
+	kfree(data);
+	return err;
 }
 
 static void fastrpc_notify_users(struct fastrpc_user *user)
@@ -1976,6 +2010,9 @@ static void fastrpc_rpmsg_remove(struct rpmsg_device *rpdev)
 	if (cctx->fdevice)
 		misc_deregister(&cctx->fdevice->miscdev);
 
+	if (cctx->secure_fdevice)
+		misc_deregister(&cctx->secure_fdevice->miscdev);
+
 	of_platform_depopulate(&rpdev->dev);
 
 	cctx->rpdev = NULL;
-- 
2.21.0

