Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3431FEB7
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 07:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726571AbfEPFJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 01:09:39 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:42079 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726344AbfEPFJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 01:09:38 -0400
Received: by mail-pf1-f196.google.com with SMTP id 13so1173117pfw.9
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 22:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=4KK0MRvh5MgzBUDrn06tdDHg6h6KtmoqvmbKK6rVaok=;
        b=lCT8NThGdj/CZVbU3O1mllDstxzU6H3DmbI36AAMAJgIy0GB1HSZ0v8w4a2DRF468Y
         DeG7kvpHvvTSR4SxEiSV0++dI79XONMqjE2Ps+J1QNvB5iib3wmn5e8nSaZG68kMS+AN
         hgu+cq0zdUPUyN5qOAsb9IgVmxIzfqCVSGFPqIljut4NuezCSblMIYw9pQCEfGw2eheQ
         el+zFMF3+U8WkFjYO9FV0AbBXmIzN8/EBHji7txCweH/5/fD/co3YFPsBXUbzC1ZhZLv
         u8hqsC7IBacwHqbh0v8cV2GTcV3OPGr8KDzz28zQTRkLjQcZ0zIvpsnO5dK7PMoh614f
         TcCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=4KK0MRvh5MgzBUDrn06tdDHg6h6KtmoqvmbKK6rVaok=;
        b=XG2epLgllea9iIHX4PGF5qCOwo6EmLm0Z/t8thwMPWXhIPoYodmjK/O/r+0duxeSzp
         DWrKVoM80eujEWE6/oZgtcFsnwVsqNr0TgdqulUU8L9o91KOR7VOfHWDV/zzGOsZZYSB
         8e4JRElJ7E2zVXWLOcHcnzzGRvmQ8LuAFP17xlQrGFpwUU/RVBBgFomujGOYeokaT349
         9/stafL69vPAB+tzX8qM2DjCPRfiZn3R8P5ORlhdSh6aDYOYBOYewGQDU3KYMAlmlOO4
         pVr7ny+4HAGEW7iBsGYGGs76WUVc2+Og586fEyr9Lg8N1ac2IlmTG6pjPEzFWw+uTqJ7
         x+hA==
X-Gm-Message-State: APjAAAW0j5DqMkoQNMHZtjxmUl9yT9a8SjAMvGCx0TdS7DkmCimayRlM
        uwU7ijUIs4srD73V0WgnXgDBkA==
X-Google-Smtp-Source: APXvYqzyrM198VsHH3arYEHVm5+5CB+0pWo6NzSLosqF9cg2Y4ZM98S/rohCuz5MMvRCx0Dqtxav7w==
X-Received: by 2002:a63:234c:: with SMTP id u12mr49894719pgm.264.1557983378110;
        Wed, 15 May 2019 22:09:38 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id u6sm5929531pfa.1.2019.05.15.22.09.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 May 2019 22:09:37 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] i2c-ocore: sifive: add support for i2c device on FU540-c000 SoC.
Date:   Thu, 16 May 2019 10:38:39 +0530
Message-Id: <1557983320-14461-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update device id table for Opencore's I2C master based re-implementation
used in FU540-c000 chipset on HiFive Unleashed platform.

Device ID's include Sifive, soc-specific device for chip specific tweaks
and sifive IP block specific device for generic programming model.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index 4e1a077..aee1d86 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -85,6 +85,7 @@ struct ocores_i2c {
 
 #define TYPE_OCORES		0
 #define TYPE_GRLIB		1
+#define TYPE_SIFIVE_REV0	2
 
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
@@ -468,6 +469,14 @@ static u32 ocores_func(struct i2c_adapter *adap)
 		.compatible = "aeroflexgaisler,i2cmst",
 		.data = (void *)TYPE_GRLIB,
 	},
+	{
+		.compatible = "sifive,fu540-c000-i2c",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
+	{
+		.compatible = "sifive,i2c0",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, ocores_i2c_match);
-- 
1.9.1

