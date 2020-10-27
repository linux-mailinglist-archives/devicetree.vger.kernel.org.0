Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 232BC29CB0F
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 22:16:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S373711AbgJ0VQh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 17:16:37 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:39620 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S373706AbgJ0VQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 17:16:36 -0400
Received: by mail-io1-f68.google.com with SMTP id p7so3135135ioo.6
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 14:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pGFs6C8VYOAYY3Cv4pHG5uzsWG4Q+pilWSuMe/kuTqg=;
        b=rVk4X0PMSBLtGuVsOVwaWzLHzbDTC5xNxTrme35jwZ8Yiej919jXchGq3YVEdtyP/V
         Wn4BEj+svXNHms2mqc4wKbc20X1jeaixX+z/9RhBHGHPQE/mNqdI40hTqbx1iEPIHKqs
         GxmdzbroYWUjbdE+JUBT8AuJr45tH/GCVtxb7MFwowcyBKvkZqMLfuBcaT18Gy1mEIH3
         omt8PVhbk3ncIDDqHJ0/UcFTvWCf9AAn/nWDGkweeGmjRhCZOMQ/h882GXmLrHjG+66Q
         yiASH2wZNHPGHBiISbBbDPDuv2Yu5h7WzyQKJUIT8Zr/zTVX+nD2yFlCsuz7F3T+Ske3
         Lalw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pGFs6C8VYOAYY3Cv4pHG5uzsWG4Q+pilWSuMe/kuTqg=;
        b=QmEwp89QgUs4bQBff/rqvs/xHTiATwvEC68u7gTxzV/rKWcUAimmRRS2eNUsQ/R1Cc
         EukVH7GFJPOILXKkNQRmg13kCsAkU6gaFLqnct15qR11FoxUXEQPwCS9daT+WfIXYlmN
         bzb57DdTEMQFPDJuhdS2LmRbE6bLHgisaNjnq2A3pMU5jeH3YbTJ1R+hlkCAsI+Xm8Dn
         7vJepBifbXO3Q+cgEggZmn4nRoOi49g3ctvc3OXvVBJieI3WQhMlEl00nCzaMkDcy2on
         1hskS23Lvfsp+44U05Vb7DLyC3n6WHr7Q0f0208d2rS7zvTMjvrh6StrU57eic7q8xHa
         /0Ww==
X-Gm-Message-State: AOAM530KXixtRX2fQKalK9b/uE7+eJs8SWsvL7hxVJxRK+q7hGPdDYLJ
        Ihu7wDuZbBxxq5LLpx3yEAF/O4DQKjMrbAl89OXeRQ==
X-Google-Smtp-Source: ABdhPJxT0OuVK6OChsnkhKxzrZFXZ6la8BdEkzmBSfiVmcTz1t7A9wQFzJesS9grhn1hO/tuEA2ogczM8pFNFQTQ8Hg=
X-Received: by 2002:a02:b786:: with SMTP id f6mr4336431jam.75.1603833393648;
 Tue, 27 Oct 2020 14:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20201024200304.1427864-1-fparent@baylibre.com>
 <20201026121316.GB7402@sirena.org.uk> <CAOwMV_w5N0_Qgg3MFph1147cbvFP1Y=mUtNjGbcr-Tca4ZJ3yA@mail.gmail.com>
 <20201026172431.GI7402@sirena.org.uk> <CAOwMV_xt=OV6cKqQTZUUSAvYKxUUQZAUywAHtFFHL=E5xVu-Zg@mail.gmail.com>
 <20201026203608.GJ7402@sirena.org.uk>
In-Reply-To: <20201026203608.GJ7402@sirena.org.uk>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Tue, 27 Oct 2020 22:16:22 +0100
Message-ID: <CAOwMV_xUWea81rKFE=zD4xWL3rZ5G8cpWm5xJHT_AX=_frLDRQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: regulator: add support for MT6392
To:     Mark Brown <broonie@kernel.org>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, lgirdwood@gmail.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On Mon, Oct 26, 2020 at 9:36 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, Oct 26, 2020 at 07:38:14PM +0100, Fabien Parent wrote:
> > On Mon, Oct 26, 2020 at 6:24 PM Mark Brown <broonie@kernel.org> wrote:
>
> > > >         .name = "mt6392-regulator",
> > > >         .of_compatible = "mediatek,mt6392-regulator"
>
> > > This is still unneeded, it's just a reflection of Linux implementation
> > > details and should be removed.   The MFD can just register the child
> > > without supplying a compatible and things will continue to work just as
> > > well.
>
> > I'm not exactly sure how it is supposed to work. mfd_add_devices seems
> > to register devices based on of_compatible or acpi_match from the
> > mfd_cell. This platform does not have ACPI so I don't understand how
>
> It should also support unconditionally registering devices, if it no
> longer does so that's a regression in the framework which should be
> fixed.  Looking at mfd_add_devices() I can't see an issue though, both
> ACPI and DT information is optional - the entire DT section in
> mfd_add_device() will be skipped if no of_compatible is specified in the
> cell.  Are you *sure* that the regulator driver isn't running?

You are correct, the regulator driver is running and probes
successfully. From my investigation it seems the failure when removing
the compatible string from the MFD and the DTS is because the
regulator driver does not have a of_node matched since the compatible
is gone. Because of that all the regulators registered by the driver
are not linked to the regulator definitions in the device tree. And
all the drivers that tries to acquire a regulator get -EPROBE_DEFER
because of it.
