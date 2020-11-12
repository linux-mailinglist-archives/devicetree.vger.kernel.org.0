Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB9B32B05D8
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 14:03:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728316AbgKLND1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 08:03:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728299AbgKLNDX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 08:03:23 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA07C0613D1
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 05:03:22 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id s8so5888756wrw.10
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 05:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4JGD+U5wzrPrHuAbcShPgq/7SS7eVhaJGMY13GukQwc=;
        b=L+UnK8b6jHlxkKjKLGZ2KBHb9UiCE2bYESXAd9FIJCk+MSUtGNGNYYhyKKC6RRifPQ
         PgL5pNXsAPyMWO+HtY1Gz8tYhOV7PCazvQjyezuUbsHfk2M9AaPxMotgauVMZKLo3hiQ
         M9zO8+yMql5b+8b9cbMFbwaUXk+eUu0753EmMvk7l1HFsWM70OEcQW79vBJFUlgt+5VM
         KTrz/bb1p5Gfk+J3GZ0/zY9ErMbza+/lZXbPnTQ6Y0oHv+Z0tDMeL6+cldPYswOsQVrL
         O6uN/kZ4gFKC9yygejnVCUVwrluiILl9XVtVOe0uMkP8IGro9CIcUykOaW84nVGNiLuD
         7kaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4JGD+U5wzrPrHuAbcShPgq/7SS7eVhaJGMY13GukQwc=;
        b=deA8yEPwtgZphgm2i7Cyqrk55BPjSwlC8Mvhqaguo3PvOQ8hGa1u76mC7rfsK4f3M6
         xpM1gC48zHQTeqXdktctF+Exjf+RqLQxIQhA+uCkaSiNvrcNhL9NsfxdCHJc5PvGl2kv
         gG+6ebfi3KvwIv0eI33Ul0vY1ZFXUKegtjiENdp5gXyd9cSniZ0Un36Oa4y6OrMLMhyz
         oTyjLCoKPMEV9PL2NTUiatXknK2SPH5vo7q5YYZhxwPZgV8gKc/wtjKV8yqxn61uiG6z
         bqQa3XCY6JZPqHfkn1ukaAtl3HX1RGz/EV8vztRNjz63vzZNrTgdpyM1CI60EQnEc8wn
         VpOA==
X-Gm-Message-State: AOAM530zphuNcDW3CbNMUubojg0g5S1ZlxZkKat8BcJ1LkuXAvkHpiyy
        eqeAVcKPdb3LnYZ77Ga400v/jQ==
X-Google-Smtp-Source: ABdhPJxo3CkbVLQBJt0LU+udw0kuJH0eA8lhV+b7zpBZqVmuSk9IILiYnXCbLaDmkxe9gZqnDT5qGA==
X-Received: by 2002:adf:9d84:: with SMTP id p4mr24594639wre.370.1605186201700;
        Thu, 12 Nov 2020 05:03:21 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id m22sm6877508wrb.97.2020.11.12.05.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 05:03:20 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org, lorenzo.pieralisi@arm.com,
        robh+dt@kernel.org
Cc:     guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, bhelgaas@google.com,
        Jonathan.Cameron@huawei.com, eric.auger@redhat.com,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pci@vger.kernel.org, baolu.lu@linux.intel.com,
        zhangfei.gao@linaro.org, shameerali.kolothum.thodi@huawei.com,
        vivek.gautam@arm.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v8 5/9] ACPI/IORT: Enable stall support for platform devices
Date:   Thu, 12 Nov 2020 13:55:17 +0100
Message-Id: <20201112125519.3987595-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201112125519.3987595-1-jean-philippe@linaro.org>
References: <20201112125519.3987595-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Copy the "Stall supported" bit, that tells whether a platform device
supports stall, into the fwspec struct.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 70df1ecba7fe..3e39b2212388 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -968,6 +968,7 @@ static void iort_named_component_init(struct device *dev,
 	nc = (struct acpi_iort_named_component *)node->node_data;
 	fwspec->num_pasid_bits = FIELD_GET(ACPI_IORT_NC_PASID_BITS,
 					   nc->node_flags);
+	fwspec->can_stall = (nc->node_flags & ACPI_IORT_NC_STALL_SUPPORTED);
 }
 
 static int iort_nc_iommu_map(struct device *dev, struct acpi_iort_node *node)
-- 
2.29.1

