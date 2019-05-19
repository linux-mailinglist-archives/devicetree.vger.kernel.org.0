Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF36E2277F
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2019 19:09:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725838AbfESRJr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 May 2019 13:09:47 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:34787 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725766AbfESRJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 May 2019 13:09:46 -0400
Received: by mail-pf1-f194.google.com with SMTP id n19so6058955pfa.1
        for <devicetree@vger.kernel.org>; Sun, 19 May 2019 10:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w75P38v9z8QHVdxS6R3Brz2jpMYqR+5eP/w8pQb1nPA=;
        b=myLhk+2HXFCrC8o/7PfbYOhTcA2jCqzU4GnMO+/qE7+tzW5/ihlU7K3wVqAd3P3qFp
         xICCMbgzhgD631AA2NeQrSpXLwscwnDUO0aBm5iHLE0zRWfGzEbHCzknrCjQkhuHMmxX
         hGH4+kQwZHWBpzmD1p050soj0o6GVYepZs0Mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w75P38v9z8QHVdxS6R3Brz2jpMYqR+5eP/w8pQb1nPA=;
        b=jzSIuQPCHVR7A17ZeL9irmYcZWWQy9P2YtoR5Rt8AvoU3b7ZI09YSU0DagY6qmupM5
         Wl8q5E5fooOyoSNil/V+RXhpAm0E5W2BoBe3IqFV/wFXYIqbZWzCGz9GRDSVC6LPF5bm
         2wzWy22m+0o3Q9H8Za1KMGLFeI4jAZ8aGcsJiD8tN4ZcXwPGWH5Phofix/Lh9Jr13dGa
         9MzmWJT4p+JQizXjL2mHOjekJGeoUctly4p6T2F4RJ8K0VMcg1DdErQAQ58vepd03uUR
         4QVDan8AcZKBnZrjRZWQ+GR/TfkAOLDhV8zhqNbPnoHCwjtjUdQTVurUDxpqOO4zrKTX
         xTAg==
X-Gm-Message-State: APjAAAXnK1nb7uGnnWcd0YnluzcpH5qtSOmfpg4OWMSRB0eYk3vajypR
        184mQEUEJYwPwK19LqqVaZX8tA==
X-Google-Smtp-Source: APXvYqwrm3lDeGRnJx7g5EY5lJ5ZBzglEq7ClMbsGc6X8fVoF80Kv6SGb8mBvxA9elUTdo5UIIKIrw==
X-Received: by 2002:a63:6884:: with SMTP id d126mr70417545pgc.154.1558281916225;
        Sun, 19 May 2019 09:05:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id b23sm17547007pfi.6.2019.05.19.09.05.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 May 2019 09:05:15 -0700 (PDT)
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
Subject: [PATCH v4 3/3] arm64: kexec_file: add rng-seed support
Date:   Mon, 20 May 2019 00:04:46 +0800
Message-Id: <20190519160446.320-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
References: <20190519160446.320-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding "rng-seed" to dtb. It's fine to add this property if original
fdt doesn't contain it. Since original seed will be deleted after
read, so use a default size 128 bytes here.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
* Will add corresponding part to userspace kexec-tools if this is accepted.
---
 arch/arm64/kernel/machine_kexec_file.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 58871333737a..d40fde72a023 100644
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
@@ -102,6 +104,23 @@ static int setup_dtb(struct kimage *image,
 				FDT_PROP_KASLR_SEED);
 	}
 
+	/* add rng-seed */
+	if (rng_is_initialized()) {
+		void *rng_seed = kmalloc(RNG_SEED_SIZE, GFP_ATOMIC);
+		get_random_bytes(rng_seed, RNG_SEED_SIZE);
+
+		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
+				RNG_SEED_SIZE);
+		kfree(rng_seed);
+
+		if (ret)
+			goto out;
+
+	} else {
+		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
+				FDT_PROP_RNG_SEED);
+	}
+
 out:
 	if (ret)
 		return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;
@@ -110,7 +129,8 @@ static int setup_dtb(struct kimage *image,
 }
 
 /*
- * More space needed so that we can add initrd, bootargs and kaslr-seed.
+ * More space needed so that we can add initrd, bootargs, kaslr-seed, and
+ * rng-seed.
  */
 #define DTB_EXTRA_SPACE 0x1000
 
-- 
2.20.1

