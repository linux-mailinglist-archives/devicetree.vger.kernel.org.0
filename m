Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A79B7AEF41
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 18:10:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436736AbfIJQJV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 12:09:21 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34900 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436545AbfIJQJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Sep 2019 12:09:07 -0400
Received: by mail-pf1-f193.google.com with SMTP id 205so11805026pfw.2
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 09:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Xc2tEV/bPIimEWuq/mx6XQl4uW5E/9HmwBDqWANEBLQ=;
        b=jB5WWGwXXLkjLvAZdoToyHkhH94srGZ60DUbpccXHx2zP3koKdzgSTxjWRTMyUUxk6
         qE2Mewj7ZGC868dmVOUcDDOjEiEAq0Da31quy/iR3ruDW7+raxlYAd5XZ2gNAoIxSTyP
         NwcNvTP1AJVqo7kxOWlm1+JJQoQj/vEd7L2aY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Xc2tEV/bPIimEWuq/mx6XQl4uW5E/9HmwBDqWANEBLQ=;
        b=hfru4c69sIaQWQG//PgSCGFdSsWThfiCE1G5CZDEap3iFQ+oEr6QKcV9mUFP1t8OBN
         DfNY850+4fVGNhoIVmB8DyJUmzmpvahw0WTKHiMTXxxrPCTwETHrCEvv2yw0bOj1H5AY
         apJMZyd0e8ucjsS89Q9JQY3d9Rl4RhKi1ik61vnf6dhUqZoYper2IJVZ9PkOJ/aAJUQI
         lEgLSv+EMuQhOi9+QZUdl4jXQuky+ZpTHcv38eu9r/j7hfm8jXO2aJNNVtSQOKbhUdAa
         pmJ3/mSPG0CtKBggN+7zWvlBpUYoZjdeHSdGxHy+rp+dknPu4OJvPbeqnX+I2FuGhL6M
         leVg==
X-Gm-Message-State: APjAAAVvek7Pn/Vxwfi7TLq7cJqBvTUyBPDYuhO3Lq86jPBKUC5AOgzq
        era2Eq8gzpOzzxrxI/pF5T6Nag==
X-Google-Smtp-Source: APXvYqwQde81cPZARFYDS6NyOn+6Q4omsTP/UbXDzMG+88WgYZM8ISB0CE0RNxmhB0RjPIeWde62HA==
X-Received: by 2002:a62:cd45:: with SMTP id o66mr37338117pfg.112.1568131746464;
        Tue, 10 Sep 2019 09:09:06 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id em21sm106088pjb.31.2019.09.10.09.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 09:09:06 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Dan Williams <dan.j.williams@intel.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 2/5] soc: qcom: cmd-db: Migrate to devm_memremap_reserved_mem()
Date:   Tue, 10 Sep 2019 09:09:00 -0700
Message-Id: <20190910160903.65694-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
In-Reply-To: <20190910160903.65694-1-swboyd@chromium.org>
References: <20190910160903.65694-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This gets rid of some duplicate code, and also makes the reserved memory
region show up as 'cmd-db' memory in /proc/iomem.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/soc/qcom/cmd-db.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
index f6c3d17b05c7..10a34d26b753 100644
--- a/drivers/soc/qcom/cmd-db.c
+++ b/drivers/soc/qcom/cmd-db.c
@@ -238,18 +238,11 @@ EXPORT_SYMBOL(cmd_db_read_slave_id);
 
 static int cmd_db_dev_probe(struct platform_device *pdev)
 {
-	struct reserved_mem *rmem;
 	int ret = 0;
 
-	rmem = of_reserved_mem_lookup(pdev->dev.of_node);
-	if (!rmem) {
-		dev_err(&pdev->dev, "failed to acquire memory region\n");
-		return -EINVAL;
-	}
-
-	cmd_db_header = memremap(rmem->base, rmem->size, MEMREMAP_WB);
-	if (!cmd_db_header) {
-		ret = -ENOMEM;
+	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
+	if (IS_ERR(cmd_db_header)) {
+		ret = PTR_ERR(cmd_db_header);
 		cmd_db_header = NULL;
 		return ret;
 	}
-- 
Sent by a computer through tubes

