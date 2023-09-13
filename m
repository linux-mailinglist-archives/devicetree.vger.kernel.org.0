Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92EEB79EEA8
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 18:40:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbjIMQkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 12:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231168AbjIMQjs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 12:39:48 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C0D211C
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:39:23 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c0ecb9a075so52757625ad.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694623163; x=1695227963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ef4CImEmSIW+76zVD0vc94sfYA+dioK1AcFoClQNfbk=;
        b=AkDq/RPNI3FYNuwogz/VBTxlocPrNvzs/XAzxu4/20EcBt4MjBSIcBrryHJ9yHcWul
         aF3Vv37F8HpNk/2B5NNPtbWsRRch1++moEjb0Mrzcd3fcGpA09fS0r74Bxi9u0t/mtk2
         7vc7uhxl7KRh5gbLq1d3p1LAgaay0UL/AIkgKyy0ieA5hwkgCFlCHqwuClOU5N0N9ZWP
         SDMLUhe54/6+PANtXYoNJFQGH5TC/y/Y7VSZ0uIEFd/JFsJ8rH26bTnrmjw3fyVZSbRh
         kIYQfkoBIdaTXH+q65uw6CVtIATIae1EgJyLx9wn1IFEj/RKX9C+1oithCuJPiiQxHsH
         1ZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694623163; x=1695227963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ef4CImEmSIW+76zVD0vc94sfYA+dioK1AcFoClQNfbk=;
        b=bwQypXC51Egr+yA2h/VwmaOv6gQGLfuUK/Uh2vr897L203ZzXtaxiKhxdvmWNoLYG7
         JEavb8w8JfMccIXzcj2Soo1Pa4kTIy/ftm1FGMkdP4mkjTVL/6+ksTLJh3tDqvSKam6n
         rwFV3P/QsjzhpKuNFlpHCJkkVeHeiMeRkY+HwFRbhDgbPiae+oM/Iwh/gz7w2DGqxDW9
         fyj+w6ayNAjXXBiDrGSLRj7AjJdp6Ey8j+tvRVsqVmCiWcxgYe0V+4v69poRapTCT4Zc
         0XvT1B2KXGolNqHIE4QjV4v2EPYT/9fB7xOisyf/yu3MDljJ4i3lSlh0EyrM3n0sXWJX
         Zm5g==
X-Gm-Message-State: AOJu0YzA4vLg3wxsxkxmN+Ixn38x04sgb1VlwRVOQMbmyIO0XLAe4ARE
        JNrAfhIG6Qn4duQ4YcyT30iJiA==
X-Google-Smtp-Source: AGHT+IFX63s8+lbuOPL6hrmi/VfFXIoj5dxeyqlDEq+RWNNHGS384jWicL6gUwaa36DGhTDlbZSMIw==
X-Received: by 2002:a17:903:2285:b0:1bb:2ccc:c321 with SMTP id b5-20020a170903228500b001bb2cccc321mr3826965plh.48.1694623162924;
        Wed, 13 Sep 2023 09:39:22 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id je15-20020a170903264f00b001b243a20f26sm10577756plb.273.2023.09.13.09.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 09:39:22 -0700 (PDT)
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
Subject: [PATCH v5 0/7] Risc-V Kvm Smstateen
Date:   Wed, 13 Sep 2023 22:08:58 +0530
Message-Id: <20230913163905.480819-1-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds support to detect the Smstateen extension for both, the
host and the guest vcpu. It also adds senvcfg and sstateen0 to the ONE_REG
interface and the vcpu context save/restore.

The motivation behind Smstateen from the spec
(https://github.com/riscv/riscv-state-enable):
"The implementation of optional RISC-V extensions has the potential to open
covert channels between separate user threads, or between separate guest OSes
running under a hypervisor. The problem occurs when an extension adds processor
state---usually explicit registers, but possibly other forms of state---that
the main OS or hypervisor is unaware of (and hence won’t context-switch) but
that can be modified/written by one user thread or guest OS and perceived/
examined/read by another."

Changes in v5:
- Rebased on latest linux master

Changes in v4:
- Update commit description for patch 1
- Rebase to kvm_riscv_queue
- Add reviewed-by tag

Changes in v3:
- Move DT bindings change to a separate patch
- Move senvcfg/sstateen0 save/restore to separate function

Changes in v2:
- Add smstaeen description in riscv/extensions.yaml
- Avoid line wrap at 80 chars

Mayuresh Chitale (7):
  RISC-V: Detect Smstateen extension
  dt-bindings: riscv: Add smstateen entry
  RISC-V: KVM: Add kvm_vcpu_config
  RISC-V: KVM: Enable Smstateen accesses
  RISCV: KVM: Add senvcfg context save/restore
  RISCV: KVM: Add sstateen0 context save/restore
  RISCV: KVM: Add sstateen0 to ONE_REG

 .../devicetree/bindings/riscv/extensions.yaml |  6 ++
 arch/riscv/include/asm/csr.h                  | 18 +++++
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/kvm_host.h             | 18 +++++
 arch/riscv/include/uapi/asm/kvm.h             | 10 +++
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kvm/vcpu.c                         | 70 +++++++++++++++----
 arch/riscv/kvm/vcpu_onereg.c                  | 41 +++++++++++
 8 files changed, 152 insertions(+), 13 deletions(-)

-- 
2.34.1

