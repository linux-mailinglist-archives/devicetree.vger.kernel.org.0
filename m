Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6FBE91DA0
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 09:16:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726851AbfHSHQZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 03:16:25 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:36886 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726845AbfHSHQY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 03:16:24 -0400
Received: by mail-pf1-f195.google.com with SMTP id 129so641216pfa.4
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 00:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E4I0nwbB40pqeWHoV/798x9f0gje8qISbA2ysVwPz/g=;
        b=nKH8wqmjGSa2ybP1nrMEitKF8FD0nmeXRfyTNl2aWZ9u6orHOZerLfF6cVI8dyN53/
         ns2EXlCQSbt15jD3SyExGoFAU3mP0Ug5IEksWy9KuNTa7ImbdIVT7foykXMHqH7dzpBE
         oMEaq6R/1HyNCKI9vL5mKiZOm/BJbj3bFOj6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E4I0nwbB40pqeWHoV/798x9f0gje8qISbA2ysVwPz/g=;
        b=n4ooVdMBz19kwjXh6a0PRzOE3aTbk4PIiqS/E1ehHZqMp5/88ARSMFItMQu2mt3zGC
         j9JjWzJ+GLHHTilCjdTla9G7vx5NguAp0Baim1uLbBOtmYSSsACOciJURBYL3roUJd9b
         s7ZHQxaqSOzs7ikftpWnWafnGF7gTAA4CfRv8PFVSeSXfJjxz5gNjcYuzlrsVt3DQa5r
         H+oH/3jiCOhak5hncuUM4wKXGK1o/lbhpBcjixBoCNmxSNDTXjHwnrPxsa+/lYW59Ac2
         f6vqweAXAWx0uHmjispijsiJ1w/Zr+GyWkCoytboBGuE148+FPAMNgcAIGzrJ253EbsA
         pjYw==
X-Gm-Message-State: APjAAAWt70guinnx2NpuBu8LaqFylGfZc5iGSO/ATSFheh0t66xlGxsH
        RwLUHQTyR5N4a2wN1KG2nTCJPw==
X-Google-Smtp-Source: APXvYqzQ5bCb1eZQOlrkKJIooCdpG5H+MgNCs58SYiUsllABkx5wib5s+woQ+/e0gQTMuER2i7x9AQ==
X-Received: by 2002:a62:5883:: with SMTP id m125mr22570389pfb.248.1566198984026;
        Mon, 19 Aug 2019 00:16:24 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id y9sm14691341pfn.152.2019.08.19.00.16.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Aug 2019 00:16:23 -0700 (PDT)
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
Subject: [PATCH v8 0/3] add support for rng-seed
Date:   Mon, 19 Aug 2019 15:16:00 +0800
Message-Id: <20190819071602.139014-1-hsinyi@chromium.org>
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
 drivers/of/fdt.c                       | 14 ++++++++++++--
 6 files changed, 40 insertions(+), 23 deletions(-)

-- 
2.20.1

