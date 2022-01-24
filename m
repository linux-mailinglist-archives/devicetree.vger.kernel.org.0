Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C01749850B
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 17:42:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243756AbiAXQmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 11:42:54 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:46932 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241174AbiAXQmx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 11:42:53 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 98FFDB810D6
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 16:42:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55EA8C340E7
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 16:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643042571;
        bh=qL860gmhybw0RwRW2CXJhoskfkx6qt64gxxg6rrAx6g=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=pvJD4N+OlaFUev3481wPPqyF5Q26kcEiwhFW6Bd5Oa74SzAV7zQkKa+fwqTqrAjZ0
         YFwFZXTb6BxzvDONKh1ubbmSnhQibJLuO16NaFlSW17/6MOqYad7vSwgQNYiH6loSL
         pqrYWJRWDP65LMSjaR+YWLynD1d+RFSbnMVbCh004lMzI8JEgMcsn0DAuxtewUPC7z
         +x4lkXzH9UGYN9Guv3gMVpXde3WUA8VDFwYWm1WndQPuWaBnej+smLglI6uQtDQ+tX
         mOrSA90vO+TYQVBiPfbRwuEj4j9nMOIjOYCUvt0MVZ4fLdJKPN3oFyKz+Rhe8j0FNI
         FsRgpsKwQxUrg==
Received: by mail-ej1-f47.google.com with SMTP id h7so23018318ejf.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 08:42:51 -0800 (PST)
X-Gm-Message-State: AOAM5336YkQo7AWS6P0Zij7XBPaC2cdCSniU2Ul97ZijD7AGvDONlA06
        XPs7ZYlLhN5KyzdQaZBuWRaOgIeX61m/asuOaw==
X-Google-Smtp-Source: ABdhPJymYyBoGJsLODnx4lBgNOqp/tIq+z9HlPGhjAnZhYiQkM0Ukmk6vbI9yMasgkAQWW5/ksqQghOEmej/ABaBGX0=
X-Received: by 2002:a17:906:9b93:: with SMTP id dd19mr12770841ejc.14.1643042569634;
 Mon, 24 Jan 2022 08:42:49 -0800 (PST)
MIME-Version: 1.0
References: <20220123172520.48741-1-noralf@tronnes.org> <20220123172520.48741-2-noralf@tronnes.org>
 <CAL_JsqJU_WFeJDt5jqLN9BQN2j_TCf3+0hKvbNSYwmg-2DSF=Q@mail.gmail.com> <931fab73-3a91-fda0-4af3-b48a1ad3c742@tronnes.org>
In-Reply-To: <931fab73-3a91-fda0-4af3-b48a1ad3c742@tronnes.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 24 Jan 2022 10:42:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLiw42zfaRPmszs2bmGbAcL5STSTVUtP0PyWnm=CaG8ug@mail.gmail.com>
Message-ID: <CAL_JsqLiw42zfaRPmszs2bmGbAcL5STSTVUtP0PyWnm=CaG8ug@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
To:     =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc:     maxime@cerno.tech, thierry.reding@gmail.com, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 24, 2022 at 10:28 AM Noralf Tr=C3=B8nnes <noralf@tronnes.org> w=
rote:
>
>
>
> Den 24.01.2022 17.08, skrev Rob Herring:
> > On Sun, Jan 23, 2022 at 11:25 AM Noralf Tr=C3=B8nnes <noralf@tronnes.or=
g> wrote:
> >>
> >> Add binding for MIPI DBI compatible SPI panels.
> >
> > I'm sure we already have MIPI DBI panels. What's this for?
> >
>
> It aims to use one driver to cover all MIPI DBI panels where the
> controller setup is loaded from userspace in a firmware file.

What's the solution when the user wants a splash screen in the
bootloader and also wants multiple panels supported?

Also, 1 driver doesn't dictate 1 compatible. A one to many
relationship is fine and makes the decision entirely the OS's.

> The cover
> letter points to the discussion where Maxime proposed this:
>
> https://lore.kernel.org/dri-devel/20211129093946.xhp22mvdut3m67sc@houat/

The proposal there is:

> compatible =3D "panel-spi";
> model =3D "panel-from-random-place-42";

The same thing can be accomplished with this:

compatible =3D "panel-from-random-place-42", "panel-spi";

What's the advantage of hijacking 'model'?

Rob
