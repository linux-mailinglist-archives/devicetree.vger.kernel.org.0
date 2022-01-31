Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1B274A3C4A
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 01:32:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233085AbiAaAc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jan 2022 19:32:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234753AbiAaAc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jan 2022 19:32:27 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74AD1C06173B
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 16:32:27 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id w81so13319208ybg.12
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 16:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ids2P9zdNRZ0i8dcrt76jILnjHIJTXIWEZONpz4utdg=;
        b=MF+8Mj+YUU1xTY3VkpGuAwciEZNBJadB6L7lfLpH0h/EDUCspIV4gJL5vC/HtbvI2w
         c69XZLAc8unI3PNck/RJDavlF8zzWLjnCr01JyCfky2HlG3O5gt+V+38df7d1SZIP1sk
         dGNe8TIHgmfMwjcp5c8MIL1f5Cy2R1no+gsa8Ueb0gIrJtRDtK51hBsA3Q8vMahUigGu
         cYbp49iacZ0wekkZ8kBRKwWi2ZPaLmL1MSg4SiijrvKAHkqYdxWtJ9ed6T1aaRSMz2vQ
         n/iLRAfQJKIaw8cWmaP7duCI7qwwztr9FlMblEIEg8eXFwZ8L+iFcnwmi6UDMWX1Ooxm
         pHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ids2P9zdNRZ0i8dcrt76jILnjHIJTXIWEZONpz4utdg=;
        b=cTuHv84ftxjpBWLgCF+gDByJLlIKsaZU2w5V8s7AIzIS0gSeRhyrJmAVRW9zvEpZyI
         pd98hMztGYgC3M+GqmTNAos1qDfvAYGFD2KZ5RkYrNmQ+sWXryO8Zm35/mBMUik9+L0/
         dfrqch+P+Z+RRjd7vjIijAdWA/aR53MtwRce1e2PMyeYJgMKe16IzINacvM+lAyi0/Ds
         FS2BSQ79vjZQ/a71q0D8jhQFdQsEToXcD6VcsWdUtqvEhwZsaR1zQsYbqe4h/sVlqu81
         Vqadqze/v5LZZmM1TamPf76DdIRvFlPgFoSIfNCTMNLlJZl87SUMCkdhJA95regPOV6P
         r2XQ==
X-Gm-Message-State: AOAM5304zyl+64SwBj7OR2srCvJtKpiOpSOkjfPzGa4GmAVPGSqkzKgX
        KIAkDTpBMWGuzNjO9ECb7m4PL0btIOIv4Hl4IaQ4+g==
X-Google-Smtp-Source: ABdhPJwo2QNY3IDvE9KFTcTr268nBBKnNiLEJJMMR1jfg1SUwEVAWR8tYNcUicd7x2P6m3dZ70a9gDetUAJ/mLXhIIU=
X-Received: by 2002:a25:8011:: with SMTP id m17mr26212682ybk.284.1643589146392;
 Sun, 30 Jan 2022 16:32:26 -0800 (PST)
MIME-Version: 1.0
References: <20220129204004.1009571-1-clabbe@baylibre.com> <CACRpkdb9R-BwdVzyeaQOjagsQU=2-06VNqKPG9fMa7C93eDC7A@mail.gmail.com>
 <2b0fa854-16e7-3d0b-a04a-971249646fab@opensource.wdc.com>
In-Reply-To: <2b0fa854-16e7-3d0b-a04a-971249646fab@opensource.wdc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 31 Jan 2022 01:32:15 +0100
Message-ID: <CACRpkdbJ2c0X4Oh8-Daw9O4Qk3ZWJQSkN171Ox7K9DnGbVhp3Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: ata: convert ata/cortina,gemini-sata-bridge
 to yaml
To:     Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc:     Corentin Labbe <clabbe@baylibre.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 12:56 AM Damien Le Moal
<damien.lemoal@opensource.wdc.com> wrote:
> On 2022/01/30 9:26, Linus Walleij wrote:
> > Thanks for doing this Corentin!
> >
> > On Sat, Jan 29, 2022 at 9:40 PM Corentin Labbe <clabbe@baylibre.com> wrote:
> >
> >> This patch converts ata/cortina,gemini-sata-bridge binding to yaml
> >>
> >> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > Knowing that drivers/ata is a bit sparsely maintained I suggest that Rob apply
> > this patch when he feels it looks good.
>
> What do you mean ? I am doing my best here to maintain ata !

I am referring to the situation before
commit 5ac749a57e0ebb334b1b2c3d28d4d5b1ef85f8ed
I am happy that this is now solved!

Sorry for not being up-to-date.

Yours,
Linus Walleij
