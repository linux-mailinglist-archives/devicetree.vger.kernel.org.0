Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9287C319724
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 00:52:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230444AbhBKXv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 18:51:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbhBKXu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 18:50:58 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2E58C0698D0
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:47:10 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id c11so4713237pfp.10
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5LiQ+DrqaiKdtyOZ0qd9/kmr3OB05MnkkmAeFHXfjc4=;
        b=SSYN+WgnLbG2ER/GI4pl0JRTRnaR3bgiGuZH/zBXNJZUmCGM0XYF8bs9ogCJw+gBVx
         zbB61u8+Cx51rvtIkimeNIFskk843o6zkUeplK2mfz34bO/1ixUfEHUwXl45K8bXMRqZ
         PiI34g01DanreaBh1mVooQr1Lpny4gggo0Ecs3FnrYgdmSL/ItczbJy6TG1e8Vgvxw0T
         rrjx1CYGbvcHO7WdTREskkiCOB8ou3LOZSK2NggZV+LFMfPrQt8GBf31ZTih+xC3h0aZ
         JCBRUV5kUczsw4Ca0W+M8C5KkNx8ZljR2rhjpbx4WQgVNq21v//Hc4GIhAYMAmYfXSEq
         65tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5LiQ+DrqaiKdtyOZ0qd9/kmr3OB05MnkkmAeFHXfjc4=;
        b=CuB5CQUnJnbwCceRdT9Hobc5hBVYOVZoRYOvs9SkFRGu4eiGSJ84bg+vhbbLcI384Q
         mK0Ykzh26u6W3Tjt20hvG++4gxhr0+LjsrPr6AwZSMrkwmgQMsHwCGw2nMvOYOKglnsn
         U1j5YDs8ClRP/w0lgC8A3ib7jWxkdP1aMVZde/+X5mIEmMRYpdVAH7yFyf7KnMlXxiuM
         Q39NjrjpXoA5/iW/6NWoB0y3cipWse8JUuiWy4LyokWEa58hxbCTN3vKCmYLdQsX7HZi
         Q+K2OkSuPXKFtRcTsWfA0x4eqyQwP95ssRX7gKxQJ883UPi/hJwJHT0k2FdRVnfSgJBp
         QGDg==
X-Gm-Message-State: AOAM530xJBd9KrNawWXb0+Dz/iR7xycwdNqz9Vhlks7lDs4Yf/1p7JRw
        rIArexg3+Z2NfMrdBzFDkUaEEA==
X-Google-Smtp-Source: ABdhPJyjXlkWrcQ879uD8sZoWfnGcEA3Ql2AIHLSgPaLjGbXkhdSqoEbHCfLuVeDZSr12jD6n74l4Q==
X-Received: by 2002:a63:343:: with SMTP id 64mr556316pgd.232.1613087207742;
        Thu, 11 Feb 2021 15:46:47 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id iq6sm5932740pjb.6.2021.02.11.15.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 15:46:46 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        arnaud.pouliquen@st.com
Cc:     robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 18/19] remoteproc: Properly deal with detach request
Date:   Thu, 11 Feb 2021 16:46:26 -0700
Message-Id: <20210211234627.2669674-19-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
References: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
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
index 7d281cfe3e03..5a239df5877e 100644
--- a/drivers/remoteproc/remoteproc_sysfs.c
+++ b/drivers/remoteproc/remoteproc_sysfs.c
@@ -207,6 +207,12 @@ static ssize_t state_store(struct device *dev,
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

