Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8FEAA91DA9
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 09:17:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726930AbfHSHRL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 03:17:11 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:35083 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbfHSHRL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 03:17:11 -0400
Received: by mail-pg1-f193.google.com with SMTP id n4so672645pgv.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 00:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tR696xAAXNPhHQHWLfe5SFLSbtEnSL98XLrp0/RNG7k=;
        b=XUWbUOUNVffLbuYbKroAviugg0hNCu6c0LsB1p5k0zj3Qdmtftgjzhs502Kv30r2r5
         yKf5sQ0E0iFOPrxkWs0+CwLLLDrZaV3Y1j53slHNVQMXFTeHNDxlwhv1OSEt7gAXqvmi
         wtSm2YchTL7KT4XHT8HMfe9UN3zBGQL0sJ+EY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tR696xAAXNPhHQHWLfe5SFLSbtEnSL98XLrp0/RNG7k=;
        b=GZm3KSxgfitpYGuNU6SQhO0zKqDYXQSMedshfkYsThLSUZxpKz+kNaqf7u05eVR0Og
         d7EWgupdU5FKK8rWsDcdekbeikvNqjfWZnQLY2Ez8WgGjM0ljTQPJAjBZ2FlqVPb0kFE
         GWE9zPPqIEKPbyX5bPfEYRE9Jx6uZIhRsmQZWT56DbqdDmxKObrBVhtk8wRCNqJ47xQs
         ZHX5F0932wpE7yrBmd/WQfzEFs9jUGJxFtJBkSQC259HbpxZu3Pl9paheP+k4+i9xxIU
         FiIr0X41YJLUKnc6iGBP0Q+sToDTDQ3taMLGAN578g1hSd8GXGlT7SkkLXusRpbbkuch
         v3KA==
X-Gm-Message-State: APjAAAVdP0nBwLBFGyfpWN7CmKTFL+ZE4jiMCgqQllJWC6EX0V9nGUZ9
        qIzX5P2tc+rX+j/ps+J8z3RSKA==
X-Google-Smtp-Source: APXvYqxbjy8xxbqjY1yDYLo3dzifZ+5rEbkil94KZlbs277/axZ6oTlZhe0X2TtcA6D0EKfdo7cQ0g==
X-Received: by 2002:aa7:83c7:: with SMTP id j7mr23330584pfn.59.1566199030844;
        Mon, 19 Aug 2019 00:17:10 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id y9sm14691341pfn.152.2019.08.19.00.17.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Aug 2019 00:17:10 -0700 (PDT)
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
Subject: [PATCH v8 3/3] arm64: kexec_file: add rng-seed support
Date:   Mon, 19 Aug 2019 15:16:06 +0800
Message-Id: <20190819071602.139014-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819071602.139014-1-hsinyi@chromium.org>
References: <20190819071602.139014-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding "rng-seed" to dtb. It's fine to add this property if original
fdt doesn't contain it. Since original seed will be wiped after
read, so use a default size 128 bytes here.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
No change after v7.
---
 arch/arm64/kernel/machine_kexec_file.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index ba78ee7ca990..7b08bf9499b6 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -27,6 +27,8 @@
 #define FDT_PROP_INITRD_END	"linux,initrd-end"
 #define FDT_PROP_BOOTARGS	"bootargs"
 #define FDT_PROP_KASLR_SEED	"kaslr-seed"
+#define FDT_PROP_RNG_SEED	"rng-seed"
+#define RNG_SEED_SIZE		128
 
 const struct kexec_file_ops * const kexec_file_loaders[] = {
 	&kexec_image_ops,
@@ -102,6 +104,19 @@ static int setup_dtb(struct kimage *image,
 				FDT_PROP_KASLR_SEED);
 	}
 
+	/* add rng-seed */
+	if (rng_is_initialized()) {
+		u8 rng_seed[RNG_SEED_SIZE];
+		get_random_bytes(rng_seed, RNG_SEED_SIZE);
+		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
+				RNG_SEED_SIZE);
+		if (ret)
+			goto out;
+	} else {
+		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
+				FDT_PROP_RNG_SEED);
+	}
+
 out:
 	if (ret)
 		return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;
@@ -110,7 +125,8 @@ static int setup_dtb(struct kimage *image,
 }
 
 /*
- * More space needed so that we can add initrd, bootargs and kaslr-seed.
+ * More space needed so that we can add initrd, bootargs, kaslr-seed, and
+ * rng-seed.
  */
 #define DTB_EXTRA_SPACE 0x1000
 
-- 
2.20.1

