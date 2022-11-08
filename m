Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4450B621120
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 13:42:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233657AbiKHMmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 07:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233300AbiKHMms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 07:42:48 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAA3850F1D
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 04:42:46 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 21so22300818edv.3
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 04:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1NAwkd5gvafBd9aj3NDsmPd7fQCXQtLGmi5pO3EUXBs=;
        b=eEG90ipC8yImPAY3uFD8QLSUoEXgAoFv6K64zitJ8kXVIrIgC6p1DWoWSiXZwHsN4L
         3dq1PuI+nuTyhq4v7byubmLh2P9/WixKct1VKlitOiryyDcIUUUBTtoazFf/m3Go+CjR
         4cGAyhkanz+alVEidSSPNzWLyGiagwm8ywpjZQLI4uM0KqsqSENxHFqk3zXeQpzAmhbn
         MNfmsCdmX6JsWJFjPYV3X68XjKlu2nnZM2xDyYDzjx2MEiDMJjcAHRicUyZe2DxeYjNb
         K5IjjDvS32KrnkY63tSQGpk2lGrSdu6kgAbXXWIU5iQeNIvMFkV8eTO9tozBWWX+wTld
         6meQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1NAwkd5gvafBd9aj3NDsmPd7fQCXQtLGmi5pO3EUXBs=;
        b=cBlNk42GeFw0GTW4VUO0zyTCG8eJOLc63s0II8Fp+YEZrD+dCbUATNL3CL5U2dRq9z
         /o2vOe0r8/wc8AAwMk2ZUQZmYyDElHASaLS7pPAB8mMtavgVTuCZtDHQEdbmTqMO/Pre
         XGZ2RORflIBHJe99B31p1ppHEUQ/ZuBTCr+hMs8C+8y8wiM6HSP/o+pV+r7J7rPHbA+5
         4n+lJm9GAvfffwMtcEhpI0glXrvzYj0T6pgZ5EoOFsHHMIOh6XBAwZy9xb4ZfH2tJUgY
         l+oqh5Nj/tWCb+bJiaGHxPASLzQ2+97KwkW7+hxRTzCqOTTtbrJ0bBS/VNoXF4h6c5Ae
         u/jw==
X-Gm-Message-State: ACrzQf2rzW34mWufQLdU6/4B1TMSHLiRMy5+3VyqkNdpGuAztqfz+bpt
        bahnbHf2UeWKKaS5oPPpQg3MTJBTVP66Niml52p19Q==
X-Google-Smtp-Source: AMsMyM4X463PCUWbCEJ9/WMIHfY6oheXBJQ6mxshnNqJwtlvyN0tlU11yHLyFhWP5bFEE6kg2MWl76/sJjnM1TB+FC4=
X-Received: by 2002:a05:6402:d0b:b0:458:a244:4e99 with SMTP id
 eb11-20020a0564020d0b00b00458a2444e99mr55679890edb.46.1667911365383; Tue, 08
 Nov 2022 04:42:45 -0800 (PST)
MIME-Version: 1.0
References: <20220818172528.23062-1-pali@kernel.org> <20220818172528.23062-2-pali@kernel.org>
 <CACRpkdYWQVW_akJS7hvtU2=c063LCMfjN22X-neTfuTZRbt+yw@mail.gmail.com>
 <20220831114936.vukjsovdxw3cmj6h@pali> <20221009114043.6rdgpgzkngd527o7@pali> <20221101223255.rhzerarzld45xfjh@pali>
In-Reply-To: <20221101223255.rhzerarzld45xfjh@pali>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 13:42:34 +0100
Message-ID: <CACRpkdad6WDo7rGfa4MW8zz0mLXmcPHo+SEC-yLQnRz_kdrryA@mail.gmail.com>
Subject: Re: [PATCH 2/2] leds: syscon: Implement support for active-low property
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Tue, Nov 1, 2022 at 11:33 PM Pali Roh=C3=A1r <pali@kernel.org> wrote:
> On Sunday 09 October 2022 13:40:43 Pali Roh=C3=A1r wrote:
> > On Wednesday 31 August 2022 13:49:36 Pali Roh=C3=A1r wrote:
> > > On Friday 26 August 2022 10:05:26 Linus Walleij wrote:
> > > > On Thu, Aug 18, 2022 at 7:25 PM Pali Roh=C3=A1r <pali@kernel.org> w=
rote:
> > > >
> > > > > This new active-low property specify that LED has inverted logic
> > > > > (0 - enable LED, 1 - disable LED).
> > > > >
> > > > > Signed-off-by: Pali Roh=C3=A1r <pali@kernel.org>
> > > >
> > > > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > > >
> > > > Yours,
> > > > Linus Walleij
> > >
> > > Is something else needed for this patch series?
> >
> > PING?
>
> PING?

If the LED subsystem isn't working consider sending the patch to the
SoC tree with a notice that they apply it instead and why.

Yours,
Linus Walleij
