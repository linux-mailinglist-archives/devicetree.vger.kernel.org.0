Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A80432EF466
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 16:04:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727654AbhAHPDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 10:03:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727629AbhAHPDL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 10:03:11 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88B4C0612FE
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 07:02:30 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 190so8073772wmz.0
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 07:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=41h/X6Gu0BzJgRbRM9QQpjc5Z6ZN0hh1kAZAdhlzV9w=;
        b=RlX7b6g0DkwZc+m95BXjRRb5yhQw1tW3eMWzBGsTi1W2i26GfA5VXP3Uj/nkoCrxkW
         9bFOAD2aNI17SaPaol5rAggXSOBjAoeyCwM9HlhYNr+EQ0VD8LNZ7jLs+mYhWLzf15gO
         0CNEYGbTvlsAhQt4CCecggdQZwsXkqOIoofNh0Tx53FkT0Musmi6ssFAwsJwWNRb75lY
         vV1qnqMnyY/YgvqETaA6tuvmbBl9VoisceSiPO4qOsHA1yqHP3bsH6ikQixKlZsF8c+V
         8B+WHadIiAk36NLpVS2bB2R727x+xOgIyC+eaCnMevGTm6s8CWTM7zK0WtOwuhZFGSVi
         QAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=41h/X6Gu0BzJgRbRM9QQpjc5Z6ZN0hh1kAZAdhlzV9w=;
        b=noC+f+e07eLZEpCUj2v3O4hXPEiCKBi4oVx+9q/6cyFNn4JWk6VrpZbhC/48y+9EqS
         8vN66ZTOX1LvEernPRkNunBJeH9yrehc1Jkp5o5q94etAxZDF6RCBk88YERzE/wqiJ1R
         qmlkRA4yw8IXqOX8GjdIiO6X8/OKMHEhbIk0XiFD+OWcTdaaGo8OlBBgsPPmdvwQ9/dC
         AzAwRXJlDWOV3VmO/qh3lZZ8Uzra2mhiTUFmrjVcYjxWeFNSAxgRKldCFMo8E6VfNubw
         eCn+xu2ByhXFamYK4pO3vq0xCbFZcYPLZ+dvRqdmx3oYbS59V5hAxuAnOZRj1F0l2o5B
         P4ew==
X-Gm-Message-State: AOAM532iXA/rJw0DVJERExkBOvOjaGqQ15ewTQHCrvjc23IkjjpR6Klo
        IMSMlAwUGMtwBjvAFWHBC8RLXQ==
X-Google-Smtp-Source: ABdhPJyvZ75UW2eHQKBLoStIviM99D9cMjiVtZ4n9hckO7Tk6QsCg3Df2ywgT7Ej7mDpRaNF07oKYQ==
X-Received: by 2002:a1c:6446:: with SMTP id y67mr3405367wmb.144.1610118149405;
        Fri, 08 Jan 2021 07:02:29 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id s13sm14258464wra.53.2021.01.08.07.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 07:02:28 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v9 01/10] iommu: Remove obsolete comment
Date:   Fri,  8 Jan 2021 15:52:09 +0100
Message-Id: <20210108145217.2254447-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108145217.2254447-1-jean-philippe@linaro.org>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 986d5ecc5699 ("iommu: Move fwspec->iommu_priv to struct
dev_iommu") removed iommu_priv from fwspec. Update the struct doc.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/iommu.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index b3f0e2018c62..26bcde5e7746 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -570,7 +570,6 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * struct iommu_fwspec - per-device IOMMU instance data
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
- * @iommu_priv: IOMMU driver private data for this device
  * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
-- 
2.29.2

