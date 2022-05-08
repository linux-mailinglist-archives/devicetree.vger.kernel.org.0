Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9F4351EF3D
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 21:11:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230282AbiEHTDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 15:03:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344035AbiEHSEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 14:04:05 -0400
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18AD65F55
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 11:00:15 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-2f7d19cac0bso123589437b3.13
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 11:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+njCfc3VDaggbjwDxdQjFEEmHvGRLPJb/PQlC1knYZ4=;
        b=JbmHMLbkqurs+zTb73d03fNNXr6ZITEAjgQkchJHaLLeV1DVKVzhzD7UEhKg3VPbKA
         ceuyEntVPt77r9m6WzOJF3pFpxN/Eo//hadGctVx1WKWC5WgAuaGaVN46Y5CEtHqjB/0
         KzNsW2kFmyMscNDk5aJSNTXnPNbR1G50K+LddsfxFSg/HLdp+VVOVfFpWKqcNkZyP8x0
         edntJZDQbSywzUBXiYyP84hCD5s3Ne7G8xqE6qEEsfx/C+AfM00vNkLw3DajxzRNlqJI
         wpnv9XfG3sJsW2Ziy+b1SoeDugyiubck9t1q1y0karRrgZHa0caNpEOzbIx/GA8Z0tdd
         WVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+njCfc3VDaggbjwDxdQjFEEmHvGRLPJb/PQlC1knYZ4=;
        b=l5C+fAvWoZ/Etq+2akPrBmfG0D0l6EBduprq/Fbo6egzaA7TwpBCYzuBpfquw6Zc/T
         3PDXR7KlUnZozmJzn0WZERfQPoiWHPOnCiNSdJX6ZxRUKogG2L5CSkCvrXv7mDmwWOGH
         EHgOjqjzWFsfFxiUQKouBN/AV/JgWDyiq98unznnrXF6/eQrzXTHvLs8TRTl0bsc1zli
         AcXghcnUIjja7nke+9Hclil5+eN0iYzgF/MRV4TaYtkfbrokZPsU6jm2b0SWc+j0HgQ7
         nFP48AaWju3dPZvTgEmIxoyyaQ0YLTAYkkYiRsOjgPe/vc47KOO7YONrgLmqQPoNUNlA
         T/fw==
X-Gm-Message-State: AOAM533hN78nd22nU0T5LVFB+z4LhruPDYEJp/aB7/7uKmurmI1Qi5yF
        Qk/k7nrdS8pA9RFCZjub9lhfi3XBM9E5GASQAF70qqkLhiJzTQ==
X-Google-Smtp-Source: ABdhPJw6cIDfypX3SJ4uKoT1hkXtYscVELpETof/gkGzQRhiepnFiY8aYzYSXcHxPEDoaxJB1B18+S8SDTmmtaYjBHg=
X-Received: by 2002:a81:488b:0:b0:2f7:cc43:ae4c with SMTP id
 v133-20020a81488b000000b002f7cc43ae4cmr11119913ywa.414.1652032814263; Sun, 08
 May 2022 11:00:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com> <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
In-Reply-To: <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Sun, 8 May 2022 14:00:02 -0400
Message-ID: <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 8, 2022 at 1:36 PM Piotr Oniszczuk
<piotr.oniszczuk@gmail.com> wrote:
>
>
>
> > Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w d=
niu 08.05.2022, o godz. 18:53:
> >
> >>
> >> I was trying to do this in dts https://pastebin.com/67wu9QrH but cec i=
s still non-functional
> >>
> >> Maybe You have some hints/pointers here?
> >
> > Add the following to the HDMI node:
> > assigned-clocks =3D <&cru CLK_HDMI_CEC>;
> > assigned-clock-rates =3D <32768>;
>
> I think i have this already (pls see L231/L232 in https://pastebin.com/67=
wu9QrH )

I see you have hdmitxm1_cec as the enabled pin. Are you certain it's
the m1 pin and not the m0 pin?

>
> >
> >>
> >> br
> >>
> >> btw: my dts gives me working usb2 port0/port1 and usb3 port0. but usb3=
 port1 is non-working
> >> maybe you know what is missing?
> >
> > You're missing &usb2phy0_otg.
>
> Maybe i miss something but adding:
>
> &usb2phy0_otg {
>         phy-supply =3D <&vcc5v0_usb_host>;
>         status =3D "okay";
> };
>
> breaks working usb3 port0
> (so none of usb3 ports are working)

Please pass along a full dmesg in this configuration.

>
>
