Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C41C66AC822
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 17:35:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbjCFQfS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 11:35:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbjCFQe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 11:34:56 -0500
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F40483B0E5
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 08:34:23 -0800 (PST)
Received: by mail-ua1-x932.google.com with SMTP id v48so6872523uad.6
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 08:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1678120410;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvApvSQPHB3PWpjKondY69ytQhcKZi3i19/amC3x9Y0=;
        b=fZTqtDBGbeUdr9LhD6WLJ9SKEFZV9zc2fFUQaaCMkaWpH8XBQzcQ7hPVnwcaq0SIWB
         mw90vDe23Rbf1BmQ0Ccl7vlKyP9/BJ1yDq2B2UuhOIz7PB/ESoDdltw0UuVCqAeIwpwy
         XS/gsuzhpN0Utc6Lne2Qy2c2hbNxXjcOQGIHkbYHn99VN1AY9moNrsWivJhDpzHC72Pv
         WuHyVU/lgG9ipSnrVv/pxZBpuhQRFgIhGIMc6wbXCC1LJSTeZwLBG8vBuvgE9Rcr8tIA
         6ewFro2Ytvjzw1srqIcspp/h6Z6t9dxi4VewrzkdlwQASivLlNXs6J1DHz2xNO4FOgaG
         LAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678120410;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MvApvSQPHB3PWpjKondY69ytQhcKZi3i19/amC3x9Y0=;
        b=SM3EhOkuONLPBwAmTPILZ0mo3mEM4G/5V9TPrdiqotf2iE/XvheoGsQFte6S9NDU0q
         0u40QMdLToFIoO8xhWeF6cK3glWSQoipMcC7dtQZbNMEu5RXBrMM4k8oJSGfv8TC6d4t
         QzA1dNmE5fuEQ86biZMVoEiZd/yn63vFCbNFEwExk59AUlkV6qEADsedTPU1w0vZPduD
         MtE/I5z00+kmfuL7twA2hErlOEYANCUYGHLsyx3mTWC61OcHxPf73bMaSDvBYb/BvRnX
         Qbn71haPrlt7NSa8KKCarCZSc5IGMHpIu1HMPpZG0hHQeOXY5dSQYOHLZo56A/rE8Ipc
         LMmw==
X-Gm-Message-State: AO0yUKVf+ufO3xVUOQ2n77lduA8c7xb/gZoxiED9bpwZhlB/m/ryvXIn
        rBzYIyySRc+pofhTxjMWaB6C2DHLcdE7P+30rWiuj+hOGwif+VGn
X-Google-Smtp-Source: AK7set8lpZupzBC2wZxG8SF0D7v87NfGH9XR/gLCdfzuYWDFiF+Q9dg678R/UHm6bKolSv8rgGNbS0W1W68qRNi9xOo=
X-Received: by 2002:a1f:4a81:0:b0:410:4a2c:1e9a with SMTP id
 x123-20020a1f4a81000000b004104a2c1e9amr6555050vka.1.1678120410113; Mon, 06
 Mar 2023 08:33:30 -0800 (PST)
MIME-Version: 1.0
References: <20230301082552.274331-1-alexghiti@rivosinc.com>
In-Reply-To: <20230301082552.274331-1-alexghiti@rivosinc.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Mon, 6 Mar 2023 22:03:19 +0530
Message-ID: <CAK9=C2XAOKbyrbOnDP1GzW1VyO-f-V-oEVcp+PhGHeHKFh4C6A@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] riscv: Use PUD/P4D/PGD pages for the linear mapping
To:     Alexandre Ghiti <alexghiti@rivosinc.com>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 1, 2023 at 1:56=E2=80=AFPM Alexandre Ghiti <alexghiti@rivosinc.=
com> wrote:
>
> This patchset intends to improve tlb utilization by using hugepages for
> the linear mapping.
>
> base-commit-tag: v6.2-rc7
>
> v6:
> - quiet LLVM warning by casting phys_ram_base into an unsigned long
>
> v5:
> - Fix nommu builds by getting rid of riscv_pfn_base in patch 1, thanks
>   Conor
> - Add RB from Andrew
>
> v4:
> - Rebase on top of v6.2-rc3, as noted by Conor
> - Add Acked-by Rob
>
> v3:
> - Change the comment about initrd_start VA conversion so that it fits
>   ARM64 and RISCV64 (and others in the future if needed), as suggested
>   by Rob
>
> v2:
> - Add a comment on why RISCV64 does not need to set initrd_start/end that
>   early in the boot process, as asked by Rob
>
> Alexandre Ghiti (2):
>   riscv: Get rid of riscv_pfn_base variable
>   riscv: Use PUD/P4D/PGD pages for the linear mapping

I tried this series but it is getting stuck after reaching user space.

Does this series require some other dependent patches ?

Regards,
Anup

>
>  arch/riscv/include/asm/page.h | 19 +++++++++++++++++--
>  arch/riscv/mm/init.c          | 28 ++++++++++++++++++----------
>  arch/riscv/mm/physaddr.c      | 16 ++++++++++++++++
>  drivers/of/fdt.c              | 11 ++++++-----
>  4 files changed, 57 insertions(+), 17 deletions(-)
>
> --
> 2.37.2
>
