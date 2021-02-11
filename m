Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93509319706
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 00:50:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230318AbhBKXtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 18:49:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230239AbhBKXsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 18:48:23 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B7D3C061A27
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:36 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id u15so4206870plf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XjKeOWv1WVtqn5LKvVIAlwdEfxyFn3LtrrnIbVEzukU=;
        b=U+DLUx/QopuyNheHO2UCHO7/xLXrvIszWDmLeqmOguZUdlT/kVvjb214y+6t7it85i
         Kft61Sm9oIRp1b9nGu3cp4sbQCRQgqhe7NEDXunEnU5zfpAMALY4FJn74Jm7+VnMPI14
         unik1HW+1YnQgZa+tVm73J2t64/dqBR5HHqfHSSklELINwsf6HzeOP86RNFK7FDDMuPG
         hLN/s/07DQayqfST124ldLHU09W8o6rDET+ShZA1UjMYtZ2dmt0Y0IsbA60C99/JMril
         A1YfZ6eiDeNKtfOeboCqvg2FaOmJINtg6I9sf4HiorlqESphn1/rCRNQ+K5UJ83iUeNd
         746A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XjKeOWv1WVtqn5LKvVIAlwdEfxyFn3LtrrnIbVEzukU=;
        b=uVTVyWrxG0Sq1k0hYDEL+UDY7mVeWbdGogJhm7pLULl/eTQIv+eHzoIecplba5ezHy
         0Vq8HRle+0klPXo4cNRDy0Pv9zE+HpIlrBkoBzRtpCfp0+Ys4EpHF9oCU4v5psv10RLK
         MGpxKX1uf61jY02JTGTtmserL8ta82n7HwWbfolwNbQ8ObxgPggeKfznQrK+0OUoxkH9
         /v55bQ1jUQfTFRenq0q1IaMGSrAIc6mRQqQY5xrUmnjAv9vRXxJD/ZMRI2cSSDpAMuEv
         RTFtLQhoSUkWhQ7zIN8nddRg2smXpLb2FQRrkOSEUYRHsVR3Ehe8AUD+lUHJwyZjmh7f
         jXGg==
X-Gm-Message-State: AOAM533Kxe1yN+ELf6gvpvbN5VuSSAf22VjA27CTNxTPiAAoR/iJUSpH
        fFiIr3UR7eLg23WurGu1AOHtOg==
X-Google-Smtp-Source: ABdhPJyxwSuft3NeYKIAr/ODkf3Yrc7T4hI9U47tvVVAXAtjZ0VoMEgoQU2dN2VOPKhro1YafrZT1Q==
X-Received: by 2002:a17:90a:1109:: with SMTP id d9mr169277pja.94.1613087195768;
        Thu, 11 Feb 2021 15:46:35 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id iq6sm5932740pjb.6.2021.02.11.15.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 15:46:35 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        arnaud.pouliquen@st.com
Cc:     robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 07/19] remoteproc: Add new get_loaded_rsc_table() to rproc_ops
Date:   Thu, 11 Feb 2021 16:46:15 -0700
Message-Id: <20210211234627.2669674-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
References: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new get_loaded_rsc_table() operation in order to support
scenarios where the remoteproc core has booted a remote processor
and detaches from it.  When re-attaching to the remote processor,
the core needs to know where the resource table has been placed
in memory.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
New for V5:
- Added function rproc_set_loaded_rsc_table() to keep rproc_attach() clean.
- Setting ->cached_table, ->table_ptr and ->table_sz in the remoteproc core
  rather than the platform drivers.
---
 drivers/remoteproc/remoteproc_core.c     | 35 ++++++++++++++++++++++++
 drivers/remoteproc/remoteproc_internal.h | 10 +++++++
 include/linux/remoteproc.h               |  6 +++-
 3 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index e6606d10a4c8..741bc20de437 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1537,6 +1537,35 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
 	return ret;
 }
 
+static int rproc_set_loaded_rsc_table(struct rproc *rproc)
+{
+	struct resource_table *table_ptr;
+	struct device *dev = &rproc->dev;
+	size_t table_sz;
+	int ret;
+
+	table_ptr = rproc_get_loaded_rsc_table(rproc, &table_sz);
+	if (IS_ERR_OR_NULL(table_ptr)) {
+		if (!table_ptr)
+			ret = -EINVAL;
+		else
+			ret = PTR_ERR(table_ptr);
+
+		dev_err(dev, "can't load resource table: %d\n", ret);
+		return ret;
+	}
+
+	/*
+	 * The resource table is already loaded in device memory, no need
+	 * to work with a cached table.
+	 */
+	rproc->cached_table = NULL;
+	rproc->table_ptr = table_ptr;
+	rproc->table_sz = table_sz;
+
+	return 0;
+}
+
 /*
  * Attach to remote processor - similar to rproc_fw_boot() but without
  * the steps that deal with the firmware image.
@@ -1556,6 +1585,12 @@ static int rproc_attach(struct rproc *rproc)
 		return ret;
 	}
 
+	ret = rproc_set_loaded_rsc_table(rproc);
+	if (ret) {
+		dev_err(dev, "can't load resource table: %d\n", ret);
+		goto disable_iommu;
+	}
+
 	/* reset max_notifyid */
 	rproc->max_notifyid = -1;
 
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index c34002888d2c..4f73aac7e60d 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -177,6 +177,16 @@ struct resource_table *rproc_find_loaded_rsc_table(struct rproc *rproc,
 	return NULL;
 }
 
+static inline
+struct resource_table *rproc_get_loaded_rsc_table(struct rproc *rproc,
+						  size_t *size)
+{
+	if (rproc->ops->get_loaded_rsc_table)
+		return rproc->ops->get_loaded_rsc_table(rproc, size);
+
+	return NULL;
+}
+
 static inline
 bool rproc_u64_fit_in_size_t(u64 val)
 {
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 6b0a0ed30a03..51538a7d120d 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -368,7 +368,9 @@ enum rsc_handling_status {
  * RSC_HANDLED if resource was handled, RSC_IGNORED if not handled and a
  * negative value on error
  * @load_rsc_table:	load resource table from firmware image
- * @find_loaded_rsc_table: find the loaded resouce table
+ * @find_loaded_rsc_table: find the loaded resource table from firmware image
+ * @get_loaded_rsc_table: get resource table installed in memory
+ *			  by external entity
  * @load:		load firmware to memory, where the remote processor
  *			expects to find it
  * @sanity_check:	sanity check the fw image
@@ -390,6 +392,8 @@ struct rproc_ops {
 			  int offset, int avail);
 	struct resource_table *(*find_loaded_rsc_table)(
 				struct rproc *rproc, const struct firmware *fw);
+	struct resource_table *(*get_loaded_rsc_table)(
+				struct rproc *rproc, size_t *size);
 	int (*load)(struct rproc *rproc, const struct firmware *fw);
 	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
 	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
-- 
2.25.1

