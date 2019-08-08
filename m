Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE68D86831
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 19:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732851AbfHHRj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 13:39:27 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39877 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730768AbfHHRj1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 13:39:27 -0400
Received: by mail-pf1-f196.google.com with SMTP id f17so40500075pfn.6
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 10:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DFyYlsPKtD2pIkl+6HQ9NsXCJu2oBYedJ0F8UrzQk24=;
        b=Yh9EIr82yon5IKwUIC8/aoF3FklHeBHZH9PfoCglI1X9pa0gurA07RhtfLxokIKnIz
         81xyPWSnwnZLtp5kryW23U9msxajMEa5GnhdM44fHoSwcv0gQJEdVcOJVV7F2TrigyY7
         Yl3Mm05/ax1pcApFg4xYKIsnxB9O+sRcfZRQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DFyYlsPKtD2pIkl+6HQ9NsXCJu2oBYedJ0F8UrzQk24=;
        b=HWDNdSPgZcMEfGsSVl+61eU+/farDbsD1itVcEdVeeCRjm8Zu3q7BBlOWnEjECiNx/
         HB0Cbr9/acuFaUJk4GpGiNhL1xG6q9Gu+GirXtCUZBf+FD5HftnK51Zjfnxp9wGhH1TZ
         6pSCBfjHghDkPowRjkOiJs/YaT8qj2GUzWuJI3Q0UGTumwmimgWLwyYA8WB6gNEYlV8u
         ZCGGAA0mwflQs4lFyYVPW5nKTYP8voRd9w3jQrdL9EvET50edCHqEVXKfckVE2hVTrw2
         EKgdQG4523tGNw9WsDTGcyyIFYLW13Kp9v0c1uitQ/IKAs5e5J0NjUGyBd2Fl/qaR0iJ
         tRIQ==
X-Gm-Message-State: APjAAAXB5A+hJ35gYfsQj0ImpD2DRyyLvs3Jeu48Pe71cQY4WS92SGiJ
        4bkNw1RgFyLtxXwhwoiomn+UCw==
X-Google-Smtp-Source: APXvYqyEVq5aKjaC1auKdVBOl3Eitrh/DUCGqDLTS3ddRuXoM7KR+75fidcuNyU2aVJLs620qmfVoQ==
X-Received: by 2002:a17:90a:d593:: with SMTP id v19mr5186942pju.1.1565285967016;
        Thu, 08 Aug 2019 10:39:27 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id y12sm105824412pfn.187.2019.08.08.10.39.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Aug 2019 10:39:26 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Subject: [PATCH RESEND v7 2/3] fdt: add support for rng-seed
Date:   Fri,  9 Aug 2019 01:38:05 +0800
Message-Id: <20190808173803.1146-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808173803.1146-1-hsinyi@chromium.org>
References: <20190808173803.1146-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness. Bootloader should provide this entropy and the value is
read from /chosen/rng-seed in DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 drivers/of/fdt.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9cdf14b9aaab..640c817cf65b 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1044,6 +1045,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1078,6 +1080,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+	if (rng_seed && l > 0) {
+		add_device_randomness(rng_seed, l);
+
+		/* try to clear seed so it won't be found. */
+		fdt_nop_property(initial_boot_params, node, "rng-seed");
+	}
+
 	/* break now */
 	return 1;
 }
-- 
2.20.1

