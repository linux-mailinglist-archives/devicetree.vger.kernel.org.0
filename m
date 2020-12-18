Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 704B62DE839
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 18:36:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726570AbgLRRei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 12:34:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732901AbgLRReh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 12:34:37 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 448E3C0610F2
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:49 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id w6so1961434pfu.1
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r4WpCps/dmzg/nEPpmlNW78KzWKD4Zyq8EXXFVytS5s=;
        b=qmmI9vTp0A2LE/Vso7i2ivHcoYnFAy8QizlK1mNtLII2LdbDpKQg5kY27MrV9Ls3/Y
         JyNb4oQdv0aiQJnfE7G98FhNqpRsASuQI4IUzozKulAKGc6DiVsC3QuqAAW5MXtF10AJ
         WCvAlTsla+IZKPRiE6zc4BtjDc+6oag1IFC/7zvuQixp0Mbed8knKsbd8iD0Lio97L1E
         b5jyOCsr9zHZakNUZPDatWU+lKkkv8Vtojlt04oZy+yT40wy9jLIV73vRf8G9GiNwIwJ
         JZcIZjeywEqZ3Rchhzf43yBx8HFDCqgL61qhetW/1KdZGja12BnDKd5GQuqzXo23D5/g
         rAlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r4WpCps/dmzg/nEPpmlNW78KzWKD4Zyq8EXXFVytS5s=;
        b=RMkOjQ+7gRiCqB/HJUHlDMYrYlf4WCwy+lPzXV7QmDCyDj7JFHfLYg6+18izsiKjnL
         M1Io0kvFz7SYSfqyJF4nly2Ez3Z2XEe2OD9qr+5DZ2jdN4+zmmf8G17zbxNVeIbxU0uV
         Hnm1YXejb+KWwNnJpLl35mFs/zno+svllyalUE2Rwpi0ciWWj6niy+hCjE7nnCwpFlic
         JupKsiJx+C7btEhMUYmhPVl9wkzXH00bHn6c8gJ3Usnb95XyyT7rIGIWJi27KAfqn05h
         lB0frYS4Al7U+Nb6HNqYPRkcJEMnUwmARKBYb0sutMNCND1+j5wfg+jSzSBiW/FMtqvQ
         pTGw==
X-Gm-Message-State: AOAM5319jcsBkP6XpeXvSEMT2VP9jcmDV42wzq/Gg6nWur3sOldc+LQQ
        uV4ewkPgQe266Bjy+yM9Mylfig==
X-Google-Smtp-Source: ABdhPJyHj7Z3LuRnodZ5FhdffYdSVbNG32Tpe3WzUH27PGKZDRQ91X4sBrPpU/k9Pk0GJ4SoCfwfiQ==
X-Received: by 2002:a63:5c18:: with SMTP id q24mr5026246pgb.411.1608312768810;
        Fri, 18 Dec 2020 09:32:48 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id l11sm9892957pgt.79.2020.12.18.09.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 09:32:48 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 16/17] remoteproc: Properly deal with detach request
Date:   Fri, 18 Dec 2020 10:32:27 -0700
Message-Id: <20201218173228.2277032-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
References: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch introduces the capability to detach a remote processor
that has been attached to or booted by the remoteproc core.  For
that to happen a rproc::ops::detach() operation need to be
available.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_cdev.c  | 6 ++++++
 drivers/remoteproc/remoteproc_sysfs.c | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/remoteproc/remoteproc_cdev.c b/drivers/remoteproc/remoteproc_cdev.c
index 61541bc7d26c..f7645f289563 100644
--- a/drivers/remoteproc/remoteproc_cdev.c
+++ b/drivers/remoteproc/remoteproc_cdev.c
@@ -43,6 +43,12 @@ static ssize_t rproc_cdev_write(struct file *filp, const char __user *buf, size_
 			return -EINVAL;
 
 		ret = rproc_shutdown(rproc);
+	} else if (!strncmp(cmd, "detach", len)) {
+		if (rproc->state != RPROC_RUNNING &&
+		    rproc->state != RPROC_ATTACHED)
+			return -EINVAL;
+
+		ret = rproc_detach(rproc);
 	} else {
 		dev_err(&rproc->dev, "Unrecognized option\n");
 		ret = -EINVAL;
diff --git a/drivers/remoteproc/remoteproc_sysfs.c b/drivers/remoteproc/remoteproc_sysfs.c
index 298052c9d068..ea7b067fe89a 100644
--- a/drivers/remoteproc/remoteproc_sysfs.c
+++ b/drivers/remoteproc/remoteproc_sysfs.c
@@ -236,6 +236,12 @@ static ssize_t state_store(struct device *dev,
 			return -EINVAL;
 
 		ret = rproc_shutdown(rproc);
+	} else if (sysfs_streq(buf, "detach")) {
+		if (rproc->state != RPROC_RUNNING &&
+		    rproc->state != RPROC_ATTACHED)
+			return -EINVAL;
+
+		ret = rproc_detach(rproc);
 	} else {
 		dev_err(&rproc->dev, "Unrecognised option: %s\n", buf);
 		ret = -EINVAL;
-- 
2.25.1

