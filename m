Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 825495DD40
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 06:05:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725785AbfGCEFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 00:05:06 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:42359 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbfGCEFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 00:05:06 -0400
Received: by mail-pg1-f195.google.com with SMTP id t132so467336pgb.9
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 21:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Bm9umS6vs/dbbokDnbGJE7RR1jt4/TW8qx98n8+rRXs=;
        b=lwp8ivzrlsxLLgRlaT62i3vqrLwkdKgS7nSCUiMXz6cLeSlSGmHtCrk1acO9r4NXgZ
         fzRiFfltg50O42MTfX838YI6NXHyPqDAMy6U88E2UtGVqiAjFKmYirTmp8pt6EJVZ3Kc
         zd5JmV2q9PZTe58ovR7q4HVMtLykh5iQ058j0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Bm9umS6vs/dbbokDnbGJE7RR1jt4/TW8qx98n8+rRXs=;
        b=P0beTDnfrZsc5PdD9G81KF2eGi/m0yl3LjD3x/k/j0PzHsx+44zGMWjGSKcO1mJBF/
         +nf9xo2943wbXSG8JXXA+xtZA/mFM094en6xADSL6qUtb2aGEJiPF9pb/nQoAvkub0wE
         l7+0x6VMm5fc7dTl2ioglqxOk5RiQNRbVskN/Cg5c0KaiblirR6iAYvaMjJ0vl6KXPtI
         CjWCWWCSIm6Faoc4Zse6YFgyaV1W391VpuSV99nA4Tve2WzLAi+Fe08LvCHKaEssLp31
         xa7JVhJNy6oeU4M8AKvJkBoLFTNTW3NMJIDHu1O2hEIBYpnwbf67ICNiLoWdL4pQKGMb
         lh9Q==
X-Gm-Message-State: APjAAAWHfcL/zDnfn2Z6GXZB8NkRy8MWGZnh7l1b8EbFQPa5c4oaa8ai
        fPbpeUr6il71eOSNOYrS/kah5w==
X-Google-Smtp-Source: APXvYqxSlvON1XYRESOb0HHRr/tTmlELefeQMA9+YaZ4lD8Nb2hIdAPpf8KZVxNsWdVkLy7H8dN7ow==
X-Received: by 2002:a65:42cd:: with SMTP id l13mr5469866pgp.72.1562126705767;
        Tue, 02 Jul 2019 21:05:05 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id w16sm608327pfj.85.2019.07.02.21.05.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Jul 2019 21:05:05 -0700 (PDT)
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
Subject: [PATCH v7 3/3] arm64: kexec_file: add rng-seed support
Date:   Wed,  3 Jul 2019 12:01:39 +0800
Message-Id: <20190703040135.169843-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703040135.169843-1-hsinyi@chromium.org>
References: <20190703040135.169843-1-hsinyi@chromium.org>
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
change log v6->v7:
* Use stack for rng_seed to avoid allocation failing.
---
 arch/arm64/kernel/machine_kexec_file.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 58871333737a..81b5baad97aa 100644
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

