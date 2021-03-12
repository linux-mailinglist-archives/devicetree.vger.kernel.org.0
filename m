Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5409338BA2
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:40:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbhCLLjy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:39:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230428AbhCLLjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:39:40 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 085BCC061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:39:40 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d15so4623327wrv.5
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gA35ua4Yb5kX/gYxKzQIpMpiocNgTXC/pKSapK7rZJo=;
        b=F79ymKCmc4cJYBdR3Ukg8NzVcPFXFDRgFsQBhgRAYZUeF3FvVHR6qFVZKQW2xuEXcT
         VLVmQImorUxowGUytzLRsxgfpsy5iHzqnVZY7NrrGcxAA2dD4hZn02GK2q+/kiVZZrHV
         G/lEZo6M/qr8nHRKomRlT9eBDVpooW5Jc4xBd5pumfLGm2IsDLQLmyz8DbX34GA7AJa0
         wOfuSnEVam8TM2suOCUiVI61yea1EP88HaFYUoFPSSWuIJ02feqQie8qV9gTo+BOPA+2
         kZDUb6Hqs+QICX6kLFq+1UqkUwCoPc+ZGSjWHcoIyjB30+b2ZuBykL0IdwGjrgY2d3DM
         5R0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gA35ua4Yb5kX/gYxKzQIpMpiocNgTXC/pKSapK7rZJo=;
        b=CXDy03UFsoLaeuxmNOe0uwXU8lh5C31xB/U0j4JNlE0O1njaAMvoTMDsBGSjcLc3/G
         rbdBIda1E1AD/GmzueSxDJZDx9Nqo86GXxvXIJlxDJx+MjeUYp7v9o2f4Vad5cjQMhXy
         2XfFKjR1GkI0uUDPYmpTTFxHRlQyNgnFsA0Ul8eq8QyzA0rG3dThhXqVJaM9yqy1hlNz
         X/zzr7fd79fLNOZ5BcMGs8wZokAOVp+6sRcLO4d9fUebvga5AuibXx6G9LSE3opNZIBl
         xsfpTWLtmqiWqlqIemO8xTnkusy/tS+/HoxCLeqYSiqxkczGTqFpzV/LZlIHiWKDzyrx
         iS6g==
X-Gm-Message-State: AOAM5314nHt6uS5Ob7Mug0CqDtIX4CVJBFdUd2nreybO6lF8WJ2DlkkI
        7iuxIMxcF7Lm99x2RkcB8oIzW9CIGXZKOg==
X-Google-Smtp-Source: ABdhPJxpc67EfMO/t6B/eAbIHJnWkFVeBrokTG0dN3jZlqWh6LotgigLaR33Kxcl61eXXyIzmlT8rQ==
X-Received: by 2002:a05:6000:1210:: with SMTP id e16mr13700270wrx.19.1615549178812;
        Fri, 12 Mar 2021 03:39:38 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id z1sm7412458wru.95.2021.03.12.03.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:39:38 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 5/5] ASoC: codecs: wsa881x: add static port map support
Date:   Fri, 12 Mar 2021 11:39:29 +0000
Message-Id: <20210312113929.17512-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312113929.17512-1-srinivas.kandagatla@linaro.org>
References: <20210312113929.17512-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Two instances of WSA881x(Speaker Right, Speaker Left) ports
are statically mapped to master ports. Allow the driver to parse
those mappings from device tree.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wsa881x.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/sound/soc/codecs/wsa881x.c b/sound/soc/codecs/wsa881x.c
index db87e07b11c9..b3568aec0cd0 100644
--- a/sound/soc/codecs/wsa881x.c
+++ b/sound/soc/codecs/wsa881x.c
@@ -1093,6 +1093,7 @@ static int wsa881x_probe(struct sdw_slave *pdev,
 			 const struct sdw_device_id *id)
 {
 	struct wsa881x_priv *wsa881x;
+	struct device *dev = &pdev->dev;
 
 	wsa881x = devm_kzalloc(&pdev->dev, sizeof(*wsa881x), GFP_KERNEL);
 	if (!wsa881x)
@@ -1105,6 +1106,12 @@ static int wsa881x_probe(struct sdw_slave *pdev,
 		return PTR_ERR(wsa881x->sd_n);
 	}
 
+	/* valid port numbers on this codec starts from 1, so skip 0th index */
+	if (of_property_read_u32_array(dev->of_node, "qcom,port-mapping",
+				       &pdev->m_port_map[1],
+				       WSA881X_MAX_SWR_PORTS))
+		dev_info(dev, "Static Port mapping not specified\n");
+
 	dev_set_drvdata(&pdev->dev, wsa881x);
 	wsa881x->slave = pdev;
 	wsa881x->dev = &pdev->dev;
-- 
2.21.0

