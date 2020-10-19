Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE1B3292969
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 16:35:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728344AbgJSOfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 10:35:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:60746 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728311AbgJSOfN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Oct 2020 10:35:13 -0400
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D8706222E9
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 14:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603118113;
        bh=9Dhc27A9N96thdDVnNpG1S2IvWmrt5KUifl2vLSN1Hw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=zA1ofiLUT2RxPPqN8a6R3lZWM8IHBxxtwBi2p/k6WuV5otYn8l3vZg76++BGFcncT
         bOZeXlpgyEXxBTT5QMfg+tPBGjeX8FSb+EDSU8SDHRH4KDJqZXzpirhbHPglIcH8Uv
         kynA/Kvy1GNoCYFT0sQCDDq7FUBXqxGmM8FJ0A8s=
Received: by mail-ot1-f44.google.com with SMTP id m11so10617603otk.13
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:35:12 -0700 (PDT)
X-Gm-Message-State: AOAM533/yMmf3daxjq1SyAO0owtI/Cz8xdFknGyO4ygThma/zcUBb1PT
        V9If+14slTLUZB4gaj5eSDGLcSm2HldjXZa8QQ==
X-Google-Smtp-Source: ABdhPJw+QmptSfTQjKQQEOSHxLnQWOTspH5/pk7BhNxjXHIf+EkDrcpJuo9cnLbpLqwU/p57KK3DCwGbhQFEK7ldqIY=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr191914oti.107.1603118112050;
 Mon, 19 Oct 2020 07:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
 <20200919143922.22793-1-u.kleine-koenig@pengutronix.de> <CAK7LNAT5f6RxFjOTOm8RvzZ3N2-48fr5e7wVoiE9hVeMBLSKBA@mail.gmail.com>
 <CAL_JsqJDPq-7V-JkeVEQh8J9dUd8uCqp0u5LnP6pYXmpzLRcwg@mail.gmail.com> <20201017212453.6ovoxoop74z5rmtn@pengutronix.de>
In-Reply-To: <20201017212453.6ovoxoop74z5rmtn@pengutronix.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 19 Oct 2020 09:35:00 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLoBJxrPu5iMfs-KcHpkPWQihy_yDfEEtoiWB6Br3ES4A@mail.gmail.com>
Message-ID: <CAL_JsqLoBJxrPu5iMfs-KcHpkPWQihy_yDfEEtoiWB6Br3ES4A@mail.gmail.com>
Subject: Re: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of overwriting
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Masahiro Yamada <masahiroy@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 17, 2020 at 4:25 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> On Fri, Oct 16, 2020 at 09:30:00AM -0500, Rob Herring wrote:
> > On Fri, Oct 16, 2020 at 2:11 AM Masahiro Yamada <masahiroy@kernel.org> =
wrote:
> > >
> > > On Sat, Sep 19, 2020 at 11:39 PM Uwe Kleine-K=C3=B6nig
> > > <u.kleine-koenig@pengutronix.de> wrote:
> > > >
> > > > When building with
> > > >
> > > >         $ HOST_EXTRACFLAGS=3D-g make
> > >
> > >
> > > I do not think this is the intended usage
> > > of HOST_EXTRACFLAGS.
> >
> > Okay, but I looked at all the other instances of HOST_EXTRACFLAGS and
> > they do '+=3D'. Are they all wrong?
>
> Hmm, I just tested that and indeed
>
>         HOSTCFLAGS=3D-g make
>
> has the intended effect. Then the commit log is not optimal. I'd still
> say the patch is good even though the reasoning is now only aligning the
> assignment to others in the kernel tree.
>
> @Rob: Assuming you agree, do you throw out hte patch again and I resend
> with an improved commit log?

It's now in Linus's tree.

Rob
