Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D0D655DD3D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 06:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727203AbfGCECx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 00:02:53 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:35248 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbfGCECx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 00:02:53 -0400
Received: by mail-pl1-f196.google.com with SMTP id w24so459029plp.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 21:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D0DdOpMQGVeAdF8kK+Kt9fgmekxnUEujrSDi9AB3YmM=;
        b=Q3x9sXJvjIsCzqPkwq91GFznkehlCZyQIblUxwqegBXIDgIUasLe9okJjER1twbMfm
         nWjqNor3p1Clensei6236mF0jhvK+Sz6FDfN6WVrsJSiR0TJYu/hCDDyIKsI81w9QiZw
         hBV7oc1Qdq03EnAcOb1WkjushbCfRrm8Rx+WU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D0DdOpMQGVeAdF8kK+Kt9fgmekxnUEujrSDi9AB3YmM=;
        b=QJK2l99JHynr5Hu7b0IRX0S2X1dGC95VVhbwvauA5J9OoaOXOmZx2GApCO86oSZbjR
         woLawrB/o9SvycVRGGNTvAiEa6CWHyhHQv6W5qS9V6WHaZix5lauGP9Lob3GI7soI09Q
         QLsf11slvvUuaTFd/YM4MUxM3+PSF5ASX36FG7HpiUfNAR4A8u1adRuYsoZ9CD8XMTiT
         0KjMhXdvw7+ur+Rp3v5nVLTUHYoCeeygIJ9O0IJBfJ5VpD72JVCWS2zIzTWSQs1zMnsv
         IMKAjSjg/8xIb0qgSQ4mC64mssJcCIqw8oZ3d+kI8+NCM6ybczG4xlklBxhN5F9EVx5Z
         m0Fw==
X-Gm-Message-State: APjAAAVsme0MBqT4YHPUwcNuN+JDzhBSL8YtE68EBp15VuulzM1gZoRv
        HQu8O2OfY4VbuoTsDJx/gU5e1w==
X-Google-Smtp-Source: APXvYqznyDfHYKikQKIqHH4oCiI9Z/+57ZuJwCnQCjDdBHt1Eb4/rlbJGAPXvGWmfJKbFYSPdnrnww==
X-Received: by 2002:a17:902:a414:: with SMTP id p20mr37549962plq.187.1562126572996;
        Tue, 02 Jul 2019 21:02:52 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id w16sm608327pfj.85.2019.07.02.21.02.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Jul 2019 21:02:52 -0700 (PDT)
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
Subject: [PATCH v7 2/3] fdt: add support for rng-seed
Date:   Wed,  3 Jul 2019 12:01:37 +0800
Message-Id: <20190703040135.169843-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703040135.169843-1-hsinyi@chromium.org>
References: <20190703040135.169843-1-hsinyi@chromium.org>
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
No change since v6.
---
 drivers/of/fdt.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index cd17dc62a719..7be50e287ba6 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1043,6 +1044,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1077,6 +1079,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
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

