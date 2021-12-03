Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA5B46798D
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 15:39:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381528AbhLCOmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 09:42:31 -0500
Received: from mail-ua1-f48.google.com ([209.85.222.48]:43806 "EHLO
        mail-ua1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236570AbhLCOm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 09:42:28 -0500
Received: by mail-ua1-f48.google.com with SMTP id j14so5803480uan.10
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 06:39:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yQtul6XVsJXpFPVfu70nnM4Df+66ubdDixJV8eC2fn8=;
        b=Koa/teleULSth+tDNGVUpkfJQ/33FSlYnzD4NhSahxHE8ZHedieK3YOBifXXWVX6cK
         4KdgGeLSuS+5EOer3DcbfOZoynPAr/jwWo9wOwyYZuQ33jxPNOnofITglhg3UuzAHS2z
         q4QJOXANhDLxMQIcmqQpmiZW+W9hWQ9IpggxWqeryeX3doS1JUx8d28f5GD3PRK+0y5s
         1LecB4tJ1S0kkBSYmVqEnvx+NW3k9U9Y+YUR1DUzORIj6QwBDE2/vKT2wQu+QUP8WVT7
         FSZEB9eDngtlka8pwX/Nvn6/aLLd59uS1oxIiHFKViVql2hbCjADekmIGQWv4W+vlqVc
         4wIw==
X-Gm-Message-State: AOAM530eaz0ivi2fCWtJElVQq1hYmyrA8tWM7t5dYHgbkR8ECo8P2Bbx
        5dNC8taATxhu0vduikM+ls4L2ux7i5CTxa/G
X-Google-Smtp-Source: ABdhPJxqgEhLUzPmRaUPNcNrz/mZJPUUY4Daq75lL79wITLCnu1s9FvytEMRl5VsfjW9c8SSkx6uog==
X-Received: by 2002:a05:6102:cd1:: with SMTP id g17mr21378936vst.55.1638542343911;
        Fri, 03 Dec 2021 06:39:03 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id l28sm502232vkn.45.2021.12.03.06.39.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 06:39:03 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id az37so5781643uab.13
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 06:39:03 -0800 (PST)
X-Received: by 2002:a05:6102:e10:: with SMTP id o16mr20431032vst.5.1638542342811;
 Fri, 03 Dec 2021 06:39:02 -0800 (PST)
MIME-Version: 1.0
References: <20211125153131.163533-1-geert@linux-m68k.org> <20211125153131.163533-5-geert@linux-m68k.org>
 <be6a6a8e-0642-80b8-5503-cb4d059ee278@microchip.com>
In-Reply-To: <be6a6a8e-0642-80b8-5503-cb4d059ee278@microchip.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Fri, 3 Dec 2021 15:38:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXO8A0ZPq6ngjuFmUb-8RJ69pkA2eAtcskham58RsmSpA@mail.gmail.com>
Message-ID: <CAMuHMdXO8A0ZPq6ngjuFmUb-8RJ69pkA2eAtcskham58RsmSpA@mail.gmail.com>
Subject: Re: [PATCH 4/9] riscv: dts: microchip: Group tuples in interrupt properties
To:     Conor Dooley <Conor.Dooley@microchip.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <Lewis.Hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor,

On Fri, Nov 26, 2021 at 9:42 AM <Conor.Dooley@microchip.com> wrote:
> On 25/11/2021 15:31, Geert Uytterhoeven wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > To improve human readability and enable automatic validation, the tuples
> > in the various properties containing interrupt specifiers should be
> > grouped.
> >
> > Fix this by grouping the tuples of "interrupts" and
> > "interrupts-extended" properties using angle brackets.

> I notice most of the icicle kit patches in this series were feedback
> items from you on my series. I am assuming your intent is that I drop

Yeah, when I commented on your series, I already had made most of
these changes to my tree, but they were in an unfinished state.

> those from my V2 (which should've been here by now but other things got
> in the way) and base on this?

That may indeed be the easiest solution: fix existing issues first, then
enable more features.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
