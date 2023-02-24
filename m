Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C36516A1F90
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 17:26:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbjBXQ0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 11:26:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjBXQ0f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 11:26:35 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E44DE6A7B6
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:34 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t15so14608254wrz.7
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYNxCoy2kO8Df1US+5U8F6a2dVH3sUiqyDcA4T+cIdk=;
        b=En6Si0WFgSuFebHftBEO8bUQY7IXWNBN8xsTRVwkNrqnPGfu+D8r/lYQcuhdU8YUPP
         YgRH44w/1MWw8wEHfpe7mB7OWrRWbLHMGvuyPv/WSDum94YBwysEwpw552laUM2K8L0d
         +MDRijxrej0aeRLxf7Dpl5bA/cOZoff5DCrhZQxXe/4cSN1FUxqlpPAN+JRo7AirD5yI
         Ro09nnO6q3z/UwhLgl8D6zfK0a74bGu8FTaYZC7G2OENX6Np7Iq1jKSklpL/ttYjDV2C
         /oEpU0uEhBUEj0TwxlCeOsnYfqM6POjbCpx8+P+YDm4rVgAHYhcNYxyNh/U6nn8ZmT9F
         V3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FYNxCoy2kO8Df1US+5U8F6a2dVH3sUiqyDcA4T+cIdk=;
        b=8LLAXhWdFpZA63o+sE8Z+xPXK1C0pZUmAJvZLFV4ONqUZz1gKyQUAXLUh0SwNRjysd
         WO9vc3ruzHpquB1HbhGEvWZKNSQeLasopIaQ5dM4auWP4aXMOev0qYnEPMphoOzs6V7c
         OSnVrLr21vlKmxRKHV/ZvrOWXJlrjsyxIh5/cPSNJXFluckw9KkVfDdnUD2Gsojew9Et
         kkmw8BQoP6cQTVk63p8MOZnZItB8BLmqSweFsV3zdu/Bm/atm8oaWHdNFDJa+qOwiwbD
         gdwVpSRDEYB9yfcV+INMU1ZZGdhmQSxzCZ1pHbcD+bko75Bmny3NSbo3fNkSuwuygPzg
         n2tw==
X-Gm-Message-State: AO0yUKWSQ4TTeVCkSUv5EmFGF/2gLEjtSjN7UQkJ6Z5s+ih7bgQUXp2D
        3YnSqf9xmrVJIy95hYodQfXQzQ==
X-Google-Smtp-Source: AK7set/GnWAY+QoOE4/JlyN7MAfKde64aupvlOHt32saZ6ryvyjf7Edvr9vRivLB3FGJ0yazaa1Mkw==
X-Received: by 2002:a5d:5512:0:b0:2c7:1210:feaa with SMTP id b18-20020a5d5512000000b002c71210feaamr5381917wrv.26.1677255993449;
        Fri, 24 Feb 2023 08:26:33 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id t16-20020a5d5350000000b002c53cc7504csm10368171wrv.78.2023.02.24.08.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:26:33 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Conor Dooley ' <conor.dooley@microchip.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Sudip Mukherjee ' <sudip.mukherjee@codethink.co.uk>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Heiko Stuebner ' <heiko@sntech.de>
Subject: [PATCH v6 1/8] RISC-V: alternatives: Support patching multiple insns in assembly
Date:   Fri, 24 Feb 2023 17:26:24 +0100
Message-Id: <20230224162631.405473-2-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224162631.405473-1-ajones@ventanamicro.com>
References: <20230224162631.405473-1-ajones@ventanamicro.com>
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
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/alternative-macros.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/alternative-macros.h b/arch/riscv/include/asm/alternative-macros.h
index 993a44a8fdac..b8c55fb3ab2c 100644
--- a/arch/riscv/include/asm/alternative-macros.h
+++ b/arch/riscv/include/asm/alternative-macros.h
@@ -14,7 +14,7 @@
 	.4byte \patch_id
 .endm
 
-.macro ALT_NEW_CONTENT vendor_id, patch_id, enable = 1, new_c : vararg
+.macro ALT_NEW_CONTENT vendor_id, patch_id, enable = 1, new_c
 	.if \enable
 	.pushsection .alternative, "a"
 	ALT_ENTRY 886b, 888f, \vendor_id, \patch_id, 889f - 888f
@@ -41,13 +41,13 @@
 	\old_c
 	.option pop
 887 :
-	ALT_NEW_CONTENT \vendor_id, \patch_id, \enable, \new_c
+	ALT_NEW_CONTENT \vendor_id, \patch_id, \enable, "\new_c"
 .endm
 
 .macro ALTERNATIVE_CFG_2 old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
 				new_c_2, vendor_id_2, patch_id_2, enable_2
 	ALTERNATIVE_CFG "\old_c", "\new_c_1", \vendor_id_1, \patch_id_1, \enable_1
-	ALT_NEW_CONTENT \vendor_id_2, \patch_id_2, \enable_2, \new_c_2
+	ALT_NEW_CONTENT \vendor_id_2, \patch_id_2, \enable_2, "\new_c_2"
 .endm
 
 #define __ALTERNATIVE_CFG(...)		ALTERNATIVE_CFG __VA_ARGS__
-- 
2.39.1

