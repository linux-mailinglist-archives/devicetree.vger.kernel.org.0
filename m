Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3EB2763076
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbjGZIu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:50:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232388AbjGZIuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:32 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4722961B6
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:03 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1b9c368f4b5so4923605ad.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361043; x=1690965843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DQc80XoWnWN+d0bN0a57A7yXCEucxsJNa3airtwPdzU=;
        b=Hp2YtMOJInODfh2RWJnZcs3r3BCbH0ObrksVLi76QalIoUjE9Ky2QLTWtluMnS07Lm
         cy9jHRYtAxMVi2aj59ILj+OQVqCHVarW2HTPIjg7wVuwjWsM1ZXLehF+9UE3DnnU14cf
         iWQGUhyt6+I233gVjENypM7bBVS2xSSuB+r3FVOII6Pmjz1S/wZvaI6WOlbGJa3dJQII
         fLy/j+uS8jAPTgadIJHcyPFNtU4zMhNFR7lZfUq0Rt8KlRZE1pAwPkQGoK2ds0kPUlAH
         PJ9oGK/kV1RKnchodGEDyymE5qjRJmfvgdBssBj3x8thUq48AM3BV2zuX2DUtRlSQmHG
         Zj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361043; x=1690965843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DQc80XoWnWN+d0bN0a57A7yXCEucxsJNa3airtwPdzU=;
        b=fdAm50FLvUzQ6dlYD40fCYmRVG35HhMHN8iEbRKKLc8FAzVyNCYFdtFW4yxClhEb9E
         /NO2/gBxT4bHIUwiaQWd0W8oePFrRQahx7Ih2RNhtZeNZ3d6/LVsbL7mYmr+js2NFCWC
         japmdsa/V9riyzTU2u0kW1WR3fN8DokDmLJcJ5hRZdeqEW3IGFzVo26WR8otZONX1z7R
         E5CzlXzTN1ex15dk5lKtrZNHn4Ej4wKJRGHC3xUpLUIc51zMb0xbpzZ0ouWTyubOvDCQ
         NXAFipYA51dlVFf5nqx2DWGoCK4B3Jn9xL2rKx7bD2Ukt+F6O+x2KN+hks8ymQqQKYBH
         pWow==
X-Gm-Message-State: ABy/qLbjdw5hzJV/v9i71X04blCBTojRncm0Qg9T6GAk9nS+848ho+xU
        cAum3DEF1oL78yS0eSpTxxZ3Mg==
X-Google-Smtp-Source: APBJJlExZpncboZpnmSU/bDA6WhjsS+diGAbylKBltrvAwOAn+i5mgN5Gq5g82Zb6GypEbpgJ4Kldw==
X-Received: by 2002:a17:902:b18f:b0:1b8:ad90:7af8 with SMTP id s15-20020a170902b18f00b001b8ad907af8mr1606145plr.17.1690361042634;
        Wed, 26 Jul 2023 01:44:02 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:02 -0700 (PDT)
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
Subject: [PATCH v4 0/7] Risc-V Kvm Smstateen
Date:   Wed, 26 Jul 2023 14:13:45 +0530
Message-Id: <20230726084352.2136377-1-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
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
 arch/riscv/include/uapi/asm/kvm.h             | 11 +++
 arch/riscv/kernel/cpu.c                       |  1 +
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kvm/vcpu.c                         | 70 +++++++++++++++----
 arch/riscv/kvm/vcpu_onereg.c                  | 41 +++++++++++
 9 files changed, 154 insertions(+), 13 deletions(-)

-- 
2.34.1

