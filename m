Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81FC26415A8
	for <lists+devicetree@lfdr.de>; Sat,  3 Dec 2022 11:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbiLCKS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 05:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiLCKS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 05:18:56 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E531643AF0
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 02:18:49 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1p1PbV-00075A-UP; Sat, 03 Dec 2022 11:18:41 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 2/3] drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
Date:   Sat, 03 Dec 2022 11:18:41 +0100
Message-ID: <7746700.MhkbZ0Pkbq@diego>
In-Reply-To: <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com>
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-3-macroalpha82@gmail.com> <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

Am Samstag, 3. Dezember 2022, 10:03:42 CET schrieb Linus Walleij:
> On Tue, Nov 29, 2022 at 6:29 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Support Samsung AMS495QA01 panel as found on the Anbernic RG503. Note
> > This panel receives video signals via DSI, however it receives
> > commands via 3-wire SPI.
> >
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> 
> > +config DRM_PANEL_SAMSUNG_AMS495QA01
> > +       tristate "Samsung AMS495QA01 DSI panel"
> 
> I am always a bit careful with these "Samsung" panels. Well the
> panel is surely Samsungs and usually it has that name, but very often
> it is mainly a display controller, made by someone else, then a physical
> panel slapped on and then the actual display controller is obscured.
>
> Typical example:
> panel-novatek-nt35560.c handing Samsung ACX424AKP.
> 
> If you know the actual display controller, then the driver should be
> renamed after that, but keeping the compatible and DT bindings
> as is. The reason being that tomorrow there is an LG panel
> using the same display controller and then we don't get duplicate
> code.
> 
> It feels like this is a Novatek controller. Just a feeling I have.
> Mostly from the way it does brightness using ELVSS and
> gamma. But who knows.

Though in past projects I've seen the same display-controller used with
different panels (and different dsi-init-sequences). In one project the
display manufacturer even EOL'ed the first panel and provided a replacement
with said same display controller (and a different init) - but the
datasheets for the display-controller were for the same chip still.

So while in my experience the actual display name from the manufacturer
identifies the display + controller combo, I don't really think you can
go the other way with the controller name identifying the display+controller
combination.

But that whole display business is arcane anyway, so this also only
stems from past projects and not factual knowledge ;-) .


Heiko



