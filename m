Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B654690CE6
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230395AbjBIP0m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbjBIP0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:41 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 917377EE1
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:39 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id rp23so7398309ejb.7
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EwGCFvR5QiJnBG5maZ5ND+ts9ZoIUQowm5odzUGUVLQ=;
        b=GKVeu2CNGE/49/dMiiNlCex8leLvpRCKi6smtlO8Y9RPXhsC1eDLdiAxJp+k58ahHc
         yDMjpQQZPFwzP0AFKk97XpngeoEqyz+n+0PVj0s+6Tq87HsWKXtPNu4PJDXV6/XbkLAW
         JqnPNBCl78axf8Pa9fK7mtrY6OanHDC4KCKQXvvrxtnadnL8kCcRtPfFDe5muVYxNudN
         SL53XaVMZSNYZWZbjWjasWkH4+DL7EAiBC8MPyqrDrgAnDPYvm56JXFW+dw+Oqpizs+S
         L3GwIDZGG1vbgGw7YsqPyztycZPV0TEFomvAbHdtpHBJ2rQb2bP0FwQacv7jP6mWJOTP
         WiZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EwGCFvR5QiJnBG5maZ5ND+ts9ZoIUQowm5odzUGUVLQ=;
        b=GlkLBZ3tjqEwmBwxkF50bQ6pdvogG8mjfOOmA3j2RzZnvSOH0mIAkBlzd86FqcGe2y
         ZFCjUSVYgAjpghTZrno19Wlcom2wTSIIDXSXShdP05XGpNmPZWMy/Xaqd47oALK6HkiI
         ABY+FHEBpOhI7k3nBeg9qfzE8+UABs2fJ6k5BW+Y8f7qF2UM1+L8qFcCnp+q85zL3QXA
         Gsm8t8oZt/se8U6aHDnVCPshvQSd6YUJvsNUDptb9CkR/NWmoLAzpHNp63Caa8bXRaZB
         8GlEsYMZja0xZ3EhF6q/l3/ETWnHu9CGqA37VdExBVBGP41jr42aFUvcX6CtU7Ym0ar8
         Jlpw==
X-Gm-Message-State: AO0yUKUsvnvzLG80G5hnLp2JdePSzT2A8DbbYGJo2Pv/+HfQDxmN8Vwr
        SXvf9N9p8yXJQn1ikerancFTIA==
X-Google-Smtp-Source: AK7set+iYT9t6JRJsadzPz5rQARTlCfz1RIGdB1jbSa9qEOlDDpYUpcQJnqkS5mvLeHPe0OXsHfmsg==
X-Received: by 2002:a17:906:3a89:b0:861:4671:a834 with SMTP id y9-20020a1709063a8900b008614671a834mr13085814ejd.71.1675956399242;
        Thu, 09 Feb 2023 07:26:39 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id t13-20020a170906268d00b0087bdac06a3bsm1001221ejc.2.2023.02.09.07.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:38 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: [PATCH v4 5/8] RISC-V: cpufeature: Put vendor_id to work
Date:   Thu,  9 Feb 2023 16:26:25 +0100
Message-Id: <20230209152628.129914-6-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230209152628.129914-1-ajones@ventanamicro.com>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When [ab]using alternatives as cpufeature "static keys", which can
be used in assembly, also put vendor_id to work as application-
specific data. This will be initially used in Zicboz's application to
clear_page(), as Zicboz's block size must also be considered. In that
case, vendor_id's role will be to convey the maximum block size which
the Zicboz clear_page() implementation supports.

cpufeature alternative applications which need to check for the
existence or absence of other cpufeatures may also be able to make
use of this.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/kernel/cpufeature.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 0d2db03cf167..74736b4f0624 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -278,6 +278,11 @@ void __init riscv_fill_hwcap(void)
 }
 
 #ifdef CONFIG_RISCV_ALTERNATIVE
+static bool riscv_cpufeature_application_check(u32 feature, u16 data)
+{
+	return data == 0;
+}
+
 void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
 						  struct alt_entry *end,
 						  unsigned int stage)
@@ -289,8 +294,6 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
 		return;
 
 	for (alt = begin; alt < end; alt++) {
-		if (alt->vendor_id != 0)
-			continue;
 		if (alt->errata_id >= RISCV_ISA_EXT_MAX) {
 			WARN(1, "This extension id:%d is not in ISA extension list",
 				alt->errata_id);
@@ -300,6 +303,9 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
 		if (!__riscv_isa_extension_available(NULL, alt->errata_id))
 			continue;
 
+		if (!riscv_cpufeature_application_check(alt->errata_id, alt->vendor_id))
+			continue;
+
 		oldptr = ALT_OLD_PTR(alt);
 		altptr = ALT_ALT_PTR(alt);
 		patch_text_nosync(oldptr, altptr, alt->alt_len);
-- 
2.39.1

