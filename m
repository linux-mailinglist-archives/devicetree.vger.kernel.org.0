Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB28B338C9C
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:24:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229909AbhCLMX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:23:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231352AbhCLMXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:23:04 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67924C061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:23:04 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id o16so1666126wrn.0
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gA35ua4Yb5kX/gYxKzQIpMpiocNgTXC/pKSapK7rZJo=;
        b=rFfAknAn5CJnRejX4QyXzIFMwYrLIm4HeDtYghHnkwcBjzWm4mw9uVi+8lsyFKmg6Q
         Ur+iwXV2EnLl4daPvmsRLkD64G/qP0II7UX7EwwNBOV5zcwEhKxrRsYHRg4FxaTiZNDH
         rOBUOk9yVSoXYcqSklkyDf5aTB14iYxsZvLz7qmkqI478nBi+Mx9+aUAeOuAaXPNwB1L
         RDcWpIotREa04xviaPO5/0AJKENpkeYGESffgMNcxOyspnwLGj0+nxGkorXSZbc32mFZ
         R1U0rKrd7I0Jyqgg8+iPsoZokxoniKhdZTn0SrfTnGl/wrcKW5JADRN5d33zmip5s9R/
         Dn8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gA35ua4Yb5kX/gYxKzQIpMpiocNgTXC/pKSapK7rZJo=;
        b=SOHvU8loX4sIijftSOjQ7hvXvmnaqbOKVrxBDVtPNB8u9OfcJ+SlHH+5O8BHLwGRFM
         B5+IfdTczinoY7DWLOCO44da8Gm3M2FK/xLtkX9649jSN55MeTLWIYPX5sbrT1UNk8MK
         ZeZNMBDLzmtirjUZXIXIf9XtMTHB/0AJuaqZrPJYinvgcWqmKx5ZRl5y5grkt6gxQQ59
         7xGpwuxq4cxkkAahtPilCNKT/D1i73aP3THi8SGpJi0q72682eHC4Pu+6ElzEouVQdL5
         IuYgk/K1dRiCdI7JEpHZoyHVTiS/suXXta///n75drAWqBLD070m0cjMsDq5a5CEkbgF
         KapQ==
X-Gm-Message-State: AOAM531vKAYH+AR2IF7prtuSXZGoowmYgYwJKf3oi1PYeU5NrBD0W+Fa
        fOxMgrMvXv+sWOSbIwPGN6mJYA==
X-Google-Smtp-Source: ABdhPJxde2aKuylrPArbfyabrQXXX1VMQFK2766pT0EBSLYkk5PaAgVgCylkPI5TKE5otNy07rnPqA==
X-Received: by 2002:adf:9f54:: with SMTP id f20mr13793513wrg.362.1615551783189;
        Fri, 12 Mar 2021 04:23:03 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id 3sm8804329wry.72.2021.03.12.04.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:23:02 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v3 5/5] ASoC: codecs: wsa881x: add static port map support
Date:   Fri, 12 Mar 2021 12:22:55 +0000
Message-Id: <20210312122255.3143-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
References: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
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

