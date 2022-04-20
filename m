Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED6F2507E38
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 03:34:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358738AbiDTBfw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 21:35:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358736AbiDTBfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 21:35:52 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2EBD2BB34
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 18:33:07 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id p8so479395pfh.8
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 18:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FoHTOogFtEFyi2gNo6Vrdy4zpvF5IOVfK5C2C7jCsAQ=;
        b=MZELzdB6m/N+Tx2B2ifqHAoQt0o7GPvWBNxirhKoqDbWPYy3pyvqNwH5vc4KKtHimo
         tIJgCsRmVYwVmJq8AqCt1MbKzPF50nYZVIZKSgpuF0Uc3lsa5Mpl1BjvcEmtVfBzjcLT
         MJZfUrZY80AGXx+8axdjdEPU3FXBT6/aQosj0HVepLz6DaJjqhD24X6n5EahYw0oXaD1
         y/ryXYBtJjPVSADimqPZXceX6fXJOeNoQRUGdZzzBeIU+iqkZbypTBw7BHWUiyQoSZf2
         r9g4wdgg3jG0s2CtfZ3aHi7Ismv8AcqI/lZpZ7Nke/lZ0o1owmZOKKOgpniMEVM1yiaM
         3oRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FoHTOogFtEFyi2gNo6Vrdy4zpvF5IOVfK5C2C7jCsAQ=;
        b=Ab8Lu7JXtirDWaf8qC9nP/MwzhVkQuNisNYuHNNAbGnKphQTHiWcZiaeQvP5gWyhyw
         RiABRkNJr8LBHeH7NQzQOe8jahi5pvq1KM9lMigVNd+H+4f4LJaNxGDW7Yt5jMdP57fM
         q/WalC6UkjNW4DkgU6sJTrp3e/sdlYcuqoDvdCQedy0J7i3NQZpNtiHY3k06amQhomdS
         oho2jOs6TbtUTFWNYew84ysVqNharvjG1lPG8GIDBCYCyzLYa3mSMaPEOC6qwYKq3Eoi
         vbtnPYKYl0yeFMs307inMx+B9AHoSsHH64R4kPbD1gH8+Lmw+OGecq3t3RnIIUEEFsIW
         kbrw==
X-Gm-Message-State: AOAM533wNnN5iUzST5I2qIKMs0bEuReLswe6PeIRUTaLZAoFTP6ngwu/
        nfXyyUBgdYPyux7SMyxCns9V5Q==
X-Google-Smtp-Source: ABdhPJxubNniBJ0qcUnSZUXfvxlKrtRZAvi6X+saBuEJcQjBtqfiHGpD3lEIBbsx8g8XamIAwcIrLQ==
X-Received: by 2002:a63:e912:0:b0:39d:f8f:ca7 with SMTP id i18-20020a63e912000000b0039d0f8f0ca7mr16851234pgh.121.1650418387455;
        Tue, 19 Apr 2022 18:33:07 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id r13-20020a635d0d000000b003aa482388dbsm2484863pgb.9.2022.04.19.18.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 18:33:07 -0700 (PDT)
From:   Atish Patra <atishp@rivosinc.com>
To:     kvm@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>, kvm-riscv@lists.infradead.org
Subject: [PATCH 1/2] RISC-V: KVM: Remove 's' & 'u' as valid ISA extension
Date:   Tue, 19 Apr 2022 18:32:57 -0700
Message-Id: <20220420013258.3639264-2-atishp@rivosinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220420013258.3639264-1-atishp@rivosinc.com>
References: <20220420013258.3639264-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are no ISA extension defined as 's' & 'u' in RISC-V specifications.
The misa register defines 's' & 'u' bit as Supervisor/User privilege mode
enabled. But it should not appear in the ISA extension in the device tree.

Remove those from the allowed ISA extension for kvm.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/kvm/vcpu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 6785aef4cbd4..2e25a7b83a1b 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -43,9 +43,7 @@ const struct kvm_stats_header kvm_vcpu_stats_header = {
 				 riscv_isa_extension_mask(d) | \
 				 riscv_isa_extension_mask(f) | \
 				 riscv_isa_extension_mask(i) | \
-				 riscv_isa_extension_mask(m) | \
-				 riscv_isa_extension_mask(s) | \
-				 riscv_isa_extension_mask(u))
+				 riscv_isa_extension_mask(m))
 
 static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
 {
-- 
2.25.1

