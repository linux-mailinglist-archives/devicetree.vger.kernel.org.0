Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68AB463EBA5
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 09:56:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbiLAI4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 03:56:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbiLAI4Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 03:56:16 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 731913D92D
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 00:56:15 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id 128so872930vsz.12
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 00:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lk5MPhn0CyinDmwrb6nwbsmO48XP+LjkhP+k9n9Fcps=;
        b=IaPnOYrtEU5ugaHonkNjPY3SKoPQRP0UDXUd0bz70mdsqdf5Cfz1vOukaEsvFe/OVw
         u0ZzUsuP0XdE7y5GJj+Uqx+OT1+1fNJd/TB1nEo3L/wWbae+DVc6/ASj/Vjpry/2A6nl
         OXBFmV58hXRVW8HHEuc6KAktXRH+g9c5UYfVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lk5MPhn0CyinDmwrb6nwbsmO48XP+LjkhP+k9n9Fcps=;
        b=Y4THZtUX0N+7XKKgNjNrSsjQbhVXADLdvDIIRAcaKS/831Git40AyPMrwAkIuFMD0e
         vojUoLfvnba/ib+55qFBlRI1uYqbP5c1FC7qg6PqkXFkdfxbnOT6F7Nr7do/VoOotE2L
         WwcBy24EnEucrW2Y50xxIWhDxkLYmtcosXvb4uC8VLW9Q3f3dNnkzlUsh9EKlYDbMwpd
         wp/5YlPtCTjc3QtmSJy00PQNnIIhcUZOEVjpD/ReOIT47pLSWAmB0cYVldFzSYIQ2vCY
         MXVcaRkZaO5JRdnidxJKHLMxHwSdc0zBFyeXL4cbyp7Qlv434mlQMXlJ0r5eEiU2UcO2
         mqiQ==
X-Gm-Message-State: ANoB5pmktyqesYPGlY+7Yer/Puqbs2df7sTCphIGuVsF9siyBBHlAlnD
        WKZzfjv81TEs9z5lrIrju3YoiUdFgs6U6NWTqZbkv5yp1Qk=
X-Google-Smtp-Source: AA0mqf6zTU3Ioqgl4/U57LTo9n7P+kL6p/D8JBOWTZMFr5NC17aGV0O7ANxrIhs37CKnfz5cNOELbyalAE1ZP8QP8WQ=
X-Received: by 2002:a05:6102:e0c:b0:3b0:6da7:39ba with SMTP id
 o12-20020a0561020e0c00b003b06da739bamr24409177vst.26.1669884974559; Thu, 01
 Dec 2022 00:56:14 -0800 (PST)
MIME-Version: 1.0
References: <20221130031741.3176853-1-wenst@chromium.org> <2ec80bd8-dfef-d2e6-eb41-6e6088043e33@collabora.com>
In-Reply-To: <2ec80bd8-dfef-d2e6-eb41-6e6088043e33@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 1 Dec 2022 16:56:03 +0800
Message-ID: <CAGXv+5E=X_hwg76=B_jqWrpieo8bR-=r8NLbNz2=JzE=kBwMWQ@mail.gmail.com>
Subject: Re: [PATCH resend] arm64: dts: mediatek: mt8192: Mark scp_adsp clock
 as broken
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 30, 2022 at 7:10 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 30/11/22 04:17, Chen-Yu Tsai ha scritto:
> > The scp_adsp clock controller is under the SCP_ADSP power domain. This
> > power domain is currently not supported nor defined.
> >
> > Mark the clock controller as broken for now, to avoid the system from
> > trying to access it, and causing the CPU or bus to stall.
> >
> > Fixes: 5d2b897bc6f5 ("arm64: dts: mediatek: Add mt8192 clock controllers")
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>
> ....or we can add the ADSP power domain to actually fix this properly, which looks
> like being a generally good idea :-)

Sure, but that and any driver changes have to be backported, or anything
touching the clocks will still break the system.

There's no reason we can't have both. I think having this one merged and
backported to stable first, then adding the SCP_ADSP power domain, and tying
it to the clock controller as a follow up addition works best.

What do you think?

ChenYu

> Allen, can you please take care of that?
>
> Thank you,
> Angelo
>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8192.dtsi | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> > index 6b20376191a7..ef91941848ae 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> > @@ -575,6 +575,8 @@ scp_adsp: clock-controller@10720000 {
> >                       compatible = "mediatek,mt8192-scp_adsp";
> >                       reg = <0 0x10720000 0 0x1000>;
> >                       #clock-cells = <1>;
> > +                     /* power domain dependency not upstreamed */
> > +                     status = "broken";
> >               };
> >
> >               uart0: serial@11002000 {
> >
>
