Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF7E765702F
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 23:17:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbiL0WRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 17:17:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230438AbiL0WQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 17:16:59 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13713DEE3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 14:16:59 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id s67so219206pgs.3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 14:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2nz+0xpf/FwZYsXl34br/szBrwNJc+k2jQRK/lfXtjA=;
        b=DGJa8SlxJIzUxSfemShBGXpsL8Wtha+pI2wuXtLL7AR7v+4qQd674pnUjr1j9rT5YQ
         9RBVW0r7ExG9qO7tsSokHH20t1t/ANRvfv7fjA131WDL+3iy6OfGL64zCunszN2D0zia
         stbXzFNdb32jdP2PF48udsdQ8diDRq5maFn7fc634Lq31D2wycikbpQK/x9K4cUROHHH
         yLe+gtESc5XkCzV4idqKAsTr4pUI92YTCA/54oRKoHR5Sj1sQ16ZsOxKESKub69V2lyj
         9Q462b7tBeueWmkti8A+1lsu/4qP9Z91tbfiwMs32MQMjDBUU901KFrGor8Qoz32Kk6S
         ookw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2nz+0xpf/FwZYsXl34br/szBrwNJc+k2jQRK/lfXtjA=;
        b=bmbCTzv16/3wbnc/msUEazuyN76mW1ZuOGJyz2Qygh4SlT48VMkzG8cyZii/P+z/2T
         UWggUxf9EjbXyezymGnYoKYM3kBne8OfUCi79Dk5tDhrcA6iYnTgtuIV+l1HxqlHE/nD
         1as2xSE1zHdHn42sD3i9cGra1ULZT96QTcyqh8sUaskWtmUf05K2zP+3vOUY1Fi4y2DR
         3YtDYH0VBUZmHbUhUT6HvQUmsrgXjJRvvZ3+vKquArnUyxKzII1jdpXJGzxIiZkxaM4U
         WDrIFhz4hZqeo+r4xJ/mCcmU9MQXi9KSwy7ZCnkdMVNylHlDYPHOI56KeiTTU0h7ss/t
         z1tQ==
X-Gm-Message-State: AFqh2kqt9RRhzcVpufp6yBFXItrCF3gT3pK1BMYeiC0hoADsHS69iArf
        0VcH5rs2/ZTexMZmwo2XgUpLM9npiP/GSRYr4jOg7g==
X-Google-Smtp-Source: AMrXdXtezi5rDNeB0Nbw47Kco1JdQdNlIn5BXcEJuJPLNDYS047a83X3tjrfItS0VtvqbaZrvwHSUqxzmDB29aes3lY=
X-Received: by 2002:a63:1e66:0:b0:47c:c502:3713 with SMTP id
 p38-20020a631e66000000b0047cc5023713mr1287923pgm.28.1672179418571; Tue, 27
 Dec 2022 14:16:58 -0800 (PST)
MIME-Version: 1.0
References: <20221227110335.2923359-1-javierm@redhat.com> <20221227110335.2923359-2-javierm@redhat.com>
 <CAMty3ZAaHKJ21D8mE=HU3D3KOGAiZ7vfmW_Hgc-E5JO5S+tMNA@mail.gmail.com>
 <CABxcv=kwtk21UbOwaV4tq=BpPsrYmnTrzuhybjbknipqk5R-fA@mail.gmail.com> <CAMty3ZDESyJoWMO_BgHzUJN=hLV0dH6y=3B9ogOsSUvaTMqarQ@mail.gmail.com>
In-Reply-To: <CAMty3ZDESyJoWMO_BgHzUJN=hLV0dH6y=3B9ogOsSUvaTMqarQ@mail.gmail.com>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Tue, 27 Dec 2022 23:16:46 +0100
Message-ID: <CABxcv=mFzuUq0-PQ8H3N0Sxmzg+z1v_uwhUe0jcH2++NDQRR0w@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: Add Himax HX8394 panel controller
To:     Jagan Teki <jagan@amarulasolutions.com>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 27, 2022 at 8:37 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Wed, Dec 28, 2022 at 12:58 AM Javier Martinez Canillas
> <javier@dowhile0.org> wrote:
> >
> > Hello Jagan,
> >
> > On Tue, Dec 27, 2022 at 7:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > [...]
> >
> > > > +allOf:
> > > > +  - $ref: panel-common.yaml#
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      # HannStar HSD060BHW4 5.99" 720x1440 TFT LCD panel
> > > > +      - hannstar,hsd060bhw4
> > >
> > > Parent controller can have a compatible where the associated panels
> > > will be enum list.
> > >
> >
> > I'm not sure to follow what you meant. Could you please elaborate?
>
> compatible:
>     items:
>       - enum:
>           - hannstar,hsd060bhw4
>       - const: himax,hx8394
>
> himax,hx8394 is the actual controller and is denoted as fallback compatible.
>

I see. Do you have an example of a panel controller that does this? I
don't see that much value in doing this since you want the DTS to
describe the actual HW and so want the panel I believe.

But also there isn't an of_device_id entry for this fallback
controller compatible string. Feel free to propose that as a follow-up
if you think it is worth doing so.

Best regards,
Javier
