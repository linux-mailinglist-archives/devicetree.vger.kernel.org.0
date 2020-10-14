Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D227628DD56
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 11:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727567AbgJNJX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 05:23:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731193AbgJNJWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 05:22:40 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5142AC0F26DA
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 19:18:19 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id l16so3376219ilt.13
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 19:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2PIPzHQNECtbqpdZG3AKVSkETjljr6p6GmJMHcMJiQ0=;
        b=M6NPdd/MA5tw15Ge+1y1d5p67tW7XAILxRrbuShtIuR2XBNW5qJ7t/XuQU74WCcgAB
         29PrK07+hEPSVnLUL4dP40yDtLGaVrs863SJQ4e58G1jLugIRzmUM1s3afeDTy5Zbr7E
         a3nWP/MATs5+UWiMuyIArjREJ2WnPhH8h/sm+DldqktMGkcIN9OhWwGswwdKnfhXjJvJ
         6MyNO5iJN7LH4d2KkmXMKOdLsGdRbgtn0Xm/ANyPT/Sx7vsQjZbhbJLMikVB6AiJCXsw
         tlq63Ns0OpZbRkgUi15m6gzhnVT8kt1iz+pNfHFCgEXY8/3I2SJVUyQufCfPCah0LX5/
         Syng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2PIPzHQNECtbqpdZG3AKVSkETjljr6p6GmJMHcMJiQ0=;
        b=rq9UJtpMZskmI2gPL9GnPu26PyG2uXB9nXiexp4frUrAXi8/XRBj0mSG3ECvH8+kox
         sqtd8zpkKcxothgkGvfjrTFtC8eXjZtQGzjv2K/fgyv7E84Q4PXFvNVwKlNmu9F4Bi9m
         saGX728ylIRYrp8nPvVy0HUZS+p9n8mQfAiPZY4b7jxTGlAv8JFTVJuO/BHO1TVyaFBX
         atq1dR7xbSpyyADnEUlJmYlQdGwpGlLj8PeJNBO4mUE6Av3QWavYx6e3dhRQrVIjllto
         lKumUV6Ap2v/ZtlV7O0hwuIzb+lbE76lEw9z9ToCW6CnuV5KzOCpnD6hxt5Qz63hQPbY
         KGhw==
X-Gm-Message-State: AOAM531j/AzgTKrAgglTbX+tpIeUn2a6CnJK55DMCJY++Jax6UDnnHH4
        /mr9UL/a75UikLlqEjjF7XLUB9OGa8AyFhBYq8O1yw==
X-Google-Smtp-Source: ABdhPJwve/28VHUtKsLAA9cVcJAeTTS37qn7VC9IhL4O9CNgm2U00SB3kUOMdn00+jkbsyjgY9ENXj5w1FKg5pLhqws=
X-Received: by 2002:a92:c04d:: with SMTP id o13mr1989890ilf.218.1602641898266;
 Tue, 13 Oct 2020 19:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com> <20201008183818.GB2395464@bogus>
 <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360> <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
 <20201013064609.udss7hbdek2of4sw@rcn-XPS-13-9360>
In-Reply-To: <20201013064609.udss7hbdek2of4sw@rcn-XPS-13-9360>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 14 Oct 2020 10:18:07 +0800
Message-ID: <CA+Px+wXwEm+j2AZcaXHtoFUhe9GqaaxMRecQ7X0vu49E2OKH=A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
To:     =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Rob Herring <robh@kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 13, 2020 at 2:46 PM Ricardo Ca=C3=B1uelo
<ricardo.canuelo@collabora.com> wrote:
> On vie 09-10-2020 08:34:21, Rob Herring wrote:
> > I would probably go this route. You could add this level if there's
> > ever more than one codec. However, I'm still not clear what the
> > address represents for the codec. Is it needed? The address
> > space/format is defined by the parent node. So is this defined by the
> > EC? If so, other components don't have an address?
>
> The address represents the physical base address and length of a shared
> memory region from the EC. This seems to be the only component in the EC
> that needs an address AFAICT, so I guess the unit address and the
> intermediate node are needed to make it compatible with the existing EC
> binding.

Correct.  The address represents where the EC codec is located.  The
driver uses the address to find the corresponding shared memory (if
any, depends on the EC codec's capabilities).

In practice, there is at most only 1 EC codec per machine.  In theory,
it can be multiple EC codecs though (multiple microprocessors run EC
OS for example).

The intermediate layer (i.e. codecs { ... }) breaks current code as
you already discussed about that in previous threads:
- of_platform_populate only creates immediate child devices.
- the codec driver expects its parent is EC node.
