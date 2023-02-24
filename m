Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A2096A1FA1
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 17:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbjBXQ06 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 11:26:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbjBXQ0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 11:26:47 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E80DC6EB2F
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:42 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id j2so14322008wrh.9
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=Vy71SU7zuNIXJiH/qB1kiXZfMEfbB0uoSbnTAnzP1PjTxaknmh+uieMfRQ6/zp3xwI
         1E0yfSZRExBO6kXuBZ82OuZcPS+SA3bXdWyGMvPV6vhXVvnifzs1o/w3kobRRYgNct3w
         rkkjMf3lVRjipghLhcn1DmgDh676bVYG+nwh09AJ61Lq/e2GCjrP0fK7E1wcEny1D/Hg
         Qu6sSvnhbbuUHEse4hbl84VcYhM3RXXJzJafSlqWdRGIFFQUPQxoJqKIJiMP7V5/YkZC
         2tvWjg6zURxTidnqq/Jl/Cu/1On97PKDfMO814pQ0+Z84XRQ8rCmzQbvtjIfHlxBNgpG
         Xrug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=tsb6XgRCfSwSLaxXO+6UnfgzkUaZ0hv6p0HvjDXBJE6vuui8MLEc7JrBOrD7zKX2w4
         x+rQ6xTkczGX2qtiQrAv1wVER0JoNE2ZqNopMZXzMgMi7AWCAvlo3JcDjRSbmCWUbxuH
         JLn2oA8jq02DpO8LL+mxvH3ebW5UCUxxWEvpAW18Jtp+KlQrrQLfSyW9cm5zSIOppnQB
         Qb83U22XLoaWHmjUcimTEUtA9ks5yCAT42yrsGXesHvkHjVXmX0X/RRqG3IqVPTQgH/w
         qPYu6VzvnmwqCf+ofzS6Y30xam160CU0xmM288oczTfDQbxsWyP5ifKRs5ZwNgXuaTrD
         vr0Q==
X-Gm-Message-State: AO0yUKVbUFkp05Eeq1si+LUSs2Y4vH5c7JY6Vmw3PJ6uKNCvDFbUr0v/
        iXbUghitDibZZqh3tH/kjAIFiQ==
X-Google-Smtp-Source: AK7set/VtgsyzXm8Ap48VZCq1ILylsYFDhexWn5ba7SjzSOIRQncUWlH4PUYTDZ/8fn10OmbbTANfA==
X-Received: by 2002:a05:6000:89:b0:2c8:42b5:8025 with SMTP id m9-20020a056000008900b002c842b58025mr640072wrx.47.1677256001439;
        Fri, 24 Feb 2023 08:26:41 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id y7-20020a1c4b07000000b003daf672a616sm3318597wma.22.2023.02.24.08.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:26:41 -0800 (PST)
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
        'Heiko Stuebner ' <heiko@sntech.de>,
        Anup Patel <anup@brainfault.org>
Subject: [PATCH v6 7/8] RISC-V: KVM: Provide UAPI for Zicboz block size
Date:   Fri, 24 Feb 2023 17:26:30 +0100
Message-Id: <20230224162631.405473-8-ajones@ventanamicro.com>
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

We're about to allow guests to use the Zicboz extension. KVM
userspace needs to know the cache block size in order to
properly advertise it to the guest. Provide a virtual config
register for userspace to get it with the GET_ONE_REG API, but
setting it cannot be supported, so disallow SET_ONE_REG.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu.c             | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 92af6f3f057c..c1a1bb0fa91c 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -52,6 +52,7 @@ struct kvm_riscv_config {
 	unsigned long mvendorid;
 	unsigned long marchid;
 	unsigned long mimpid;
+	unsigned long zicboz_block_size;
 };
 
 /* CORE registers for KVM_GET_ONE_REG and KVM_SET_ONE_REG */
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 7c08567097f0..e5126cefbc87 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -276,6 +276,11 @@ static int kvm_riscv_vcpu_get_reg_config(struct kvm_vcpu *vcpu,
 			return -EINVAL;
 		reg_val = riscv_cbom_block_size;
 		break;
+	case KVM_REG_RISCV_CONFIG_REG(zicboz_block_size):
+		if (!riscv_isa_extension_available(vcpu->arch.isa, ZICBOZ))
+			return -EINVAL;
+		reg_val = riscv_cboz_block_size;
+		break;
 	case KVM_REG_RISCV_CONFIG_REG(mvendorid):
 		reg_val = vcpu->arch.mvendorid;
 		break;
@@ -347,6 +352,8 @@ static int kvm_riscv_vcpu_set_reg_config(struct kvm_vcpu *vcpu,
 		break;
 	case KVM_REG_RISCV_CONFIG_REG(zicbom_block_size):
 		return -EOPNOTSUPP;
+	case KVM_REG_RISCV_CONFIG_REG(zicboz_block_size):
+		return -EOPNOTSUPP;
 	case KVM_REG_RISCV_CONFIG_REG(mvendorid):
 		if (!vcpu->arch.ran_atleast_once)
 			vcpu->arch.mvendorid = reg_val;
-- 
2.39.1

