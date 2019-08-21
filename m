Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 01A8F971D1
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:57:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727721AbfHUF5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:57:33 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:45258 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726907AbfHUF5d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:57:33 -0400
Received: by mail-qk1-f194.google.com with SMTP id m2so813450qki.12
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t6gYotOZasUlghj+5miHn6itbPw1Xxo5qoWX2c4AJZ0=;
        b=fRkSaGl8rcNZIMIyKlWAiXym9k7PM2Njj2vuF5xfVsWAvvzvhYS7QuzqjU8iNsynLW
         xjKCE0oaS2TZzsErSCZ+bXBoJshE2B6JY9ANXMpLIOzFkshoyNCGPE5lODc42z3c8AYn
         6EA+e6LSO18ss01/caCZqVLCqS5xyEzO+wHRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t6gYotOZasUlghj+5miHn6itbPw1Xxo5qoWX2c4AJZ0=;
        b=uJ3i3TS+PlPC3rkzcyiMnfk0iIrWVB/qhKMs+Yf1yLndXHm7SDFGSCHsCvIDcYHcxL
         o/4NtFVRTVUZalShPSJ2yvmSKg+staNjCE4n8YYtkbqwEyA4BIytrfC+TgngJFTLNtC8
         sC+ZNKWSBO4xGAiAfiO13g8g7Do5IcIR5auN9VvUIpS0afwu289brntbasWrY30z/fmE
         h4lSbXnUiZSfKOav8hJUC1Wl78wh90L+cMFZGbNQDkBevBWjqqTj01lt5K+LTgD0Djwq
         6fzrZFOQrAoogntbtBX/SB0Vo/b8Oung8tpqPXAgmpBVSB1SyUMpC7KymyhmkwuNZn0E
         1wuw==
X-Gm-Message-State: APjAAAVJUTFOjyl4Y97Najdb0UtMA94eqlEuWeX4VuG74N1gu2YVSyuH
        BHJSbi482n3H1/4IFizdVl+gE68gudfmWisSFWjQUQ==
X-Google-Smtp-Source: APXvYqxC6HcxP1uepjmB3Azy4g3yRYVzUlDR2q/OUNQULPHyMxoFB38jRqS6lWI2lvQ0KTTrE5fN1aakFroOXkZTJWc=
X-Received: by 2002:a05:620a:16c3:: with SMTP id a3mr28335159qkn.315.1566367052074;
 Tue, 20 Aug 2019 22:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org> <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu> <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
 <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
In-Reply-To: <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 21 Aug 2019 13:57:05 +0800
Message-ID: <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To:     Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc:     "Theodore Y. Ts'o" <tytso@mit.edu>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Then we'd still use add_device_randomness() in case that bootloader
provides weak entropy.

On Tue, Aug 20, 2019 at 7:14 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Tue, 20 Aug 2019 at 10:43, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Hi Ted,
> >
> > Thanks for raising this question.
> >
> > For UEFI based system, they have a config table that carries rng seed
> > and can be passed to device randomness. However, they also use
> > add_device_randomness (not sure if it's the same reason that they
> > can't guarantee _all_ bootloader can be trusted)
>
> The config table is actually a Linux invention: it is populated by the
> EFI stub code (which is part of the kernel) based on the output of a
> call into the EFI_RNG_PROTOCOL, which is defined in the UEFI spec, but
> optional and not widely available.
>
> I have opted for add_device_randomness() since there is no way to
> establish the quality level of the output of EFI_RNG_PROTOCOL, and so
> it is currently only used to prevent the bootup state of the entropy
> pool to be too predictable, and the output does not contribute to the
> entropy estimate kept by the RNG core.
>
>
> > This patch is to let DT based system also have similar features, which
> > can make initial random number stronger. (We only care initial
> > situation here, since more entropy would be added to kernel as time
> > goes on )
> >
> > Conservatively, we can use add_device_randomness() as well, which
> > would pass buffer to crng_slow_load() instead of crng_fast_load().
> > But I think we should trust bootloader here. Whoever wants to use this
> > feature should make sure their bootloader can pass valid (random
> > enough) seeds. If they are not sure, they can just don't add the
> > property to DT.
>
> It is the firmware that adds the property to the DT, not the user.
