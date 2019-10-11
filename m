Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AAA47D39D3
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 09:07:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727573AbfJKHHo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 03:07:44 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:40136 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726755AbfJKHHn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 03:07:43 -0400
Received: by mail-lj1-f194.google.com with SMTP id 7so8721897ljw.7
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 00:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PMRAqG5BzH34QtcOckq2OAXBNCAwG74oouEQA4P4k5k=;
        b=m82JXHQoMVAx2eaF4EZXaxc/l0OAJ2Gx3DIHP925pL2EWhdXTjfHjOlcDZ6NmD41NH
         rnE3FGwv226fgYKudXxyByX9AYafguW6y2/VjcjYr4o6CxqeH7slzdkCvs0ZyWD1hAQh
         5UPoqgrF71EuqavQaw2aWGWMOwg/oPLvgRy/l3wiaGEWmJn1moFhlhD18/2y0IiE6iNb
         4LnpXBtgbsAbzxKf5eop/ijUdIWg46UAJtkC4ObcDGGRLwftlvuUnx24jNRV06JiL3MY
         RMNrJjhwAFdFLhczdpuh8JQCluARffb9GdMSr1MbHPLMcpY1n70nVH0oLwHo/h0OWxUS
         A52Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PMRAqG5BzH34QtcOckq2OAXBNCAwG74oouEQA4P4k5k=;
        b=nKuD2dM/Bd7AB+JCVMi00Vp/OzLJQa5IGr+NGwe5eEPNVwIEZGeJ5BOA1mII08eL+O
         M9NQ6UL6jAuRxtK7z5cZ55wqYyfcMJYh7p8+Go2bP7PP7hM9ve8Mq7d5nrjmEaYoSmXP
         927tNR9noCRM0/Q5/7SazQmh1YQQV2BkdntAyJrdnNXBXt2mwuC9NA9j8j7HO4YzgJ64
         0b7jMsIVkNi//cAIw5DDlDwM0mMIjWDgtG8LIezWaE5utJMZhV9Ah0Z4IwKsuLpLftJy
         c7JyWKBpzzZ6SdLiM2bpwjFNdu6a6nenflmWkZnnzJo7L5T1eMYvkH+Rfq2qlRvMoaVd
         s5SA==
X-Gm-Message-State: APjAAAVWxL13rmWwKop/N0v3tyQFsqs6eXDIz7Mm7pIRR4hhhk1wp1AP
        sfw3wMVgCjjlQXGASSGRCfOQsAwjwV1Zr5YEIx14Hg==
X-Google-Smtp-Source: APXvYqwKX431J+PMA2u2tXXF96O/zALY0bVxm7M6HozsrL+W3kvBvywF1bZix14nfbqpwAlTiZNB8AkMZjlwIpW0Cwk=
X-Received: by 2002:a2e:894b:: with SMTP id b11mr8332395ljk.152.1570777662155;
 Fri, 11 Oct 2019 00:07:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191001221356.19317-1-linus.walleij@linaro.org>
 <20191001221356.19317-6-linus.walleij@linaro.org> <20191010183902.GA4633@bogus>
In-Reply-To: <20191010183902.GA4633@bogus>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 11 Oct 2019 09:07:30 +0200
Message-ID: <CACRpkdZZK9kQuEBHjNBG37EqeugFiVmJ3GLFf19L70OiYwy14Q@mail.gmail.com>
Subject: Re: [PATCH 5/7 v3] mfd: ab8500: augment DT bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Mboumba Cedric Madianga <cedric.madianga@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 10, 2019 at 8:39 PM Rob Herring <robh@kernel.org> wrote:
> On Wed, Oct 02, 2019 at 12:13:54AM +0200, Linus Walleij wrote:
> > As we migrate the AB8500 GPADC driver to use IIO, we need to augment
> > the bindings to account for defining the ADC channels in the device
> > tree.
> >
> > Cc: devicetree@vger.kernel.org
> > Acked-by: Lee Jones <lee.jones@linaro.org>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> > ChangeLog v2->v3:
> > - Change "adc-channel@" to "channel@" as per preferred notation.
> > - Add some full stops to the end of sentences.
> > - Reference the new ADC-specific documentation for channel specifier
> >   etc.
> > - Collect Lee's ACK.
> > - Rebased on v5.4-rc1
>
> Humm, this is the 2nd v3. Can you address my comments in the 1st v3 you
> sent[1].

Sorry for the sloppiness. I blame it on the weather and some
organizational stress. I'll fix it up and send a proper v4.

Yours,
Linus Walleij
