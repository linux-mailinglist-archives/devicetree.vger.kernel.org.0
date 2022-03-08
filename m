Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 056684D0E76
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 04:48:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236315AbiCHDtC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 22:49:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232753AbiCHDtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 22:49:01 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7852A2F006
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 19:48:05 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id w16so35170960ybi.12
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 19:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SB1pR6R36cG/5vqUJ9L1OYX7dRask2g/0weyNuOkOYQ=;
        b=Aqt++puDVTDcltryRW77a9cwhFd1XciMKNs9AsjManml5e4eEQPtDOB/5nEXjsn+P9
         GkEs/gI5+4vK3gNMFYbQocu8XMlxE9wCZPPoS8OfoPNDIE6avBWb/hU6LMu1/Cf2whCu
         FFb8lEOczvnEeE5kzWcvCMw/ecWn+5SZxlX2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SB1pR6R36cG/5vqUJ9L1OYX7dRask2g/0weyNuOkOYQ=;
        b=X2fTsBtugeuxVZzBdBvPBt5mzJaC3YyKv+hDvIsNY/ra1FoKv7qfYJmwOxgtQAVPIs
         Xx9dDf9MxnB3d6UqV6yU5Gf3ZW+gVZlgV4lTcE3HFWoT/lE+Ukd3C3DUPAZFtet0+Pwk
         xi8h95Q4gxM/vT1zXXSyaZbBkcsa4IKBK5zP2x7KAdgYRdRi7g6srAVVuWeR0OU9ZIPx
         WnsV1vD21mFpsaY47YWqsYlWVtmAyDAHnkp8PCf6mZtwLSMh3MNiyVFTnVh25CZVs5HZ
         WDf9444moihlnwEAqnyhYhHDRvCEYkdxTqxUmycaGA4P/WmRf/L6hrZj/gNQRrqf7xPt
         H/bA==
X-Gm-Message-State: AOAM531+MIUNdRJ3pYdEGOjmdRddmjwQj97qfz/ui71V/CRRJbJoOrik
        FOoMrJA1g+7WXpV9c6T/oP2I4Rm2FNZYdh/uZBoPNQ==
X-Google-Smtp-Source: ABdhPJyuGeWIUlb3utDkOR1PhipoTjIrNi/Cf0gmscf2NmU/0KOasS7EzcBrtPdNSmwisXmV8F84klzvCTpKGd/lH2w=
X-Received: by 2002:a25:d449:0:b0:628:945d:713c with SMTP id
 m70-20020a25d449000000b00628945d713cmr11205541ybf.164.1646711284731; Mon, 07
 Mar 2022 19:48:04 -0800 (PST)
MIME-Version: 1.0
References: <20220307154558.2505734-1-robert.foss@linaro.org>
 <20220307154558.2505734-3-robert.foss@linaro.org> <CAG3jFytGV3NNfkEPqx_rZX9O9aZjTjzo2tpeSK8mFimOrYt9zw@mail.gmail.com>
In-Reply-To: <CAG3jFytGV3NNfkEPqx_rZX9O9aZjTjzo2tpeSK8mFimOrYt9zw@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 8 Mar 2022 11:47:53 +0800
Message-ID: <CAGXv+5H7RvczEeAyLEmJ-RNAwqV1G71FhsG3Kpi0r+qPkXVaeQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] Revert "arm64: dts: mt8183: jacuzzi: Fix bus
 properties in anx's DSI endpoint"
To:     Robert Foss <robert.foss@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        matthias.bgg@gmail.com, xji@analogixsemi.com, hsinyi@chromium.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 8, 2022 at 12:20 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

I think we need to send this directly to the soc maintainers to get it
picked up before the final 5.17 release?

>
> On Mon, 7 Mar 2022 at 16:46, Robert Foss <robert.foss@linaro.org> wrote:
> >
> > This reverts commit 32568ae37596b529628ac09b875f4874e614f63f.
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > index e8f133dc96b95..8f7bf33f607da 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > @@ -171,8 +171,6 @@ port@0 {
> >
> >                         anx7625_in: endpoint {
> >                                 remote-endpoint = <&dsi_out>;
> > -                               bus-type = <5>;
> > -                               data-lanes = <0 1 2 3>;
> >                         };
> >                 };
> >
> > --
> > 2.32.0
> >
