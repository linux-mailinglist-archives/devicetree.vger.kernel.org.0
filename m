Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBC82930E7
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 00:04:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387770AbgJSWEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 18:04:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:58660 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387757AbgJSWEB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Oct 2020 18:04:01 -0400
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0EFC922384
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 22:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603145041;
        bh=WBxPU3YohQAIr0UzV6DU7fWvPIhGAkcJTIC2AZUs7ng=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=zi43O5PT/3HY0fCp/F0EDq9ginX8uuiSFbSiN5JM0zWy6JRoQFm/jLnJWp53wW9Q6
         cDhfYBam5LwqV/h/EU5dvxBvGRiwASM62QVOK5lQsmWf5wWpJhxirVOcXmBkO0ZHS2
         OmC3+d+ucmHQYgb9wfXkTfq9oGlaIonYAR8ghEvE=
Received: by mail-ot1-f43.google.com with SMTP id n11so1342541ota.2
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 15:04:01 -0700 (PDT)
X-Gm-Message-State: AOAM531yu/ApCKUiW9KqqVzRFqQkLJz7utE6UXPJ7Fopbw0Es7ZkkzJQ
        2/AQNmcck81zEKajBQfvAn02/V8+JxFeRWNo/A==
X-Google-Smtp-Source: ABdhPJwBY+VRyaJuZ4UsEGF4SP2lyhc+KgtqKs/qxfHE9ZI7JsFpUvG8NIfLhWpTw3bmQfT81VG0vVoz24EIGylkQ84=
X-Received: by 2002:a9d:7993:: with SMTP id h19mr1469970otm.129.1603145040317;
 Mon, 19 Oct 2020 15:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <878se1vsy6.wl-kuninori.morimoto.gx@renesas.com>
 <875z95vsx2.wl-kuninori.morimoto.gx@renesas.com> <20200908232225.GA1122966@bogus>
 <87eemrlx15.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87eemrlx15.wl-kuninori.morimoto.gx@renesas.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 19 Oct 2020 17:03:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJDmw3929BxS2wroVoio6EP5QZ5bC3bJHEckLwfo6wP8g@mail.gmail.com>
Message-ID: <CAL_JsqJDmw3929BxS2wroVoio6EP5QZ5bC3bJHEckLwfo6wP8g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ASoC: dt-bindings: renesas,rsnd: switch to yaml
 base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 23, 2020 at 9:40 PM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Rob
>
> > > From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > >
> > > This patch switches from .txt base to .yaml base Document.
> > > It is still keeping detail explanations at .txt
> > >
> > > Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > > ---
> (snip)
> > > +  # For OF-graph
> > > +  port:
> > > +    description: OF-Graph subnode
> > > +    $ref: "audio-graph-card.yaml#/definitions/port"
> >
> > Something like this should work (at the top-level):
> >
> > allOf:
> >   - $ref: "audio-graph-card.yaml#
>
> Hmm.. it will be error, see below (A).
> How to solve it ??

All the 'allOf's have to be grouped.

> (I will keep to use above style)
>
> > > +# use patternProperties to avoid naming "xxx,yyy"
> > > +patternProperties:
> > > +  "^rcar_sound,dvc$":
> >
> > None of these are patterns.
>
> As always happen, "xxx,yyy" style will be error for me without patternProperties.
> What is wrong ??

Node names shouldn't really have vendor prefixes, but since you
already depend on this we shouldn't change that. We'll need to relax
the meta-schema, but for now it's fine as-is.

Rob
