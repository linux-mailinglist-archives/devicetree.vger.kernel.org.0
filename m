Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB10F2D0E81
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 11:57:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726361AbgLGK4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 05:56:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726332AbgLGK4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 05:56:41 -0500
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8127C0613D1
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 02:55:55 -0800 (PST)
Received: by mail-qk1-x741.google.com with SMTP id n142so1894853qkn.2
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 02:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5ia12m9uDX+0LNlAEFwkrOarHwftjJKLgewl2oTIgrE=;
        b=lzzmt0CZmK2Jmd7kyroYw+RWFtJX3ikmVxwIpkx+vZ/gCDKMah0PBZ3pRvKxqo8lN4
         eStRjgjM4ibwnew31RMzb0hOwrT6uiFAFmqPXGWbPGnLbol0VBIpkeSQGAMsmcvQpOll
         n6xniOcxXcDXSYxpEDnLx9saK/zqAazjt5HMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5ia12m9uDX+0LNlAEFwkrOarHwftjJKLgewl2oTIgrE=;
        b=GIETjkVqOHKk5RTojPfnCrYkyZCrGQyFpr54NNLU5NStinHc6S+nKNPcmeH88f76tE
         pQ/5FiBqiuLrxZgoOQCwo0+TBkynBrDg3U/MEBRSwsCSvP3RhNgs4XfsQ86LexzoBN6b
         j6LZFso7ZrPtLzKVK9v6JIpidPuRcgmRunmJM5yJnZqg8klgc6c+Va3L8/GaCLJ04YGA
         VgEqoOAFF2AO6PBu+5w0NbmxJoHKB8kimtRHibEUbuXbtXpOUgR14EBdD4C3Di+3J40Q
         +qnjDRAAsTLXhsGvZFrBduprVy+ASf4EVmCBMlgLIr2kLh3t95DhAilqhPpEGErj59V2
         perA==
X-Gm-Message-State: AOAM530///AOaYkhjL4uVCKmsvQUqxgcsQ944Ethsd5TP9iI+v0NCVTr
        Ko+EAC8dsAF9LCz1EEc0MrXuSajEEKEjaRWG/2Zimg==
X-Google-Smtp-Source: ABdhPJz5LN12jxi1tLmMe+C2qEWEij3QetZAtETxe63ezdGfiuGGd8prNeyfZ8+OZ//s1SFdN8nthpHV6T5ni1agtns=
X-Received: by 2002:a37:8681:: with SMTP id i123mr22759135qkd.54.1607338554890;
 Mon, 07 Dec 2020 02:55:54 -0800 (PST)
MIME-Version: 1.0
References: <20201129110803.2461700-1-daniel@0x0f.com> <CACRpkdYEzFYw=CbBFCs9=DfarsCQKD0zA2WvE95nF8ehA_2i1g@mail.gmail.com>
In-Reply-To: <CACRpkdYEzFYw=CbBFCs9=DfarsCQKD0zA2WvE95nF8ehA_2i1g@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Mon, 7 Dec 2020 19:55:44 +0900
Message-ID: <CAFr9PXmx1XZmVOp8mLygnDUfEKPpo6=ZQPMKSCnZf0i23mNqVw@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Add GPIO support for MStar/SigmaStar ARMv7
To:     Linus Walleij <linus.walleij@linaro.org>,
        Arnd Bergmann <arnd@kernel.org>, olof@lixom.net
Cc:     SoC Team <soc@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

On Sun, 6 Dec 2020 at 06:43, Linus Walleij <linus.walleij@linaro.org> wrote:

> OK finished!
> Patches 1, 2 & 3 applied to the GPIO tree for v5.11.

Awesome! Thank you Linus. :)

Arnd and Olof: Sorry for being a noob.. Is there anything I need to do
for patches 4 and 5 (device tree bits)?
They are in the Linux SoC patchwork.

Thanks,

Daniel
