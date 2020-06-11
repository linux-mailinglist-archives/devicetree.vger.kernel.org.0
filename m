Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A0541F6DC2
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2020 21:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728330AbgFKTK0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jun 2020 15:10:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728327AbgFKTKY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jun 2020 15:10:24 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4193DC08C5C1
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2020 12:10:24 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id l10so7286028wrr.10
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2020 12:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q5/60NnfrGkD5RjdlG6VPL2HpQFqn6ElILYYQOhG/ik=;
        b=OI+c3pe8tCATJidOZYVj/M5eMyGCjEW9o7DXpeuxoO+LfLOVHBk0iO64NHk88wGv80
         vJSEDPENCVw4XPRiuvn12LgZsdWcQPBzFhQYmRqdEMF7bHpnVoC0RYONexOBolU15VRZ
         BGuF35kpnxQ5s98wed/sTuvzBm8LGghhjZKKZza8zSU7EcgvY8zeCFy3vv1zoigYlXr7
         qr6DI9I6s47/gaG8RCtffKb67FdIvoAMZJ4OuPLw8oTE5Wqjz8LGGxESYiRxzc9Rp7LE
         JJFKDmE6/gcurTECCWMDtfQ7xbYAvwvQFP+FOzVuzRsF/6KD+wsu1+EJWQGxp+JNLjNj
         HiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q5/60NnfrGkD5RjdlG6VPL2HpQFqn6ElILYYQOhG/ik=;
        b=RewJuwzEaHML6Ig+AoEILdGmuPyZquPpxS5TjvLikohkj/vO74e3CuBN8BCkIx67CS
         Wq/XmbnqlgXVt4nVIpajGOsxoNtG2zrpBnx8XeG5/xTlu2eJmKi6gkpvsuCiTdnDI+ZX
         pNxC3vl07zwY4appL3uboPmqoPaMrMkPNtdbnEukTF/7FiDCjbZm/OdaHTrGsCV76owW
         w0Xn9IEeNHKv564OygnHXvzisIl0o8jz9fhtRt02Mru+krMYomCkE4u++VsLWlHuKWfZ
         sw1Jwtro+dwsFm0VovYn1gQRKXAyR4FCD0mOOUuOY4w9A4ozK5cnPuhSr7oTOpUss1s9
         10IA==
X-Gm-Message-State: AOAM5308YoOB6vZ/L3t/jUtzyh88LySy/2GXG5j1dXNg5K+yS9aQ2wO4
        NBRM8Ynpea1CkNj5CS+IXICSew==
X-Google-Smtp-Source: ABdhPJxPdpRqs3Z3R9eSmhsxRtSWyqZRQv0jObAHKwrdvlGfgetkDOMRDUOY18wnspGYODTw1wFMOw==
X-Received: by 2002:adf:e381:: with SMTP id e1mr10471095wrm.320.1591902623017;
        Thu, 11 Jun 2020 12:10:23 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.101])
        by smtp.gmail.com with ESMTPSA id 128sm5658097wme.39.2020.06.11.12.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 12:10:22 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     andy.shevchenko@gmail.com, michael@walle.cc, robh+dt@kernel.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        linus.walleij@linaro.org, linux@roeck-us.net,
        andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
        gregkh@linuxfoundation.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v2 3/3] mfd: core: Add OF_MFD_CELL_REG() helper
Date:   Thu, 11 Jun 2020 20:10:02 +0100
Message-Id: <20200611191002.2256570-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200611191002.2256570-1-lee.jones@linaro.org>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extend current list of helpers to provide support for parent drivers
wishing to match specific child devices to particular OF nodes.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 include/linux/mfd/core.h | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index ae1c6f90388ba..7ce1de99cd8b8 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -14,7 +14,7 @@
 
 #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
 
-#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _match)\
+#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, _use_of_reg,_match) \
 	{								\
 		.name = (_name),					\
 		.resources = (_res),					\
@@ -22,24 +22,29 @@
 		.platform_data = (_pdata),				\
 		.pdata_size = (_pdsize),				\
 		.of_compatible = (_compat),				\
+		.of_reg = (_of_reg),					\
+		.use_of_reg = (_use_of_reg),				\
 		.acpi_match = (_match),					\
 		.id = (_id),						\
 	}
 
+#define OF_MFD_CELL_REG(_name, _res, _pdata, _pdsize,_id, _compat, _of_reg) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, true, NULL)
+
 #define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat) \
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, 0, false, NULL)
 
 #define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match) \
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, false, _match)
 
 #define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id) \
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, false, NULL)
 
 #define MFD_CELL_RES(_name, _res) \
-	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)
+	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, 0, false, NULL)
 
 #define MFD_CELL_NAME(_name) \
-	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)
+	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, 0, false, NULL)
 
 struct irq_domain;
 struct property_entry;
-- 
2.25.1

