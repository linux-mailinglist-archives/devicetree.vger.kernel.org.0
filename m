Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1A1786834
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 19:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732886AbfHHRjr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 13:39:47 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:38220 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728025AbfHHRjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 13:39:46 -0400
Received: by mail-pf1-f196.google.com with SMTP id y15so44511342pfn.5
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 10:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h/yL8Ymy2LB/STS6J+Lq4m9W0ydt77fAXWIWGhH684M=;
        b=C0Tdu9oWw6g8jn0YCy/CUc0vBYErlEDkoKO0ggvyp3/u2SeUmwfPORoGPM4LeaiRRJ
         JnXa11Nr0XT7YDWpmLDBkLw+su/NAcq9L9MuzaABlUQVuFCoRTu/ea1ABq2d51thSbXa
         h3L4/ldUPBQ5CNJ3G5pzpA31cvXgxRP1Gqae0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h/yL8Ymy2LB/STS6J+Lq4m9W0ydt77fAXWIWGhH684M=;
        b=m0ap3OMGTt2mzfmdQzngcsCYgeFaKhr1CGDP2DBRYnIvagZsijWTHBIOOYIVpSY0lA
         tLdcG66PvfknhfIo36MpRaQMcJzxHH8QZ+0UetFfD4RYVn8pOACTBgjER7utHOi0td+6
         S5HBc0q44eVRjXWyZMpTOVfeWuxsRFM2E+JOc/KpzpUjq09qIGVlqB1j56lcMgbDHUxr
         iwpclkaxMasPUCNH1wGmjz0PshfN9e3Yey1mSKPng0IRmSa6ic6LJlFu453KJwQBIqc3
         YuMBN0h4mV63vOpLr22Lg+s8D6MQ+/2XGdlq3WDmpXdZW/EXYbE8/IYT4ykD99QrrlZw
         P4Lg==
X-Gm-Message-State: APjAAAV+ZcjoNbQW9uU6nGMvU7hKcfA5mZSiFKyO2nb8DU3ZCs4fk7+g
        OFafhdFwUd2WLqVLae28gK3SKw==
X-Google-Smtp-Source: APXvYqzhArDX4+b5Tep8MKl/+REDpR8R7lMugu/xbPdlvta78+f9dxTGpX+ohwloxZ3TNOhPSM5uEg==
X-Received: by 2002:aa7:8a0a:: with SMTP id m10mr466871pfa.100.1565285986200;
        Thu, 08 Aug 2019 10:39:46 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id y12sm105824412pfn.187.2019.08.08.10.39.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Aug 2019 10:39:45 -0700 (PDT)
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
Subject: [PATCH RESEND v7 3/3] arm64: kexec_file: add rng-seed support
Date:   Fri,  9 Aug 2019 01:38:07 +0800
Message-Id: <20190808173803.1146-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808173803.1146-1-hsinyi@chromium.org>
References: <20190808173803.1146-1-hsinyi@chromium.org>
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

