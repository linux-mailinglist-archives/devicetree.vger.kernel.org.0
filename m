Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7A5D4D9243
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 02:27:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237575AbiCOB2U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 21:28:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237244AbiCOB2T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 21:28:19 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA25647540
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:27:08 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id f7so2542827qtk.1
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+V4iyUGPnF/NQhkHTPBkqtdb3tsV1eLSkglbcthvJjk=;
        b=F7WlOKX8QUi+Ggrzwp05RoLUrZK+fo2HnWaEve3xfgNOcc+YuoLVSG+IG0CR+xUgog
         QnPZzCtz76OykGAtwKL/2hT4biTkPTPhOoIbbu5iWjDi2fTNbXWq7Y9tznrrexq98h4E
         6/eg/XUSas7Az8p0fA2W2jBAEVL8xLswQ3X2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+V4iyUGPnF/NQhkHTPBkqtdb3tsV1eLSkglbcthvJjk=;
        b=EeAQWcVvV+hxA/WR0w1pfCiQE0J2PiIuIDuAhT5GOcgoTgfB2SjP1t5d4KqLraQVTI
         U3tXPQUab0L4lGB5Kf328J9flRkOe3pEM2BAQLa22kjJmUWeLzFywgRTb/1PFJ1c0PdI
         eRqhHSYX4OKOWW4veXIOlb9B8Pi3TO8XMSVEOSr0m/W7uajpeZJCLGXsQ0DBzN9pCN3s
         drYTBtd9LKnovAv4ejfPZVHK+oQJeL1IiV102kVf91jfgkePnuy0f8TLawJ9w02dgSaZ
         UZaZHT289h4RrPB0Cn2RtFudNrKwr4pNKHkzY9xEC2vOwogfJkoiq7XOGOEaqxRRW2gI
         4bJg==
X-Gm-Message-State: AOAM532e/cVWamJG050W5+G2H1hHs23355AYdKHxyiInlBiv/R50Qi91
        6J0xMO3pH70oN7nhEA5518BaCwBmcjcS96ImRcg=
X-Google-Smtp-Source: ABdhPJzE6usGxaJAkzghzKID06dDa9XcVgDlW8+O+LojgMNzBWy91SSpCcSY5Qmt4oRq5XcbaMVucMXmRSpOpfRYl8k=
X-Received: by 2002:a05:622a:14c8:b0:2e1:d626:66ea with SMTP id
 u8-20020a05622a14c800b002e1d62666eamr4668263qtx.58.1647307627925; Mon, 14 Mar
 2022 18:27:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220304000311.970267-1-joel@jms.id.au> <20220304000311.970267-2-joel@jms.id.au>
 <CACRpkda3q=Rh7Kmi8Cycg4CAYUhzpRxLf+ErwxR_0drtTNTr+g@mail.gmail.com>
In-Reply-To: <CACRpkda3q=Rh7Kmi8Cycg4CAYUhzpRxLf+ErwxR_0drtTNTr+g@mail.gmail.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Tue, 15 Mar 2022 01:26:56 +0000
Message-ID: <CACPK8XetyrHHmpbSiE3rXgtdQt9JTg_ZHfuFhsyOoWdSrCvk=A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: aspeed: Update gfx node in example
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Mar 2022 at 01:21, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Mar 4, 2022 at 1:03 AM Joel Stanley <joel@jms.id.au> wrote:
>
> > The example needs updating to match the to be added yaml bindings for
> > the gfx node.
> >
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> I guess you will merge this elsewhere or shall I apply it to the pinctrl tree?

Feel free to take this one.


>
> Yours,
> Linus Walleij
