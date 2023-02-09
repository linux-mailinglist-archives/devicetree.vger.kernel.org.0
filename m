Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A17FA690CE8
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjBIP0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231267AbjBIP0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:46 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CBBB6185
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:44 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id u21so2434884edv.3
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=MfRJdMTAHj5+JJRQGofZ32uOas7iRCdR8tHF/yrvxQYPDbC6OaM+RwXjiXD7/9ocBc
         Hge/rnFAvW44scWIKVn/wGhW9qPR89vZ91M2KeY1rPbFHJLxkHnK5O3eUaPnXT0RW34m
         ADVTu/E2h34e7G1jQlwdxPvZq6vLkaoX2C1E3MsbNNNFPZBa4cTrWUhreTyq7bw7Y/lB
         JlvCxWwzg4hyufzefxwhBQUgxvSzgydjJ0CmWxRbqfJcBsykqzpbbjsLqV/jQmFW7E9Q
         g6+hBU33VIXt9BjfuDF5djj4kBGKZMcDhKDu0H98EIRZe4I3bxEevYP78bHiK5RmYEYs
         0u9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=WjgiIRZzi38vUksT2vzEZX6HLJZYdA+MuaSUaze2pU9KGYLRaqDaR9KUiUSHJnf2w2
         bwEU4FdNBIM3WkSd82IA3o0Qn4/DBJAobLiiudMjDnHbFvDEZcib71ZV2mWkpXRcUjes
         2kEMT2bN+mhODcxrSqZzjYxUYrEAdV7hXbl6TfEwXEAoM5WY12aR/dyKF/UhCWTRzK3j
         ITV2j0P+/dnwzDwwTj7Yak/sETvgrRGnClnSWkquT1hNaO+ccXPkepoFQthr657sK9CV
         w0XrF2sema+wyDZyhVHSHfvbnWtbNASa5hLSIU7iATyDBMG1dLAv+aeHNiyPbV3AjGL1
         Rp6w==
X-Gm-Message-State: AO0yUKUxhXOQh7d9xCCxefTh6Q7E2An2BF6rJhEg4V+6aSPEH/W0LfII
        siQN9YHRkrWin+ucDpn00oslTg==
X-Google-Smtp-Source: AK7set+wpnd01LOEUonPTuImhSfFXIsbYs/b88fzwjAmEzUc0jZtT+PCnTayBEqgczGaaZE+1WKvHA==
X-Received: by 2002:a50:c05b:0:b0:4ab:2033:8c55 with SMTP id u27-20020a50c05b000000b004ab20338c55mr1781619edd.33.1675956402823;
        Thu, 09 Feb 2023 07:26:42 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id s6-20020a50d486000000b004aab36ad060sm891945edi.92.2023.02.09.07.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:42 -0800 (PST)
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
Subject: [PATCH v4 7/8] RISC-V: KVM: Provide UAPI for Zicboz block size
Date:   Thu,  9 Feb 2023 16:26:27 +0100
Message-Id: <20230209152628.129914-8-ajones@ventanamicro.com>
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

