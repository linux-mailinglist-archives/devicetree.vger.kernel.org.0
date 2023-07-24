Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D61E475F9AA
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 16:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231150AbjGXOU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 10:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjGXOUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 10:20:55 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B04BAE7E
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:20:49 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1b9ecf0cb4cso24311555ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690208449; x=1690813249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xA2xKVDlTfhJaNwFbFuXOx8UsiAOIvWBIr+xpGIDHbw=;
        b=Ti7MinIAsiXaxrUK9+vbFPfIJZw9yh5briqdt2G4FzLvgLbKNtQvj8lRk6Jxu8he00
         tBoBQxUgLAyqEDIIrJLWnZOrtgM+Cl+g75CdtJU+eGsUbrQukAb/sk86a7uTl1kF0MEO
         G2HjLVvjJ4e0SC2jgNBt9XREGqtnKUcLW6yaGJqIxJexYb1v1pfQNl57wB5uF+CeSbMu
         ggknQQnG+qS3mLj6ilvvNs8bG+aPFNZlSAYC9srmqEzyd0hCSNFj0GNmAOXxUSBR4jxj
         AfR2fXBRUdRaD/8etMel8v/f/MqsTCt+jEe9YfbN7mNPXPX8sW+pKpAtKAYQo00io3fj
         QWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690208449; x=1690813249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xA2xKVDlTfhJaNwFbFuXOx8UsiAOIvWBIr+xpGIDHbw=;
        b=FLK2LiOcMSSFkSFpOWBZmzNpIp2VL5sNt3jW6MCiciGGBx3liweMxOgmalUBefQ81r
         wSU69pY0ALcUkBjO4o77nx83aZqsu2OcxT/XIsjK49NDWkOTNpmHts4tK1G9/IpyHyUy
         TsW3y0GS/EwHf77so8cu+Vo1Kvr7JNccjnmQHraILbAVeO/35lti1nGCvkaPBHaLvr6e
         fJVk8H36P8XSs/4h5yaxXN2Zx7CzwRgdfDzdaTMRKZlej4S0ER7PsE/xeDn1J2h3fKJ4
         UkVuq6zgU3QukjlTATDXDcb2g3KvwtrwjSK8BjHO5WpxPlB4eqMd/Awqg/QWklu997Fd
         kVTg==
X-Gm-Message-State: ABy/qLaJ6up2r/zHTUBZtDIyBnk9yqRDRUgUonSEOIMff+4XFGjbQ5fM
        N40vda0WwH+TISquK1IS8aGmZw==
X-Google-Smtp-Source: APBJJlHPt6y/N05egGPuqcnG8ZCXhgJ+77H629QsBZHfvLDHAUCNTQjZG9Jyiv3v1HjRVo5UAXElsQ==
X-Received: by 2002:a17:902:ea0a:b0:1b3:c7c1:8ded with SMTP id s10-20020a170902ea0a00b001b3c7c18dedmr9467459plg.27.1690208449126;
        Mon, 24 Jul 2023 07:20:49 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id s10-20020a170902a50a00b001b8307c81c8sm9009821plq.121.2023.07.24.07.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 07:20:48 -0700 (PDT)
From:   Mayuresh Chitale <mchitale@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>
Cc:     Mayuresh Chitale <mchitale@ventanamicro.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Conor Dooley <conor@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3 1/7] RISC-V: Detect Smstateen extension
Date:   Mon, 24 Jul 2023 19:50:27 +0530
Message-Id: <20230724142033.306538-2-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230724142033.306538-1-mchitale@ventanamicro.com>
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extend the ISA string parsing to detect the Smstateen extension

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpu.c        | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index f041bfa7f6a0..fad1fd1fcd05 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -53,6 +53,7 @@
 #define RISCV_ISA_EXT_ZICSR		40
 #define RISCV_ISA_EXT_ZIFENCEI		41
 #define RISCV_ISA_EXT_ZIHPM		42
+#define RISCV_ISA_EXT_SMSTATEEN		43
 
 #define RISCV_ISA_EXT_MAX		64
 #define RISCV_ISA_EXT_NAME_LEN_MAX	32
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index a2fc952318e9..fb0df651bc48 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -217,6 +217,7 @@ static struct riscv_isa_ext_data isa_ext_arr[] = {
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbs, RISCV_ISA_EXT_ZBS),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index a8f66c015229..c3742a765f8b 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -301,6 +301,7 @@ void __init riscv_fill_hwcap(void)
 			} else {
 				/* sorted alphabetically */
 				SET_ISA_EXT_MAP("smaia", RISCV_ISA_EXT_SMAIA);
+				SET_ISA_EXT_MAP("smstateen", RISCV_ISA_EXT_SMSTATEEN);
 				SET_ISA_EXT_MAP("ssaia", RISCV_ISA_EXT_SSAIA);
 				SET_ISA_EXT_MAP("sscofpmf", RISCV_ISA_EXT_SSCOFPMF);
 				SET_ISA_EXT_MAP("sstc", RISCV_ISA_EXT_SSTC);
-- 
2.34.1

