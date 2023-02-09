Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB7C690CE9
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231243AbjBIP0v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjBIP0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:47 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9069113F6
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:45 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id c26so2637604ejz.10
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQSbWzdXITTUFGVPTFXHGgENmDgXWQs7cxb8n6vTRIg=;
        b=nwYv73IBL76wvzePwxmU+aAO25GztHrjPvbBh84keW7by4vzfzJ424ns2dmlnegR66
         5pC8IqnKxRSWs7nW3K6Z3+0EfohmIPfimixNoTpDVF6kl/udJ5fEw7Wjxs89AQKNzpab
         BeJfGE3nWSdnXEIc7Xe40RS4cMYEmM+L/yKLj3QR7O0EgoHmr8YfV8rwHcdu0dAG6nZI
         LXEA9enjY1CLJ1bwRLY0t/vcdAGrFqYaTdUAVqXzNszI2X5NbvdO/h+A+NcivAgrN8hA
         u2qjvTZMiO4bSaXmNLmFdVPlmKaq1ha47VvV80+RqgZ1AGkcq6dONzQNHIGydjJ3SXO9
         JCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQSbWzdXITTUFGVPTFXHGgENmDgXWQs7cxb8n6vTRIg=;
        b=4kVAmxHucNHr3eNhn/j4lGmCKwsEQYuCKEDlVhw/HIr+qBT8UhowcP4iEqGbrP4YZW
         OyqA2dwteUmBczV8TiKGLA+lIyoejgTYmuoV9P+j48RO4r7ubgQr9kIbRT3fidLOK1Kr
         fljH+YkCONO/Gz9MSmaJ1bBlSzgccptcsiOjw9VvXBXnMePUkt+2xQzqAlr8Vj8ywrH3
         wlb2UYXkMZKfN8lgOTTRQAQ5jAjMDsRX7uaWCkVUFmQoPuQMOBvI9vBQYbfCeiOD1Tjo
         +C5+WBrbSV+PBXhqwLBtYiT/59HuQ5KRdwi84R/LA7LXpBpf7gg7gOnHdZqoAv6hU+/g
         5TLg==
X-Gm-Message-State: AO0yUKXvJCdcxA1/oL/Tkgw1XOWxvEv4ovTEFxH7ccAr6C0Enwdn2ykm
        6ezJoyOzdJ6MLAH+3fHdozYp+g==
X-Google-Smtp-Source: AK7set+6etukwMom3zRz8gzDC7K5MVHmeyW0lzWdeuswVGlt8atxVizF3BtHxXdMuT9fZpzwcjkBrQ==
X-Received: by 2002:a17:906:69c6:b0:881:f614:44ed with SMTP id g6-20020a17090669c600b00881f61444edmr13899347ejs.30.1675956404230;
        Thu, 09 Feb 2023 07:26:44 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id z22-20020a17090655d600b00871f66bf354sm976530ejp.204.2023.02.09.07.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:43 -0800 (PST)
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
        'Conor Dooley ' <conor.dooley@microchip.com>,
        Anup Patel <anup@brainfault.org>
Subject: [PATCH v4 8/8] RISC-V: KVM: Expose Zicboz to the guest
Date:   Thu,  9 Feb 2023 16:26:28 +0100
Message-Id: <20230209152628.129914-9-ajones@ventanamicro.com>
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

Guests may use the cbo.zero instruction when the CPU has the Zicboz
extension and the hypervisor sets henvcfg.CBZE.

Add Zicboz support for KVM guests which may be enabled and
disabled from KVM userspace using the ISA extension ONE_REG API.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu.c             | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index c1a1bb0fa91c..e44c1e90eaa7 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -106,6 +106,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_SVINVAL,
 	KVM_RISCV_ISA_EXT_ZIHINTPAUSE,
 	KVM_RISCV_ISA_EXT_ZICBOM,
+	KVM_RISCV_ISA_EXT_ZICBOZ,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index e5126cefbc87..198ee86cad38 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -63,6 +63,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVPBMT),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
 	KVM_ISA_EXT_ARR(ZICBOM),
+	KVM_ISA_EXT_ARR(ZICBOZ),
 };
 
 static unsigned long kvm_riscv_vcpu_base2isa_ext(unsigned long base_ext)
@@ -865,6 +866,9 @@ static void kvm_riscv_vcpu_update_config(const unsigned long *isa)
 	if (riscv_isa_extension_available(isa, ZICBOM))
 		henvcfg |= (ENVCFG_CBIE | ENVCFG_CBCFE);
 
+	if (riscv_isa_extension_available(isa, ZICBOZ))
+		henvcfg |= ENVCFG_CBZE;
+
 	csr_write(CSR_HENVCFG, henvcfg);
 #ifdef CONFIG_32BIT
 	csr_write(CSR_HENVCFGH, henvcfg >> 32);
-- 
2.39.1

