Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C5C175F9A9
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 16:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbjGXOUw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 10:20:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231150AbjGXOUv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 10:20:51 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A90810F7
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:20:45 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1bba2318546so8301855ad.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690208444; x=1690813244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r/NAzuvfxiEpEq6CMn2lCFVPQSrZGs+fqFSkZbzWeu4=;
        b=l8MB2fLS10a4c8McBUbUrPLQj68WxDBmBHucCsLXqt18rJ//cfoPF273c6bif4bQJo
         FjRt8iQ3f+GyHYdevb0xrgra3HKOo08fhfFhpudghR2jIb5S8Kt0wdQperaiJYwNbA79
         hc2dFq1kHwUTurcukxTFIMgQ3pItNei2F0tZX8k/cfdZl5hEBF+nxLTBjBq4FCDb40vT
         e0pdMqf1JaA36B1pupctPiO9Z4fo+fi7BCJ1vd8te1BqMO59KTKrtKDOMEIXhtdXsCqO
         0983HV3peltiC2P70OSxoENfdYPwk3IkXnUu2l0A/y8j4dayrLu2wt6ku07uTPQf3Ah1
         ZocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690208444; x=1690813244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/NAzuvfxiEpEq6CMn2lCFVPQSrZGs+fqFSkZbzWeu4=;
        b=YL5B8xpv0sS4o2jwFkNeabeV/ilKb7pQxwsqnQxsc3YkYUrv3qoONfFRIH2t3RROsb
         bwtwtotGDlyg9xonkO5Rx7pdTZERSORnPDmVZlNwvdbkoTbt9b4Dn7+C/ToZvzdgihqx
         qCSsXTwRll4Nt0V0GFMHXYbeA6Zl/pSnN+bXCZiOvK8qzbcg20u7yZt6+/p4nu4UyOZZ
         9KwHFo5fLDF6Rfyf1Td+UVpfvWuFYv7qc3eqfTExCSY4bbQxmskdL0rhSFGgPyPjfbdg
         /XxkCxBlti9QDamGKT4hCzV7Z02NMvXU518w0RRGcZN020T91WJP0SUqyXQaMz87P8Zo
         0Qog==
X-Gm-Message-State: ABy/qLZ2XhG1Ud1bEABSkAW+4qcwfFRUmQf4dxeHP4vHyyV1RoezgGvh
        cfWjMDCuhRmW6pQvj4kIVNTjxg==
X-Google-Smtp-Source: APBJJlFqcRGV6PhYOQp/isaMOZE86UMn6cXlnsirdZYD5qcMh6jBsq/3Ca0basWId+/dR/h1hNihvg==
X-Received: by 2002:a17:902:b18d:b0:1b8:b285:ec96 with SMTP id s13-20020a170902b18d00b001b8b285ec96mr11214680plr.23.1690208444428;
        Mon, 24 Jul 2023 07:20:44 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id s10-20020a170902a50a00b001b8307c81c8sm9009821plq.121.2023.07.24.07.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 07:20:43 -0700 (PDT)
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
Subject: [PATCH v3 0/7] Risc-V Kvm Smstateen
Date:   Mon, 24 Jul 2023 19:50:26 +0530
Message-Id: <20230724142033.306538-1-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
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

This series adds support to detect the Smstateen extension for both, the
host and the guest vcpu. It also adds senvcfg and sstateen0 to the ONE_REG
interface and the vcpu context save/restore.

Changes in v3:
- Move DT bindings change to a separate patch

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

 .../devicetree/bindings/riscv/extensions.yaml |   6 +
 arch/riscv/include/asm/csr.h                  |  18 +++
 arch/riscv/include/asm/hwcap.h                |   1 +
 arch/riscv/include/asm/kvm_host.h             |  18 +++
 arch/riscv/include/uapi/asm/kvm.h             |  11 ++
 arch/riscv/kernel/cpu.c                       |   1 +
 arch/riscv/kernel/cpufeature.c                |   1 +
 arch/riscv/kvm/vcpu.c                         | 111 ++++++++++++++++--
 8 files changed, 154 insertions(+), 13 deletions(-)

-- 
2.34.1

