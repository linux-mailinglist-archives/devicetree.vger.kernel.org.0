Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39E5B39BF0A
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 19:45:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbhFDRrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 13:47:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbhFDRrn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 13:47:43 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF989C061766
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 10:45:56 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id x6so14782585ybl.9
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 10:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c0jQ6LHez3RP/lYmI6QWvp1COoXeDJHGCUAVhBh30og=;
        b=Jx1r9kp4r9/zhm4TcUeJT+VVRZUq4s3fA2n9RSvyPDQXw0s90sMnIKosVRTaF8XqY+
         j/xQFmuHwQ9rRiWGFEFqLVZASWL5AONk/LjxaFUdb2Ma1kCbNmIzSwvzs2Js7PTANAZ+
         fD+/W0FxN+q6qi5l5wUYItXR3tePMyCL0gQvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c0jQ6LHez3RP/lYmI6QWvp1COoXeDJHGCUAVhBh30og=;
        b=Nf5OYhDtZVMyNWjhVEe1yBqmtYhuxPp0T+EEeA7Z5KEWbPw+f3mxiUOKkFoVjevsDG
         XwoaiXxmsb/WGJVYsafzLndC1/iDXjGJY4W5nH3Ndk/4OEBT/UhmfQ5lOSMstKkGAJzC
         H5p8pra61pegL1GHMPmiLlcyo2tErXLMPQ6yBI689m1CfSTKOrmMCjQRUg7f5rLW6NUq
         GKUh2MHSjq1RIBAty9oWwSQvqqBQ4hCRo8EqMN+MtuDY8/7m1BrFObIxa8Qcbo9TSFZH
         GnQil/2JDNWLH++U0cI4qRo+sIah+gIVOmEl0KWPG0/RWxoAiM+NVHRAY2ugmwhOx/Qk
         QiZg==
X-Gm-Message-State: AOAM530oIFL8r3lCPh9oGvvdwo9oyNXWTFeCdJa7EGUC0boHXfWVwoI5
        cK0Kwx6hhNeRHqBJiYsjq7LgYsBFviqr+OzZSVfEyA==
X-Google-Smtp-Source: ABdhPJxfm9DOEbJard/RMQCUy0MPuzeYvzBSGuoHAw7M3Mfj6MS7Gxssyf+vELiVDnfj5HxfQ2oNUhuu32kMYCvEiEk=
X-Received: by 2002:a25:1b0b:: with SMTP id b11mr6882729ybb.302.1622828756060;
 Fri, 04 Jun 2021 10:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210604120639.1447869-1-alex@ghiti.fr> <CAK8P3a1TiSNoqUEjTaqPyqnU8d0-p-yZkrsvmXt5fo4Rkfue_w@mail.gmail.com>
In-Reply-To: <CAK8P3a1TiSNoqUEjTaqPyqnU8d0-p-yZkrsvmXt5fo4Rkfue_w@mail.gmail.com>
From:   Vitaly Wool <vitaly.wool@konsulko.com>
Date:   Fri, 4 Jun 2021 19:45:45 +0200
Message-ID: <CAM4kBBK467AZ-qhmtREe9mr_bp3QcCEptQcFAApnbrvPc6bkuA@mail.gmail.com>
Subject: Re: [PATCH -fixes] riscv: Fix BUILTIN_DTB for sifive and microchip soc
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Arnd,

On Fri, Jun 4, 2021 at 3:18 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Jun 4, 2021 at 2:06 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
> >
> > Fix BUILTIN_DTB config which resulted in a dtb that was actually not built
> > into the Linux image: in the same manner as Canaan soc does, create an object
> > file from the dtb file that will get linked into the Linux image.
> >
> > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>
> Along the same lines as the comment that Jisheng Zhang made on the fixed
> address, building a dtb into the kernel itself fundamentally breaks generic
> kernel images.
>
> I can understand using it on K210, which is extremely limited and wouldn't
> run a generic kernel anyway, but for normal platforms like microchip and
> sifive, it would be better to disallow CONFIG_BUILTIN_DTB in Kconfig
> and require a non-broken boot loader.

can't quite agree here. If we take XIP, it does make sense to have
BUILTIN_DTB, since 1) this will not be a generic kernel anyway 2) we
may want to skip the bootloader altogether or at least make it as thin
as possible and 3) copying device tree binaries from bootloader to RAM
as opposed to having it handy compiled in the kernel will be just a
waste of RAM.

Best regards,
   Vitaly

>       Arnd
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
