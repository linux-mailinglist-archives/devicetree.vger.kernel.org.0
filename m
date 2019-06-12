Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E4E0741B3D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 06:35:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729755AbfFLEfL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 00:35:11 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:34938 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbfFLEfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 00:35:11 -0400
Received: by mail-pg1-f194.google.com with SMTP id s27so8194388pgl.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 21:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rJn1YZ706aJfrT07Hn2oI2Mia8615vCPrYsCrOsg17g=;
        b=nqTKRZCKIs+8kG9Liz37bjElzQMgiWIkqbp++oZGf4NKeWcTbix2jRPp8mGO/hAgR6
         4+HNZHFyqoG6vx+pkuGWDOYH/mueiggyXED2gqRaFTKHeVEUfGhAMGncR0Y61bP1+Jng
         XWbBDY7gsgQmfzGku7MtRuYYrk4EaxY1CoudU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rJn1YZ706aJfrT07Hn2oI2Mia8615vCPrYsCrOsg17g=;
        b=tUGaJG6htzdlM/rgb+TXfn4B03U0ne7A91VMYMAs/1VKr4hKerfuZCruT/3wiOiAxT
         sjr8ngjrPk4hIZYw+z/7Sp4P7p/g9bwWnybeRA2LyToU/rDMGvOu4m8B9+K+swjo7S8d
         JF/feriErCBWOXnRM7/r4YtjraXD7ug4pzqnV9qD32if5dMNqzSrvVqWxvrBIQNd1EsZ
         8AGPo+p0QiQvUnL3OGGsbxVkHbJGgd0i885RzCrCnEgQFksJwRBCMUIIzeDxfuqeMy/t
         5NHXrI+wCZT6rdkE582D4sC+nr0p01sBbCBfSpiUclQHMmVw9jQIc6QUa0yNQNnOhYBj
         PJ7w==
X-Gm-Message-State: APjAAAWA1Nkzgpl4PtRIYMkwR0/n9uNq2mTqZUL1Iz7uxfGnvv5eb/kw
        /C5cwdrs+PeP0kNNAwaaHPkXvw==
X-Google-Smtp-Source: APXvYqy6WDq4Lk5pwGNHojTbI4ATefffHsAeuBNNuE8NFwZSff+br4DhRCYcJDdPXvX4l1j7ZaLK6w==
X-Received: by 2002:a65:63c6:: with SMTP id n6mr18294203pgv.370.1560314110645;
        Tue, 11 Jun 2019 21:35:10 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id k8sm15285998pfi.168.2019.06.11.21.35.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Jun 2019 21:35:10 -0700 (PDT)
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
Subject: [PATCH v6 3/3] arm64: kexec_file: add rng-seed support
Date:   Wed, 12 Jun 2019 12:33:02 +0800
Message-Id: <20190612043258.166048-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612043258.166048-1-hsinyi@chromium.org>
References: <20190612043258.166048-1-hsinyi@chromium.org>
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
change log v5->v6:
* no change
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

