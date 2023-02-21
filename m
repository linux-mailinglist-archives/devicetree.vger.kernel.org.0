Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4559469E804
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbjBUTJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjBUTJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:22 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFFC52BEFC
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:20 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ck15so22611783edb.0
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYNxCoy2kO8Df1US+5U8F6a2dVH3sUiqyDcA4T+cIdk=;
        b=EYITKlLr72rNFqewRWkBcZIH/vOCjOWBdgaXGm/V1n/d566Z7FAxepJOy1rHCPj6dl
         iZPY68A8qqNpvLChuWDvncH9eb8FPlf9oUzkfajT4Y0wErspOI9prAtce1ortH1TkJMQ
         0GmxfCml7vv16dNhye981zY8nbwUXe1dnK7tWuhXAjwDCius2dbj0JGupkde2qZiZOxU
         zOu9rPfITBTwRMfp2zkXJ2gaRU3w+V52Y3zu+OdjMeTJx6iDbp8UK3soMZ3atBudw6e6
         lF/NjUB56yU5KdfYM1Y3ZQ4YTKxtInhjUAkYP6NPkVzLPR3un1vHHidHWNsE/wI+aOqq
         aHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FYNxCoy2kO8Df1US+5U8F6a2dVH3sUiqyDcA4T+cIdk=;
        b=3q5vuv38GM3ebUXnD6F5M34pmRZY0YsUl1YW8bWB0OycDRAFsbWXlx5wkxKqWVPAS1
         ZiPqPlWX2Fo7ph1mzYQRtZltg7OyOoy6A4bxjWFDYqCbKXvGwVpnC8kNBqtMncHamIR1
         PZ47ZnjoNhM9Qtq/HymBoAUTPhQPN9G4mqZBJUGNAOx+ivK7iAB399wFrCnQKYB/Pt8e
         XgjFSRNxckZKacbYIoAxUsLYSJS+vrHSm1c3HjsViXlUTfSq+vt3vVNjqhAu6J3hgpRI
         Xl6/4YOucwk02xfAODj4ydm1ca6nMqqYqzj62DlUzDCxa57s6lGMh+PFog8sJrV3GsR5
         wLaQ==
X-Gm-Message-State: AO0yUKUWXSdFVv9l7+Y7DkvbYsGawYe0lZiCr/fMi+DvoCfcae3SWv/h
        JhnD0hjAhVZX9QTlxv+TbTxEJx6m0KyD/+e/
X-Google-Smtp-Source: AK7set/w5FjER/3tKGB8RECJxQK3hqRtMHjbasbAVUNEy5Da6xeEsfNxs3m4JYfZBwWCY/jOTenDiQ==
X-Received: by 2002:a17:907:1c0e:b0:8b1:3159:2eb3 with SMTP id nc14-20020a1709071c0e00b008b131592eb3mr21055233ejc.43.1677006559385;
        Tue, 21 Feb 2023 11:09:19 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id f6-20020a170906494600b008e240be0bddsm733310ejt.140.2023.02.21.11.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:19 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: [PATCH v5 1/8] RISC-V: alternatives: Support patching multiple insns in assembly
Date:   Tue, 21 Feb 2023 20:09:09 +0100
Message-Id: <20230221190916.572454-2-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
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

