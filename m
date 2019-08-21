Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCA5D97258
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 08:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728042AbfHUGji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 02:39:38 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:34746 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726741AbfHUGji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 02:39:38 -0400
Received: by mail-wr1-f65.google.com with SMTP id s18so891804wrn.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 23:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U+7whJW84Q49Ku+tw2Y5QNdnttATl2VRa7WB7fHg68o=;
        b=rwvLYMbeP8ySJGdV0IkNoD91ZQfFrN1kEmdG5r2tdlTMkc4ps7w13HZSXF0Ibzum1/
         UVlXDqdXkLra+2adVVO2z6Xo7hstLOgtvXF/hZXb7bDyWBj+XEjTIpAdsxMcthMiDSwn
         f2LwUot26mNiOU+PCm8geyufK6dABTXIwUmzeTg9T2Z04fGf8IIHLqnEHOEcYLdeBIRT
         pGDxXnLYDvBcX8eqkJIi5991g5o7HM5mWW3AzpSot9JlL4DZnWSt7gZ0KnHmo5mOxOn8
         KimVeaSqaJ7H4afIgL6dh/KoJigQivEOJnUsPoyaPavm/rg/zZUZ+GgdhUb6vPIzdNCu
         znTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U+7whJW84Q49Ku+tw2Y5QNdnttATl2VRa7WB7fHg68o=;
        b=EYeUX793/IJrpNb0KZw8XxhfGrde+aJI5DJSjApLXLrU7Nrmp7ftVELi8EQNYLBt3p
         r1AHhlaH9Jfo/pEjjcXvsM/zffprgh/BBu1wQBq/evzB3+l9SgX/iXnDGO6z3DSwTTGg
         rJuby+sFQR+a+FK1UX51DdiyCbfnRKwg6czhDGBF3iLmP1JE/TC9xxqeAOyqaj+qHLuo
         ac5BwhQMfk+rUTMDK+igESLj3aV8C8kmmwqFKeAgVo23MVC+GYw1cxuX54x5MR8snkkV
         b5q7sb1pvurno0fC6fu6r+bs8oPwBczVlRX5Qd/jOMnrQbyTLWr4toJ+YEZk9+MBTf18
         qqbQ==
X-Gm-Message-State: APjAAAUl68ER8pWqCGYhxxICsmhJ86ExyaHv8/gRDNxfuX7rYO33Zay+
        /SrGu/Cn7rKDEKK/1V1mwKqoDNLkR2SbxfYzDX+ldpX5mLTCwA==
X-Google-Smtp-Source: APXvYqyrX+9pSLpQEjc0TgjWjVFX2qvDP4gyHjSJFa0BWPhsO0V7XtNUPTgXWKQXf3YQVQrHi13L+S8xjP312PFd24Q=
X-Received: by 2002:a5d:5450:: with SMTP id w16mr25168992wrv.174.1566369576336;
 Tue, 20 Aug 2019 23:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org> <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu> <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
 <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com> <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
In-Reply-To: <CAJMQK-hdYz+pW5QL41nXkZAX1qiRynaWg7cne48qCaQsuPrSCg@mail.gmail.com>
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date:   Wed, 21 Aug 2019 09:39:28 +0300
Message-ID: <CAKv+Gu-kp-LqCCx=h2TJxzns4KpM-UEjz3md0u3hbVOyp+iFtA@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To:     Hsin-Yi Wang <hsinyi@chromium.org>
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

On Wed, 21 Aug 2019 at 08:57, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Then we'd still use add_device_randomness() in case that bootloader
> provides weak entropy.
>

(please don't top post)

Whether to trust the firmware provided entropy is a policy decision,
and typically, we try to avoid dictating policy in the kernel, and
instead, we try to provide a sane default but give the user control
over it.

So in this case, we should probably introduce
add_firmware_randomness() with a Kconfig/cmdline option pair to decide
whether it should be trusted or not (or reuse the one we have for
trusting RDRAND etc)


> On Tue, Aug 20, 2019 at 7:14 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > On Tue, 20 Aug 2019 at 10:43, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > >
> > > Hi Ted,
> > >
> > > Thanks for raising this question.
> > >
> > > For UEFI based system, they have a config table that carries rng seed
> > > and can be passed to device randomness. However, they also use
> > > add_device_randomness (not sure if it's the same reason that they
> > > can't guarantee _all_ bootloader can be trusted)
> >
> > The config table is actually a Linux invention: it is populated by the
> > EFI stub code (which is part of the kernel) based on the output of a
> > call into the EFI_RNG_PROTOCOL, which is defined in the UEFI spec, but
> > optional and not widely available.
> >
> > I have opted for add_device_randomness() since there is no way to
> > establish the quality level of the output of EFI_RNG_PROTOCOL, and so
> > it is currently only used to prevent the bootup state of the entropy
> > pool to be too predictable, and the output does not contribute to the
> > entropy estimate kept by the RNG core.
> >
> >
> > > This patch is to let DT based system also have similar features, which
> > > can make initial random number stronger. (We only care initial
> > > situation here, since more entropy would be added to kernel as time
> > > goes on )
> > >
> > > Conservatively, we can use add_device_randomness() as well, which
> > > would pass buffer to crng_slow_load() instead of crng_fast_load().
> > > But I think we should trust bootloader here. Whoever wants to use this
> > > feature should make sure their bootloader can pass valid (random
> > > enough) seeds. If they are not sure, they can just don't add the
> > > property to DT.
> >
> > It is the firmware that adds the property to the DT, not the user.
