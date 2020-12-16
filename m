Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B75E2DC4B9
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 17:55:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726861AbgLPQyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 11:54:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726671AbgLPQyb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 11:54:31 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 222D7C0611CE
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 08:52:59 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id s26so15381559lfc.8
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 08:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=28lI2b6Cw8VS30svIKsqHM0fnQn289aEjJhNX3FUEiA=;
        b=MbeyQ1+McnsL8tKJfAnCdUlxXc1s6FIRwAVAjQJ1OQUWS8JY4p5L0/H43Q3KHFrd1V
         9v+sj/BsA7S78YInD+VMK6m1zzD81y9N7lVMVeUex/yfOTUwadtpVJRnyyqmDUBCi024
         wkkpfdIHqme+THgUVQTfqWhZw+ylvLpkFMnmHqA4kt1P5UrG2OMjjIXyQiY6DZ/Y4/Ro
         iuNXSLlNCfBSkliph7jmssEwm9PP9TOJeBwk5/+MuemYJfzcztbFIRFp5kZd3X26VsrL
         mi3jW2hy8P0zR9iWRJ4BQQPLUSwcCXkmp08uqsWcKKi2fdef28Hqr3oR1de4iknRwoYH
         dgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28lI2b6Cw8VS30svIKsqHM0fnQn289aEjJhNX3FUEiA=;
        b=UxoBpckhIXCS1z1sQVgs1xVzZT0GyfoZAT5UdjAMp+VGAAygLw72P/RYbDotlU7X+W
         q20hWJv1Eq5xoStM8aJ1H3YHNI/GdVoWfb14jgsSkG8ESJ/MT3OZ88ZN/87+lxPdfmB6
         +LPoGEYHOsBeB1J47+RReDQcIGb65z5rbbv5Nzdb3Mun7o8s46EwqT7YKVFjfcWtJsKX
         gMmvI/5et9bgyLb9LWoB6MPqqXuW9dAe1y/S9+ARjlUd0hUZwZDziL6MGuRIIowU27no
         mrwssIhyHPYcAEfz/cTc/F6WIt3RFlZUP/qJWR4lGYmyxsXeQG2rbRvI9ZzotDVin592
         /qyQ==
X-Gm-Message-State: AOAM533fQU8Px+EOW0BgiS54UvywGFbmig8Ag7E5vX7KVJVulDzMiqb3
        PbPKLh+3qFdsYZO9wmyWBkDqTQ==
X-Google-Smtp-Source: ABdhPJymmVe7MouDYfDxjJIeOYsNOeHSagHHiM8xUYyHuQYalq2yZ0kb8l/MMWZB2LToutLcEOTdJA==
X-Received: by 2002:a05:651c:1342:: with SMTP id j2mr10324590ljb.91.1608137576524;
        Wed, 16 Dec 2020 08:52:56 -0800 (PST)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id t3sm281645lfe.263.2020.12.16.08.52.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Dec 2020 08:52:55 -0800 (PST)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org, s-anna@ti.com,
        ssantosh@kernel.org
Cc:     grzegorz.jaszczyk@linaro.org, linux-remoteproc@vger.kernel.org,
        lee.jones@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, praneeth@ti.com,
        rogerq@ti.com, t-kristo@ti.com
Subject: [PATCH v2 3/5] remoteproc: pru: Deny rproc sysfs ops for PRU client driven boots
Date:   Wed, 16 Dec 2020 17:52:37 +0100
Message-Id: <20201216165239.2744-4-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201216165239.2744-1-grzegorz.jaszczyk@linaro.org>
References: <20201216165239.2744-1-grzegorz.jaszczyk@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Suman Anna <s-anna@ti.com>

The PRU remoteproc driver is not configured for 'auto-boot' by default,
and allows to be booted either by in-kernel PRU client drivers or by
userspace using the generic remoteproc sysfs interfaces. The sysfs
interfaces should not be permitted to change the remoteproc firmwares
or states when a PRU is being managed by an in-kernel client driver.
Use the newly introduced remoteproc generic 'deny_sysfs_ops' flag to
provide these restrictions by setting and clearing it appropriately
during the PRU acquire and release steps.

Signed-off-by: Suman Anna <s-anna@ti.com>
Co-developed-by: Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
Signed-off-by: Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
---
 drivers/remoteproc/pru_rproc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/remoteproc/pru_rproc.c b/drivers/remoteproc/pru_rproc.c
index 568286040bc4..3ffd49f77cfc 100644
--- a/drivers/remoteproc/pru_rproc.c
+++ b/drivers/remoteproc/pru_rproc.c
@@ -228,6 +228,7 @@ struct rproc *pru_rproc_get(struct device_node *np, int index,
 	}
 
 	pru->client_np = np;
+	rproc->deny_sysfs_ops = true;
 
 	mutex_unlock(&pru->lock);
 
@@ -258,6 +259,7 @@ void pru_rproc_put(struct rproc *rproc)
 
 	mutex_lock(&pru->lock);
 	pru->client_np = NULL;
+	rproc->deny_sysfs_ops = false;
 	mutex_unlock(&pru->lock);
 
 	put_device(&rproc->dev);
-- 
2.29.0

