Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB2842889E3
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 15:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733305AbgJINeh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 09:34:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:36868 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731782AbgJINee (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 9 Oct 2020 09:34:34 -0400
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9E290222BA
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1602250473;
        bh=EDh68wmG9wRPJUJQMeJoofc1z5bylsJgRa0mJ9uGxK4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=RvNEOP5g70n+/k47SO7hbUz9QEZGILLw6eLyCuc21geEA4BGi9TA2QiRh8z8tld3P
         pbLNwK6GHBImBiCzaozYd/cIVHwzSMdJfC7XpfHRh16KgilfNs9+c/XMgEwPJdC/d6
         yPlmjOqKCsmZ4WcTpfKQ1rW0IsXHuQI2RweKZm3Q=
Received: by mail-ot1-f50.google.com with SMTP id t15so9046001otk.0
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 06:34:33 -0700 (PDT)
X-Gm-Message-State: AOAM5339sOtFeWkenIliYixWDeekSuyu53F/x2huuwhTxW9t8X69qMfU
        TLlfoBJEXSHPi8Wj0ThzZug6nli2BE/GfXRmzw==
X-Google-Smtp-Source: ABdhPJwItZMPo2QihYVy7LGx5D3n6NCmjhdMMjpDE/LG2Lzwd0W/QO7/Tgg6Eu8zTmN9kKjEkJoH7aqn5Wb11xd41Rk=
X-Received: by 2002:a9d:7993:: with SMTP id h19mr5189994otm.129.1602250472680;
 Fri, 09 Oct 2020 06:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com> <20201008183818.GB2395464@bogus>
 <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360>
In-Reply-To: <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 9 Oct 2020 08:34:21 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
Message-ID: <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
To:     =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 9, 2020 at 12:48 AM Ricardo Ca=C3=B1uelo
<ricardo.canuelo@collabora.com> wrote:
>
> Hi Rob,
>
> Thanks for taking the time to review this. Find my answers below:
>
> On jue 08-10-2020 13:38:18, Rob Herring wrote:
> > > +  codecs:
> >
> > Doesn't moving this require a driver change?
>
> I studied the driver as thoroughly as I could (what
> sound/soc/codecs/cros_ec_codec.c:cros_ec_codec_platform_probe does) and
> I think the driver should still be able to handle this. Unfortunately, I
> can't test it. Can any of the driver maintainers share their
> input about this? I'm adding Cheng-Yi Chiang to cc as well.

The question is not what cros_ec_codec_platform_probe does, but how
the platform device is created by the mfd driver. I think that's just
a call to of_platform_populate which will only create immediate child
devices unless there's a simple-bus or simple-mfd compatible. So I
guess you could also add 'simple-mfd' rather than a driver change.
However, there could be some expectation in the codec driver that the
immediate parent is the EC node.

> > If you only need 1 codec, then just drop the unit-address.
>
> Thank you. Yes, as far as I can tell there's only this codec (so far).

I would probably go this route. You could add this level if there's
ever more than one codec. However, I'm still not clear what the
address represents for the codec. Is it needed? The address
space/format is defined by the parent node. So is this defined by the
EC? If so, other components don't have an address?

Rob
