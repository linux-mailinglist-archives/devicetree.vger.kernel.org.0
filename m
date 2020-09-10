Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22726264E16
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 21:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725844AbgIJTAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 15:00:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:33894 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726984AbgIJS5U (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Sep 2020 14:57:20 -0400
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id EB7C221D7E
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 18:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599764239;
        bh=1UcshxVJPp8wBIXjhAIFdQKjgIBJM0nEQkjbHXHHYoI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=nlhzNbRdBEqMj5V7xo0ggBY39I+1n34ZMtDp5CUbxIcTomkiQOQJX8wiR2MBGans/
         2NWr9f3PRmUfMuittvDWiwy0GAgih2q1L4ZO2whaaVCiLME0tuvr2w6G58VtYiTNdI
         knGFXy9X+Xz06+vxIIEQ5E8Q23p6SyfEk9cvrKSk=
Received: by mail-oi1-f176.google.com with SMTP id d189so6912011oig.12
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 11:57:18 -0700 (PDT)
X-Gm-Message-State: AOAM531lzwag6Bv2+Vv5JeDSu1GLF4tlW/GV5qv7dXxrEn5OFnpJtrbt
        eBztmcPP5SFKgmQu/MMEd4fUymNUYZZw6LAk3Q==
X-Google-Smtp-Source: ABdhPJxS7bMy2m9cVZGVwBZW0cmzeeBAd7Q8fxgPADIHPQGAlD9B5/k/zfJ2VRyJPkSICYlB6HlaFns94VNjKPYAg7o=
X-Received: by 2002:aca:fc07:: with SMTP id a7mr938408oii.106.1599764238271;
 Thu, 10 Sep 2020 11:57:18 -0700 (PDT)
MIME-Version: 1.0
References: <878se1vsy6.wl-kuninori.morimoto.gx@renesas.com>
 <877dtlvsxk.wl-kuninori.morimoto.gx@renesas.com> <20200908231422.GA1108858@bogus>
 <87pn6uwhzb.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87pn6uwhzb.wl-kuninori.morimoto.gx@renesas.com>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 10 Sep 2020 12:57:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKA85U8iPPL+bPbbzuA8o=kgetrE+vgCorN5Q-qC86SAg@mail.gmail.com>
Message-ID: <CAL_JsqKA85U8iPPL+bPbbzuA8o=kgetrE+vgCorN5Q-qC86SAg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 9, 2020 at 7:17 PM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Rob
>
> Thank you for your feedback
>
> > > diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
> > > new file mode 100644
> > > index 000000000000..60d7b1504128
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
> > > @@ -0,0 +1,135 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/sound/audio-graph-card.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Audio Graph Card Driver Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > > +
> > > +definitions:
> >
> > Please don't use 'definitions' unless really needed. There's only 1
> > reference to 'endpoint' and 'port' so you don't here.
>
> If this was applied, all audio-graph-card user driver want to use it.

They should reference this schema at the top level, not down in it.

Rob
