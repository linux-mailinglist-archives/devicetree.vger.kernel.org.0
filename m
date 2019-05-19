Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A618D2277D
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2019 19:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725935AbfESRJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 May 2019 13:09:07 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:41907 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725838AbfESRJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 May 2019 13:09:07 -0400
Received: by mail-pf1-f196.google.com with SMTP id q17so6031192pfq.8
        for <devicetree@vger.kernel.org>; Sun, 19 May 2019 10:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gCFKWEfomzC/p8Cp2zu9+tMCVjDMCf+wEVZ+N8bS+5w=;
        b=T/7IReFvKjKaF14U1oGtHscyU/22SyS4d7KmRC5r07CtvxiAbogbfeuIroE/8H2wz0
         nLTWIIZriLKgXnWDXlyBKjqUAsl9SsAMjTTs4IMZaZBFvDrupg39ZL7WTW3wXN2yB8aj
         f8BzAcUBvMPTNeGH08JCB9Xs2xfvt2oFwNK1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gCFKWEfomzC/p8Cp2zu9+tMCVjDMCf+wEVZ+N8bS+5w=;
        b=pRn27mV2jomx5p6IblTOUjOBBmDj6wjpg28vwZwxr9V5egMOAc3yq15rtoQgRbHvaf
         AKTIJ2ufU38CxKqqQwpsX7CNv9J0RGKDNwNHyYEwo5StuuUKKK9OId2Ph2ByIjoVAHG3
         AUKg61ghCUcfsnheOdk0LaOL6hr/cIk6o/xgi1UQK6kyRH2EwbxhujHY5Xw2idXTAMEa
         XepYdoWd4OzDhOiTVkKw3RPV57Ez0D9eSBrLxPQAakNVzosB/1ePmGKl/UaU5Uv6c8HP
         JY0ZA+KlQWHi4OQO6qBtTGqdWjBj4s53bFMmLrYJEsYUxz+frpRHoSYpj5X0REKjCcfh
         agmw==
X-Gm-Message-State: APjAAAV8m4hB3w9jpN66c4JXvH/AC2ZO68VV98bJmrtmbqxRYyaXEKXd
        QnQ8JPsnfa5dxOC9zgZOfrnC6YjJr1jU7w==
X-Google-Smtp-Source: APXvYqy+Gmvo5+tw39P1k0XyadavsTQNx3uwPq73xdTjt//OfTcVKyZMNiRhgh9F9ySQ8HBIePPR/g==
X-Received: by 2002:a63:a08:: with SMTP id 8mr69721219pgk.46.1558281910923;
        Sun, 19 May 2019 09:05:10 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id b23sm17547007pfi.6.2019.05.19.09.05.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 May 2019 09:05:10 -0700 (PDT)
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
Subject: [PATCH v4 2/3] fdt: add support for rng-seed
Date:   Mon, 20 May 2019 00:04:45 +0800
Message-Id: <20190519160446.320-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
References: <20190519160446.320-1-hsinyi@chromium.org>
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
---
change log v2->v4:
* v3 abandoned
* fix doc error
---
 Documentation/devicetree/bindings/chosen.txt | 14 ++++++++++++++
 drivers/of/fdt.c                             | 10 ++++++++++
 2 files changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
index 45e79172a646..678e81bc4383 100644
--- a/Documentation/devicetree/bindings/chosen.txt
+++ b/Documentation/devicetree/bindings/chosen.txt
@@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
 the Linux EFI stub (which will populate the property itself, using
 EFI_RNG_PROTOCOL).
 
+rng-seed
+-----------
+
+This property serves as an entropy to add device randomness. It is parsed
+as a byte array, e.g.
+
+/ {
+	chosen {
+		rng-seed = <0x31 0x95 0x1b 0x3c 0xc9 0xfa 0xb3 ...>;
+	};
+};
+
+This random value should be provided by bootloader.
+
 stdout-path
 -----------
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index de893c9616a1..7f3d72921b23 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1079,6 +1080,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1113,6 +1115,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+	if (rng_seed && l > 0) {
+		add_device_randomness(rng_seed, l);
+
+		/* try to clear seed so it won't be found. */
+		fdt_delprop(initial_boot_params, node, "rng-seed");
+	}
+
 	/* break now */
 	return 1;
 }
-- 
2.20.1

