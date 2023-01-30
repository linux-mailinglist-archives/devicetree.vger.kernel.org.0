Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A62C8680CBF
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:01:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235725AbjA3MBk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:01:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235748AbjA3MBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:01:39 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 757493C2E
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:01:38 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso7966017wms.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=SFsYC07kkEAsM5ezI637XK7r6EP24rFpHjQDJirzqndLASND4JcBszbw101RJx8KMA
         2k9Y5udjbrlfCzEbSVG1CZFvfFFsuygRjTvGgPzwRSJhK5CcHKfjTN82FjCvwMfx6+gW
         bnG8PJErk0mj/HjxGD7ZfO01mryty0QxmBINhoo7KzhR/l705ZbQb8HvwrqQCU+0a/Ql
         rQf2YFZJ7EtcV88IrHHViz1kohZQlXjeREApatjpndnzsPPZtyewPh2KY54f86toFpDt
         I/IXQJHebnwYJE1HS9fjtJPt0lT/mYVRJFVUZgJnRyYK6WaCo0apHSTFECZl9IPXig4Y
         ASoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Z6tZFFE5BTtnAERh23ZFuGlAMKjWB1LeNlstGrShuA=;
        b=encL8lMF7a5Q8WWvms5W1wLBTcCaF8AJbBbHLTOwvlEDjnCliIM3cTfR0cHg65v84j
         LUufQg7cswX8/kN7tCovCAhuaFG717APgR6cMv9TDcN+xiErYIsk45myIzTehFYZKTQt
         cJVF3YHgEd+f+1kaCJSFz2Yk7xSa1TkcJ0b5Aa0Wg90mjgt3g5Hv3I/OyNpQ1yBDEz//
         l/lTu1vRW2nQLD1w2DQ9MLjo2Ny4JtvoarHRrtZcLWfVwEit1MixgROUE9z6i/oAg5qB
         kDlC9PyYVQa8fRlLRXrkSI2ipL6o5VpYcZNno/Cg56c2te1LQIH1fF9BeZaTP5zG/Dam
         Ct3g==
X-Gm-Message-State: AO0yUKVZxCaZk+ue8Bzbj0xhueBJgxokZHNPFgMn/79pge3NLQpbr/Xr
        Y1D1Ei35VnEvO+laNACahs6Xhg==
X-Google-Smtp-Source: AK7set9r4Pn8t4fjkHw8Nhn2tBSaPoxXGKLIPE9POwVxQLE7iNsvf5JAg3InByEUmn8SPLvX0+24Hw==
X-Received: by 2002:a1c:7210:0:b0:3dc:46e8:982 with SMTP id n16-20020a1c7210000000b003dc46e80982mr8145087wmc.19.1675080096955;
        Mon, 30 Jan 2023 04:01:36 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id j14-20020a05600c130e00b003dc541c4b13sm4353193wmf.21.2023.01.30.04.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 04:01:36 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Heiko Stuebner ' <heiko@sntech.de>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        Anup Patel <anup@brainfault.org>
Subject: [PATCH v3 5/6] RISC-V: KVM: Provide UAPI for Zicboz block size
Date:   Mon, 30 Jan 2023 13:01:27 +0100
Message-Id: <20230130120128.1349464-6-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130120128.1349464-1-ajones@ventanamicro.com>
References: <20230130120128.1349464-1-ajones@ventanamicro.com>
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

