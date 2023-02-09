Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F178690CE1
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbjBIP0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbjBIP0e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:34 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8225B4
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:33 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id rp23so7397210ejb.7
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZPEogwNPGzb9EX437UPsSVPibcKNUNGdrZDqrYRtR30=;
        b=b3sCue6n3RjE4xqJgkD8qN0AkCyEMJ0emnA4KWOHkceg0c7oQlYBKxB7Uo7VnTO3MW
         cInYWY4opfY5bPb+nTa1VuySJS6bOTeuEE1jbujvb6MU3yj0QPoTYK1369WJGGbOPDlE
         vZbDrXc8B42YIUIOXlKMgxkVlYtaPiw8CDMMR5mCh+YL5kcWBTladvqMEVbdUIhCQk70
         AlvQJ7wH0haSh2Dw7iEqPc4XlDMj6CN+BnL7+r4Uj91pcZOfKvEJRwL+ak9PxD0aIYL4
         7p7ZTAbFn1MH9xdtxvSqT8NPZdNa9uXsuXyqFZD2OM3y9kSMeejD4iEVOLT71BGHIEHw
         IVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZPEogwNPGzb9EX437UPsSVPibcKNUNGdrZDqrYRtR30=;
        b=lm+pO/k1iIWYNTf2EQZlcgEyQYR9QxorVpEamZC5uTBrLOej8fa69srhpF8zfVJ97T
         9T1nIxwanJyXFe5uGLwVgz6aF6HSfW9WTwji8f1XH+6TBDf6N6+cYKfS41DStlQad5K7
         VE/C/L9gnKTxjKP7U7Wz0maZwx8USqDOl67S6n66vptP+Aku/RKmgmG+j52oi0zHRg2W
         jLgeS1FHESQQuszynPoQ+AYa/dOfAvvXOdKNBda1aRRiK0ZLCdv4ZJcbwRp2OTnfTj/o
         pFYbKolQkqZ40s6b5MoR4svOXXpZcuXZI36Y4dXanhhDfjqH9Lsoh9X5NAvx+427e8cj
         evUA==
X-Gm-Message-State: AO0yUKV7xhV8b7uycFFvr5nYlRy6taeap2Sa1xlsv7yRBmYvK1OEOcty
        gS0NBdWP3oiQIQN3zfRJs7cxaA==
X-Google-Smtp-Source: AK7set+hdCra0whyCsMluYeqc8tO2CxHPuvkqNX0x30WRYplOKw+jW6GPyEK/mp5aPgrGqkjjDDXFg==
X-Received: by 2002:a17:906:fa18:b0:878:54e3:e3e1 with SMTP id lo24-20020a170906fa1800b0087854e3e3e1mr12568946ejb.73.1675956392240;
        Thu, 09 Feb 2023 07:26:32 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b008ab84430157sm980266ejb.200.2023.02.09.07.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:31 -0800 (PST)
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
Subject: [PATCH v4 1/8] RISC-V: alternatives: Support patching multiple insns in assembly
Date:   Thu,  9 Feb 2023 16:26:21 +0100
Message-Id: <20230209152628.129914-2-ajones@ventanamicro.com>
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

As pointed out in commit d374a16539b1 ("RISC-V: fix compile error
from deduplicated __ALTERNATIVE_CFG_2"), we need quotes around
parameters passed to macros within macros to avoid spaces being
interpreted as separators. ALT_NEW_CONTENT was trying to handle
this by defining new_c has a vararg, but this isn't sufficient
for calling ALTERNATIVE() from assembly with multiple instructions
in the new/old sequences. Remove the vararg "hack" and use quotes.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/alternative-macros.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/alternative-macros.h b/arch/riscv/include/asm/alternative-macros.h
index 51c6867e02f3..7bc52f33f95f 100644
--- a/arch/riscv/include/asm/alternative-macros.h
+++ b/arch/riscv/include/asm/alternative-macros.h
@@ -14,7 +14,7 @@
 	.4byte \errata_id
 .endm
 
-.macro ALT_NEW_CONTENT vendor_id, errata_id, enable = 1, new_c : vararg
+.macro ALT_NEW_CONTENT vendor_id, errata_id, enable = 1, new_c
 	.if \enable
 	.pushsection .alternative, "a"
 	ALT_ENTRY 886b, 888f, \vendor_id, \errata_id, 889f - 888f
@@ -41,13 +41,13 @@
 	\old_c
 	.option pop
 887 :
-	ALT_NEW_CONTENT \vendor_id, \errata_id, \enable, \new_c
+	ALT_NEW_CONTENT \vendor_id, \errata_id, \enable, "\new_c"
 .endm
 
 .macro ALTERNATIVE_CFG_2 old_c, new_c_1, vendor_id_1, errata_id_1, enable_1,	\
 				new_c_2, vendor_id_2, errata_id_2, enable_2
 	ALTERNATIVE_CFG "\old_c", "\new_c_1", \vendor_id_1, \errata_id_1, \enable_1
-	ALT_NEW_CONTENT \vendor_id_2, \errata_id_2, \enable_2, \new_c_2
+	ALT_NEW_CONTENT \vendor_id_2, \errata_id_2, \enable_2, "\new_c_2"
 .endm
 
 #define __ALTERNATIVE_CFG(...)		ALTERNATIVE_CFG __VA_ARGS__
-- 
2.39.1

