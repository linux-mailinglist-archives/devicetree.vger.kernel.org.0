Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 529F85A03D0
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 00:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbiHXWOv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 18:14:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbiHXWOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 18:14:49 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 488D262CE
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 15:14:48 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id bj12so19099043ejb.13
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 15:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Yiz8BZp2tFamuFhpvybCwAH9pXlB007m7QpKOOkPwKs=;
        b=tfMFqVPwCMZ/hK32F8UiQGSGFbaymBFogBJYvS87vo7R39GlyCKdQqaQ65CDiPrUX4
         Mp3NBZtES6SbiY5+vqa9DxTLW8tfdVx0Mfk9cOZD8R02+BOF0fysSE4KGZqHGdP1qp/D
         hkxOTWofAJiFujoZ8wYW7UmeSVRLKFXFCYRYy9RPIEweiUiF58bxG+XKuX7GJTMn1G/8
         PdL+8vvroedcKYfOKSr8+IRGDjENsGqrmmfjtZWulabDlaLiUZX3h6iQ9wEQ/Ft/xAma
         LR92BGXDEvJ4ODOqDZSXyXn8bUrAsKVT/7ozbsTSIqTkofpzw3hZ/nQjBgzzRxDkVl3B
         WZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Yiz8BZp2tFamuFhpvybCwAH9pXlB007m7QpKOOkPwKs=;
        b=oGmOCAPwvdrtaljrnDu6PqfhejwQOPTwGB8xCctsmmI9EBUEKcK2WPyfB6QS+F0GRq
         MTEES/2bnRd0196id1nMJ9FyiQikCk6/9JS7to9xJfds+0pD5uJiCVX96UJAtb0z1iCC
         jPC6TpnhBc2yD5EwROZ8crXCYqrtmny8fH1CMnuLQbmPuAMDRk49iHathWSjuz9SBp0T
         thS9s8oE0HxUrImhiCy/MZiPYF4d+e9I1RKxmpbbhIhuwsPcBKcHWFmFxNwuXbzActGZ
         xhoRwfonki53WemlHX87aaJCacwV5DKfIxkeafP1pymVD0ji2GQj7uPtuBRrxFLQ4y+7
         cTyQ==
X-Gm-Message-State: ACgBeo3xPgv8RTHDbeSUFEgR0D77NxAcHtKdkuw3YLDUIoKM6ewmZ2FI
        HM7UbYT176qRTzqo/IwHpcVGUOKuGX9JtOS1XBbzHno76Xy40g==
X-Google-Smtp-Source: AA6agR6sITtt89aUGw6mfBgTRSPuAJY9MuGiptZ8C0ecCCpMru+vIFkRB4YyD4saNTsjrxd9lGunX7iiQahVXbO3h8I=
X-Received: by 2002:a17:906:9b86:b0:73d:72cf:72af with SMTP id
 dd6-20020a1709069b8600b0073d72cf72afmr637412ejc.440.1661379286906; Wed, 24
 Aug 2022 15:14:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220312113853.63446-1-singh.kuldeep87k@gmail.com>
 <20220312113853.63446-2-singh.kuldeep87k@gmail.com> <CACRpkdafQ4G=a1E=G6GK3W2zAD4Nh96GiQiYbYkn4ctVu3c04w@mail.gmail.com>
 <CAL_JsqJ2p+4R=-HcKJ=UdXFcATrZgwwpfRnJES+-bHxRohorHA@mail.gmail.com>
In-Reply-To: <CAL_JsqJ2p+4R=-HcKJ=UdXFcATrZgwwpfRnJES+-bHxRohorHA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Aug 2022 00:14:35 +0200
Message-ID: <CACRpkdZ+GOgp4pqZyfkTW9at5Ax7Z=mTp_1u0dqoQ3gFS4ijCQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] ARM: dts: integratorap: Update spi node properties
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 10, 2022 at 9:47 PM Rob Herring <robh+dt@kernel.org> wrote:
> On Thu, Mar 24, 2022 at 4:07 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Sat, Mar 12, 2022 at 12:39 PM Kuldeep Singh
> > <singh.kuldeep87k@gmail.com> wrote:
> >
> > > As per spi pl022 binding, SPI clock name is "sspclk" and not "spiclk".
> > > Fix it.
> > >
> > > Also update ssp node name to enable spi bindings check.
> > >
> > > Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> > > ---
> > > v3:
> > > - Reword commit message
> >
> > This and patches 2, 3/4 applied to the versatile DTS branch.
>
> What happened to this?

I forgot to send them upstream this merge window :/

Simple as that.

I'll send them pronto.

Yours,
Linus Walleij
