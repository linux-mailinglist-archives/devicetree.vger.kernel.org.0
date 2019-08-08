Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C35ED8682C
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 19:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730170AbfHHRin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 13:38:43 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:41822 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728020AbfHHRin (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 13:38:43 -0400
Received: by mail-pl1-f195.google.com with SMTP id m9so43671146pls.8
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 10:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
        b=COUDedRwtZm6LlO/ywHqvn2wwXNY3IZTGWBV6xNe2xG4Crw7Fhk7u9L3ANNxa1P98C
         yBSEduSFO4ViTrt+XjUDLtc743ouZ0U/cgE//QoRuyh1NpsIb+B7hKR1H8w+vPmNKqn0
         bAtUGeJahiQ064aUtaeNEwHo3WNF77jbWmfJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
        b=QCzqQdJjQTBR+0CwS/aI97W+NJBv908EOc/Qrirz1xV0VXSqz4lKFWJcUaHyO0CIe0
         pw9/RsG+fP1wEnd08DJ7gt3x5vg7m7tXyCUdDz2dbRT5yi5M5U+DfHF19TVgWOPntB00
         14qoaLmQDyVz3uMuzjlWTcF2zz3h5jePI/ZdHtr9EwBHb6OWdmQr27gk6xo+keG4EFwR
         jh3M0vpXjGGwWAnc0FsBKdwAEKO4Dd/DDL26DrvX1L7cBhDVVzpuDP9xkC6tAVJ+fD+6
         DOXkhLtOlyTIJilEqYK0l4/BnifHeXUbD+ff1U39TR+Rq6TvSigPVtpDiereMDvECYGZ
         nTWg==
X-Gm-Message-State: APjAAAVdo+jsPcJ/VquKN0HunOY9LTkS1wnn21VdzDxKSLsTQlnHtD3d
        4CXW3wP0msi4HYJWkAaK3EGo2A==
X-Google-Smtp-Source: APXvYqzukKzjnXNyRjVrrmKd64p/hrO0VojaqFoqt9ky2UmsMCqng+ge5obvAHGId9pafhXYqfiaiw==
X-Received: by 2002:a17:902:934a:: with SMTP id g10mr15153470plp.18.1565285922983;
        Thu, 08 Aug 2019 10:38:42 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id y12sm105824412pfn.187.2019.08.08.10.38.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Aug 2019 10:38:42 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Subject: [PATCH RESEND v7 0/3] add support for rng-seed
Date:   Fri,  9 Aug 2019 01:38:01 +0800
Message-Id: <20190808173803.1146-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness. This can be used for adding sufficient initial entropy
for stack canary. Especially architectures that lack per-stack canary.

Hsin-Yi Wang (3):
  arm64: map FDT as RW for early_init_dt_scan()
  fdt: add support for rng-seed
  arm64: kexec_file: add rng-seed support

 arch/arm64/include/asm/mmu.h           |  2 +-
 arch/arm64/kernel/kaslr.c              |  5 +----
 arch/arm64/kernel/machine_kexec_file.c | 18 +++++++++++++++++-
 arch/arm64/kernel/setup.c              |  9 ++++++++-
 arch/arm64/mm/mmu.c                    | 15 +--------------
 drivers/of/fdt.c                       | 10 ++++++++++
 6 files changed, 38 insertions(+), 21 deletions(-)

-- 
2.20.1

