Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B06645DD34
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 06:02:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725848AbfGCECC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 00:02:02 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:41786 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725270AbfGCECC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 00:02:02 -0400
Received: by mail-pf1-f195.google.com with SMTP id m30so513074pff.8
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 21:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
        b=ldPEePY/CSRIya7EensPhLGU4lCTQEgvlymGX4fulaJJueDcrqAClpz98u8ShCieOH
         wQuKqaTBPgis3hItv/X/ASArP5S9nZGG3UrQCadBI24PjbwGjqciD7qCcFJXXTFOWQJw
         vPnVAznon9sBK9yHagHb33xIyG2/HAT/2qrpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
        b=P2yMwkfrZSNLNChu2pqXicjjle9yNiYFlTdWYZLzJT1KpHOiGD6bR6ePeKgM6sSUEe
         akxqhwU/EAeWEsAbQvLwuwYQdljgxH4en3ToXu97jCEFIlygDxB8uv8jsMQ+Xw4osyRv
         wCsIMQi0qLN0p4xI0xSOSFbod/AWgI1DyUXF1efIjV8XOtQ0TdD2ikR/uFEi++MISTSc
         JpaNJuN3F5quvWsO36UB8ruNZ3kfc2mskKe8NcRfo2eN57Ib5R5zCrI843iFzBTiqABH
         dho/kdhYuscdzGoJtvo6pKjAAvnw8m9sJMelRJHaqIOSb93LTf2qwTjUoARJOjfY4RE3
         j43Q==
X-Gm-Message-State: APjAAAUw/wTSqvcx+f4/+FXV2JCtXidLXatp+OhC0MRWOTJzzDU/GZsX
        SUOzHmjZg6kGJm26K88/iYpQWQ==
X-Google-Smtp-Source: APXvYqz6wOPvZSwaSd2ffeykekDPUmq8VZpbTmT3TXJqMwHRgWoE5B6ncXviHzbITcLuBwiXeYDhdg==
X-Received: by 2002:a63:570c:: with SMTP id l12mr35802901pgb.25.1562126521378;
        Tue, 02 Jul 2019 21:02:01 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id w16sm608327pfj.85.2019.07.02.21.01.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Jul 2019 21:02:00 -0700 (PDT)
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
Subject: [PATCH v7 0/3] add support for rng-seed
Date:   Wed,  3 Jul 2019 12:01:33 +0800
Message-Id: <20190703040135.169843-1-hsinyi@chromium.org>
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

