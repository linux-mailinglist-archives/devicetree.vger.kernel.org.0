Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1E1221BFA
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 18:48:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727708AbfEQQsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 12:48:06 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:37261 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727477AbfEQQrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 12:47:53 -0400
Received: by mail-pl1-f193.google.com with SMTP id p15so3611310pll.4
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 09:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZrfU3jaOv3gonSUyJKcZeL36dqfb9Wzrb+12t37zMDc=;
        b=hCa6JuKSMM9Bs3WxT0qkjiSBEXmEf/LJdLX0/dKlb6nuQwSG6kwb+JGDS+mg5gfu9X
         Qrs4zMwjPISN3L2TwsmafobEXz1L5rOYHtS6cdmePanxz8zkBJIDmu0PpB2QMuj3sFCm
         CTPLfkxGffpChmq0cY2gI2ZmTf4OFrXugT+0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZrfU3jaOv3gonSUyJKcZeL36dqfb9Wzrb+12t37zMDc=;
        b=CvZZGkIIKhwi6LptILjd9KUjfdzIyH2JPnbgP1irCkn79Qw0xbsYgPpqrnS1zQGdZh
         cIVgB2eoR+omP/sKWLzg/IGNPVtrN84Hc56N7dEnOQudxuXqhuVR/vrO1A9oQQFGgzt0
         vkxn6afDnMK5siaoTnAXAnhF2mj56v4OH37K+1gATFpUh5CSC3xShpW7ycvHEQ4CwmTA
         xyUi69doTNGmg016ASsl4I+JnJTvUOMb435sfrBJ4Ko7ZkAejYFVrrVb0RlCOUJKKz1K
         Z0AokB1YNSAHuyp42QDuVMoK2Nq2pM2lpVSZp7exJxmh/zKc0BAgI8KyJhfG51zw3b7h
         J9EA==
X-Gm-Message-State: APjAAAUQsINGv6VUeljuCKrHU/iSpTrEB9ZYxpU9fal5DhQZtKPmRWb3
        JAAfYSv8rIbdRNWeptfTKqDZlg==
X-Google-Smtp-Source: APXvYqwzfl7bTpdEQKPRd5yF2qk0elfKWYm1umwxZQ/tTfqWpMHqi0G8Q3pmuAWOtsRl2T6ICJd6KA==
X-Received: by 2002:a17:902:e108:: with SMTP id cc8mr46847446plb.145.1558111672832;
        Fri, 17 May 2019 09:47:52 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 May 2019 09:47:52 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dan Williams <dan.j.williams@intel.com>
Subject: [RFC/PATCH 2/5] soc: qcom: cmd-db: Migrate to devm_memremap_reserved_mem()
Date:   Fri, 17 May 2019 09:47:43 -0700
Message-Id: <20190517164746.110786-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
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

