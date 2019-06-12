Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90B2341B33
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 06:34:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729658AbfFLEd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 00:33:59 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:45097 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729650AbfFLEd7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 00:33:59 -0400
Received: by mail-pf1-f193.google.com with SMTP id s11so8806226pfm.12
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 21:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBsKt2KANme/JOaDCF19p+x3nQ6r/cZjZD0p0XOtcRA=;
        b=XR5LMhR4dWhA49NOiuns+aK4QrV/lto9XTcVrVO75nePd55lQKThU0DWL1/fhyhpPQ
         uZqQ0DJjMLAKLed+Jn1qYvp2NrAf4dmQ6YHWcz3wj8Rchmi6ud/YFwKdG1ttdZExwMWF
         NI2E/s8wUgv+GXSy1jtSQSCGn/o6LO7iy8ktQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBsKt2KANme/JOaDCF19p+x3nQ6r/cZjZD0p0XOtcRA=;
        b=QEqLBaado3gaqh0ORsUQ7SXajJ50NoyNvWyTIau+P/j0cfmISMMrZ511ditrCPOGCr
         +zB/iBU1ot35QykyyOzCsMJxt9OZrzaLMs/HImHPAtJQelHr+mfKjz97WRyunTkAPaEz
         cuPfaM7H6SSlQ4pNrGY2MIv4DgkF4bFaRpC5Q4hcjhGp4s895W3gqEVbphXnVY2tjedi
         OXmToBzl9Nrz3lZfiL0k9HvKbTnUwuXvY0qONRASEW9WgY+XmaTOfh5svwxr4n63WyPa
         FF8LKoGqf+rDpcmeG+5fGjUH7xbxs4Bl0ZV8C5Aj62Ji+YIu6ovq3qZAGFiVxoZJeGkn
         9pcw==
X-Gm-Message-State: APjAAAUl8VTFerU+hP9rLwbUV827uEyDjBLLQy6SrbQcV4JEmRMCtnSi
        /zGUBHBIoz9+eN7fgkMGf+LCwg==
X-Google-Smtp-Source: APXvYqx/41bl7EzQ/YdXQSxExzoTiwXpf+pMqfvDDMtli/3cshz845GRC+rnDzNoeKjMdXh1FqX72A==
X-Received: by 2002:aa7:8394:: with SMTP id u20mr72672175pfm.252.1560314038527;
        Tue, 11 Jun 2019 21:33:58 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id k8sm15285998pfi.168.2019.06.11.21.33.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Jun 2019 21:33:57 -0700 (PDT)
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
Subject: [PATCH v6 0/3] add support for rng-seed
Date:   Wed, 12 Jun 2019 12:32:56 +0800
Message-Id: <20190612043258.166048-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness.

Hsin-Yi Wang (3):
  arm64: map FDT as RW for early_init_dt_scan()
  fdt: add support for rng-seed
  arm64: kexec_file: add rng-seed support

 arch/arm64/include/asm/mmu.h           |  2 +-
 arch/arm64/kernel/kaslr.c              |  5 +----
 arch/arm64/kernel/machine_kexec_file.c | 22 +++++++++++++++++++++-
 arch/arm64/kernel/setup.c              |  9 ++++++++-
 arch/arm64/mm/mmu.c                    | 15 +--------------
 drivers/of/fdt.c                       | 10 ++++++++++
 6 files changed, 42 insertions(+), 21 deletions(-)

-- 
2.20.1

