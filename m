Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B14B488B93
	for <lists+devicetree@lfdr.de>; Sun,  9 Jan 2022 19:21:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231933AbiAISVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jan 2022 13:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234269AbiAISVJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jan 2022 13:21:09 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8D2C061748
        for <devicetree@vger.kernel.org>; Sun,  9 Jan 2022 10:21:09 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id f8so9309231pgf.8
        for <devicetree@vger.kernel.org>; Sun, 09 Jan 2022 10:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=GuQcnVKZs9OOggPRZPyjeS2JFVj5SyDZeTLTOgzmibc=;
        b=v+DqREMZeAS3AJzRTkkQGsUqb7r17iWld5zVyc0OitoAV8bDLFDUle9YjS3Bu6cqdA
         jqASO+WkKOOfOl9kqGRmmqEcZKBTTvemUTxd0zob3ta1vap8uih9XHuZgx9HQ14O2scs
         F3+Q27CC/F/bq4WHNC58SXNppftWNcNGAA5iuxZJ7jdoF7eeL5gpxXCCfflSk0ED/2M+
         hmuKPzuxc3hiJhg5jw6bwyWqZJS4PC8ynTsz932TZnbArqn+Mfrie1eA30QiGrCUxxiU
         zCEYQddpYsLhYrGZPKW81/7eALxH++hZGSXJ5tG97zpzXQK+BGZKllET+N3ouekCGHCO
         +80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=GuQcnVKZs9OOggPRZPyjeS2JFVj5SyDZeTLTOgzmibc=;
        b=qst4tRL7ilAJJoZl6v6KmPa6nzv8wLBfmyNOPTbduasm8GdJPwxxIEcTCwgOjsoTib
         NUdy+uS07wFyM5qXsUR9QDKZbzok6lMbB3vrp0zF8rO6bt3I0UyhwTdZd/PfnF6Xmorx
         U22hZxiIlPr80D8Xp8lhXW+HMFpHkZ1uLYNlKZpL+zAMTtYYHZPLVWWocoRlrbwOJZBz
         nqsNWUpis7t/cHNqtezLj5/M/OEGKuxRao8YqBdarO6ZEcVMHae8ohvc/UvOl/LtcUCF
         VmBS0EFjbjUWvsLwusEkJzeBzHR0EPounVYMYYcny+3u9RS3v8+BZEJ+Jswy5midQy2B
         YhhA==
X-Gm-Message-State: AOAM530sOSnn7NWhzXVBhQywfdu8oAkZu67bh7mpU1mf/bPoHdbD0xJ5
        LcxE+EEBHhSw8XKubGLKbP1bew==
X-Google-Smtp-Source: ABdhPJy2Pmouc41IHjgPzgPIjiPIuc0y4eMUaoS4kwPuVVXJSUTmYzSVxP/OIDeH88SwJzYaOOSgwQ==
X-Received: by 2002:a63:9e01:: with SMTP id s1mr1483035pgd.45.1641752468921;
        Sun, 09 Jan 2022 10:21:08 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id f11sm3408768pgb.43.2022.01.09.10.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jan 2022 10:21:08 -0800 (PST)
Date:   Sun, 09 Jan 2022 10:21:08 -0800 (PST)
X-Google-Original-Date: Sun, 09 Jan 2022 10:20:41 PST (-0800)
Subject:     Re: [PATCH v3 00/11] riscv: dts: Miscellaneous fixes
In-Reply-To: <cover.1639744905.git.geert@linux-m68k.org>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
        robh+dt@kernel.org, damien.lemoal@wdc.com,
        lewis.hanly@microchip.com, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, geert@linux-m68k.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     geert@linux-m68k.org
Message-ID: <mhng-4ae7dd75-5f56-4043-bef6-99fe3463b3a1@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 04:49:21 PST (-0800), geert@linux-m68k.org wrote:
> 	Hi Paul, Palmer, Albert,
>
> This patch series contains miscellaneous fixes for the DTS files for
> RISC-V platforms.
>
> Changes compared to v2[1]:
>   - Add Reviewed-by, Tested-by.
>
> Changes compared to v1[2]:
>   - Add Reviewed-by, Tested-by,
>   - Move mpfs refclk clock-frequency to board DTS,
>   - New patches "[PATCH v2 06/11] riscv: dts: microchip: mpfs: Fix clock
>     controller node" and "[PATCH v2 11/11] riscv: dts: sifive:
>     fu540-c000: Fix PLIC node".
>
> Thanks for applying!

Thanks, these are on for-next.

>
> [1] https://lore.kernel.org/r/cover.1639660956.git.geert@linux-m68k.org
> [2] https://lore.kernel.org/r/20211125153131.163533-1-geert@linux-m68k.org
>
> Geert Uytterhoeven (11):
>   riscv: dts: canaan: Fix SPI FLASH node names
>   riscv: dts: canaan: Group tuples in interrupt properties
>   riscv: dts: microchip: mpfs: Drop empty chosen node
>   riscv: dts: microchip: mpfs: Fix PLIC node
>   riscv: dts: microchip: mpfs: Fix reference clock node
>   riscv: dts: microchip: mpfs: Fix clock controller node
>   riscv: dts: microchip: mpfs: Group tuples in interrupt properties
>   riscv: dts: sifive: Group tuples in interrupt properties
>   riscv: dts: sifive: Group tuples in register properties
>   riscv: dts: sifive: fu540-c000: Drop bogus soc node compatible values
>   riscv: dts: sifive: fu540-c000: Fix PLIC node
>
>  arch/riscv/boot/dts/canaan/k210.dtsi          | 23 +++----
>  .../riscv/boot/dts/canaan/sipeed_maix_bit.dts |  2 +-
>  .../boot/dts/canaan/sipeed_maix_dock.dts      |  2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maix_go.dts |  2 +-
>  .../boot/dts/canaan/sipeed_maixduino.dts      |  2 +-
>  .../microchip/microchip-mpfs-icicle-kit.dts   |  4 ++
>  .../boot/dts/microchip/microchip-mpfs.dtsi    | 60 ++++++++-----------
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi    | 40 +++++++------
>  arch/riscv/boot/dts/sifive/fu740-c000.dtsi    | 14 ++---
>  9 files changed, 72 insertions(+), 77 deletions(-)
