Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 056A946A7B
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 22:38:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727896AbfFNUhf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 16:37:35 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:36339 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727573AbfFNUhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 16:37:22 -0400
Received: by mail-pg1-f193.google.com with SMTP id f21so2168836pgi.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 13:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TIy8YQDmiH0lGYDV1tdQuIF92/7kUVyaQcmdzLpFsEA=;
        b=DPpqEvR2xRVIvswlW2ndF1y9QKk/EJuzPD08Z5oPj4JN719FIPwvtEToWha++Fa1Hp
         Qb8VmkV96OQsM+BbP3DUKWo9ridoF9L2RV+ZNbYHAh3544fZJLPFVqEXyCPQQGyc1ld8
         9f5H6/eK3vxM8AsDZbD/TWhdCBBhZQTLmxhYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TIy8YQDmiH0lGYDV1tdQuIF92/7kUVyaQcmdzLpFsEA=;
        b=jKGpaORcxByzzyhqF/mubbRiEcTaICIu0moBeQiYw044aNSSJaZiDFqfIOVQ0BVvqO
         VHyKUBUrBNVGTTvHTa78FSWuH1i6WKFhUQclF8BSeFtPkC06EHTXg2xKDiw9rY28hdEz
         a5Boa83BhA2uLr+mnldkIhutqz84tH8jq7BfFjd/RD4Oa8tHGU/HHm3Psxnz/QdKbLwX
         NuEIUkGGAu716XN5v84y8EXwciFrx9JhMHSBmCbvOsJxD4rV2xWAkxHV5+O/96dx7F5y
         x2LEa5lZOGCE0mFgVNQDRBkaw6o+dNECQt5xEsGfybPWUvjiUiIeQenk2BcfV3j0ff15
         Y7Hw==
X-Gm-Message-State: APjAAAUlZAJ2/ed3DzF0ZgDB9dFgAOCfGp2aB9PMQ3ipjKUb+DOEzNt0
        IrsNG1I5Dc0Sst9vB/gw+Uq+lg==
X-Google-Smtp-Source: APXvYqxmpfHSDjrUYD6uZNYIRRn0cr0CR+UNJC8dHrCxflAPdm/P9a9hwNIpx+rOpjwL7hA2RLbd6A==
X-Received: by 2002:a63:81c6:: with SMTP id t189mr36883280pgd.293.1560544641989;
        Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.21
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
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
Subject: [PATCH v2 3/5] memremap: Add support for read-only memory mappings
Date:   Fri, 14 Jun 2019 13:37:15 -0700
Message-Id: <20190614203717.75479-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sometimes we have memories that are supposed to be read-only, but when
we map these regions the best we can do is map them as write-back with
MEMREMAP_WB. Introduce a read-only memory mapping (MEMREMAP_RO) that
allows us to map reserved memory regions as read-only. This way, we're
less likely to see these special memory regions become corrupted by
stray writes to them.

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
 include/linux/io.h |  1 +
 kernel/iomem.c     | 15 +++++++++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/include/linux/io.h b/include/linux/io.h
index 32e30e8fb9db..16c7f4498869 100644
--- a/include/linux/io.h
+++ b/include/linux/io.h
@@ -159,6 +159,7 @@ enum {
 	MEMREMAP_WC = 1 << 2,
 	MEMREMAP_ENC = 1 << 3,
 	MEMREMAP_DEC = 1 << 4,
+	MEMREMAP_RO = 1 << 5,
 };
 
 void *memremap(resource_size_t offset, size_t size, unsigned long flags);
diff --git a/kernel/iomem.c b/kernel/iomem.c
index 93c264444510..10d5ef0ff09e 100644
--- a/kernel/iomem.c
+++ b/kernel/iomem.c
@@ -19,6 +19,13 @@ static void *arch_memremap_wb(resource_size_t offset, unsigned long size)
 }
 #endif
 
+#ifndef arch_memremap_ro
+static void *arch_memremap_ro(resource_size_t offset, unsigned long size)
+{
+	return NULL;
+}
+#endif
+
 #ifndef arch_memremap_can_ram_remap
 static bool arch_memremap_can_ram_remap(resource_size_t offset, size_t size,
 					unsigned long flags)
@@ -84,7 +91,10 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
 	}
 
 	/* Try all mapping types requested until one returns non-NULL */
-	if (flags & MEMREMAP_WB) {
+	if ((flags & MEMREMAP_RO) && is_ram != REGION_INTERSECTS)
+		addr = arch_memremap_ro(offset, size);
+
+	if (!addr && (flags & MEMREMAP_WB)) {
 		/*
 		 * MEMREMAP_WB is special in that it can be satisfied
 		 * from the direct map.  Some archs depend on the
@@ -103,7 +113,8 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
 	 * address mapping.  Enforce that this mapping is not aliasing
 	 * System RAM.
 	 */
-	if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
+	if (!addr && is_ram == REGION_INTERSECTS &&
+	    (flags != MEMREMAP_WB || flags != MEMREMAP_RO)) {
 		WARN_ONCE(1, "memremap attempted on ram %pa size: %#lx\n",
 				&offset, (unsigned long) size);
 		return NULL;
-- 
Sent by a computer through tubes

