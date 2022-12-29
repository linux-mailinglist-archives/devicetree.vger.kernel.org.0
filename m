Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7F4B658B47
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 10:57:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233186AbiL2J5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 04:57:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233269AbiL2Jzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 04:55:41 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8845EAE41
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 01:54:00 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id t15so20034593ybq.4
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 01:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+yOD3yNpp4Sg8yVPxedVVEWiPubXWdIpWJ3m/jNQjH0=;
        b=dQ6fcikk6vSdmKrU4eLNH7HDLeidwKolv/8H1oeAG7B3pwfbe/kHq+/7rbE/BKd+RA
         n+mqeyGKLCphg6xq4Oz5tF6OBBE4Q1JQFKzdIxXoilNO4y4H0hyxMzb+9L1169fnqqy3
         un6K0fBFwKRxCBklBsCzB3FI2vkT89pN/4fyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+yOD3yNpp4Sg8yVPxedVVEWiPubXWdIpWJ3m/jNQjH0=;
        b=oHGZfzO2N4H0JszWjo9vw2XzoZWlEzJKnJ+LyQeKy4sdzDAc8CpHwoDVAvKt2t030E
         hGOyo09Uo+MZlNpLZov2bQDrgT06kC0ujeOjf2MHnnyhD4jQI+wSzDgtRNzhdqROMu8J
         eWa0BJpBeTg+AXUvU7v76o39jLvR6lRJj3PvXkJxvU0reZLTsnh0O93RNMv1WAdVNawk
         5ueAcu83aHodV+8MkjXcKYP/oP3JV5IQEGUERu1rasolvkjQWHwaKhNU5zkzeVuUvPI9
         cERz45YcQQihYK3p3DZ6vKs15mLl/Kb1MDGafWcjqhdLgP59bmLeb9AQ58q8UGAikZmK
         54QA==
X-Gm-Message-State: AFqh2kqC+Ub/UDJz42rcMDZ31CDoNi85bqfRequBnvPdRc8WGa4eh5NM
        OXVhT9BdrlYMUExEbHGA9PDfUZAgLRbvcMbxpUSr+AtY+MAq5+4LuME=
X-Google-Smtp-Source: AMrXdXuoA9vvADI0ga1A0rofeM2WbLDlgYQM51CNwbZv9FCgQQSqThlpYZEU3IL66FDhwNeWBldubTZDmOBxovx8eek=
X-Received: by 2002:a25:cc82:0:b0:6f9:bd14:f0b4 with SMTP id
 l124-20020a25cc82000000b006f9bd14f0b4mr3559292ybf.408.1672307639746; Thu, 29
 Dec 2022 01:53:59 -0800 (PST)
MIME-Version: 1.0
References: <20221227110335.2923359-1-javierm@redhat.com> <20221227110335.2923359-2-javierm@redhat.com>
 <CAMty3ZAaHKJ21D8mE=HU3D3KOGAiZ7vfmW_Hgc-E5JO5S+tMNA@mail.gmail.com>
 <CABxcv=kwtk21UbOwaV4tq=BpPsrYmnTrzuhybjbknipqk5R-fA@mail.gmail.com>
 <CAMty3ZDESyJoWMO_BgHzUJN=hLV0dH6y=3B9ogOsSUvaTMqarQ@mail.gmail.com> <CABxcv=mFzuUq0-PQ8H3N0Sxmzg+z1v_uwhUe0jcH2++NDQRR0w@mail.gmail.com>
In-Reply-To: <CABxcv=mFzuUq0-PQ8H3N0Sxmzg+z1v_uwhUe0jcH2++NDQRR0w@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 29 Dec 2022 15:23:48 +0530
Message-ID: <CAMty3ZDJEx6J6xtbAVyO61vSKeW_7F-xWk5yvkwKvHNc1oyykA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: Add Himax HX8394 panel controller
To:     Javier Martinez Canillas <javier@dowhile0.org>
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        devicetree@vger.kernel.org, Robert Mader <robert.mader@posteo.de>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        Neal Gompa <ngompa13@gmail.com>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
        Peter Robinson <pbrobinson@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 28, 2022 at 3:46 AM Javier Martinez Canillas
<javier@dowhile0.org> wrote:
>
> On Tue, Dec 27, 2022 at 8:37 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > On Wed, Dec 28, 2022 at 12:58 AM Javier Martinez Canillas
> > <javier@dowhile0.org> wrote:
> > >
> > > Hello Jagan,
> > >
> > > On Tue, Dec 27, 2022 at 7:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > [...]
> > >
> > > > > +allOf:
> > > > > +  - $ref: panel-common.yaml#
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    enum:
> > > > > +      # HannStar HSD060BHW4 5.99" 720x1440 TFT LCD panel
> > > > > +      - hannstar,hsd060bhw4
> > > >
> > > > Parent controller can have a compatible where the associated panels
> > > > will be enum list.
> > > >
> > >
> > > I'm not sure to follow what you meant. Could you please elaborate?
> >
> > compatible:
> >     items:
> >       - enum:
> >           - hannstar,hsd060bhw4
> >       - const: himax,hx8394
> >
> > himax,hx8394 is the actual controller and is denoted as fallback compatible.
> >
>
> I see. Do you have an example of a panel controller that does this? I
> don't see that much value in doing this since you want the DTS to
> describe the actual HW and so want the panel I believe.

Yes, but the Panel needs to be built on top of the display IC so the
actual parent here is the display IC and the panel is sub-HW.  This is
what usually follows, here are some reference bindings.

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml

Jagan.
