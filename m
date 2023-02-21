Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52A2269E811
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjBUTJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229848AbjBUTJc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:32 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6BE429147
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:29 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id ec43so20864369edb.8
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=Ix1WNvgwNW8D11ctXgNiOM0FiK4BP7PrjTKvgkUfpwf9LXRk8uG51OjAxnA8ioAYFi
         D7SM+TuDqx8chuwOWx4IOfWJnA58WTuVxTWmB9gPJ8po+vGR2jZpanaImIuYL1iwnEuK
         pYuvxb+l68vlmFFaqmaUQAATaeyb9d0LttpnMIm1qZJuEzg+yLqrctAmD2rSgkMiEow1
         IxL4fBU6Gy8FPm2oLqKq9ButSf2Pf20/i/i/sbkVaFkZiY/BNXSoBmlXyHHgKVIx2A7B
         p0LwD7ukEuh8lnqf0SKjFJI5Y6+OOpLG9+xNTYZ9V8ybN4RldqgE30eL869Evw3RWDcQ
         kx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=ZKlbXW76Kvh4lkhVqdcLkKR3LlE0TX7vlxV2MzqkF1bOl+8w6xcpjAG9XqjEFVj8z2
         Sdz9h8Q1MwOwdAW5n2WvpysGKUaWkRn/OICiDctM9AzWU9OTVpzQMjnXEbPGBRh35twZ
         oNypzt2o9aCLjaJeIz8k7gg7hQGHvAOtqJrQF1pPGcEv56EbJuyjixy24PHbckH1dxpB
         yTSZMiCgMQ/Yxfaww1itAqcdtfaufRLfAf0iZJjOQPtL61StcyzpJadlGzo2yYXdPB//
         1KjmdHkllyOOupsoBkhZXdnGG5zXeYNG4pxTn9lBIttQV1lrmFOQxNHa7TVd9P1IJZAV
         7mAA==
X-Gm-Message-State: AO0yUKUDRoOE8l+Rym/WFxvxWU5qyzmSvP19YGwSojWZzMr5iRjJ+EFU
        zGkLP6O+psrj42LKPhTIlsZJEQ==
X-Google-Smtp-Source: AK7set/AalazSeZ6RJbQ8i5VBI5Nicd13b/AoGuXnMO/zFDUec7sv0ihAdmsDzdQEpzsSiF/L+IgHQ==
X-Received: by 2002:a17:906:fb14:b0:8d4:1e81:f87e with SMTP id lz20-20020a170906fb1400b008d41e81f87emr6368743ejb.57.1677006568414;
        Tue, 21 Feb 2023 11:09:28 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id y25-20020a170906471900b008d2683e24c4sm3043840ejq.69.2023.02.21.11.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:28 -0800 (PST)
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
        'Atish Patra ' <atishp@rivosinc.com>,
        Anup Patel <anup@brainfault.org>
Subject: [PATCH v5 7/8] RISC-V: KVM: Provide UAPI for Zicboz block size
Date:   Tue, 21 Feb 2023 20:09:15 +0100
Message-Id: <20230221190916.572454-8-ajones@ventanamicro.com>
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

