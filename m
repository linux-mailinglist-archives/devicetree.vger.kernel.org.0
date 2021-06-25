Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 036643B4000
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 11:05:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbhFYJIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 05:08:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231283AbhFYJIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 05:08:07 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E13AC0613A3
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 02:05:47 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id d76so3575613ybc.12
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 02:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=benyossef-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9Ck+JECuHhF+XibLFt/1GgUC0k/E3vtnQI/RdAO/KzU=;
        b=0s46wxSkFGOIbh2ZSlXP4QzYuh3VOlHMQ0Zh5IQtJOp/+c7HSH4NK6s+r6q78liNfM
         TH98ALgxYuhrrGbkLr6Tb7QJD6Tu7WYrqBB3EnEHY2X5fJQ6UQ54Lk/AQiqNZvcFMpXv
         FZbLMkY33nfbSShMPFHwV1rWDAA3nFNBukwFvQTrvv89YkG2jD7gtBMu175tyJk0+i9s
         TX3SIZdD338CEP9wZ7GC+uuloeCZEANPN+E+AxVXj4Ne5qMsB+1XWvzNgKrQFGWfP6Nn
         H0XDFk+8B18ibahYyVFk8Yiyn0DYQplKBIzOIhgCfdEwimNy6Ao3jCBwhDRr3uF0gPeF
         GLMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9Ck+JECuHhF+XibLFt/1GgUC0k/E3vtnQI/RdAO/KzU=;
        b=DXxJB3xoPvcE6gLvgKXtz08o7B9VB71h6NzTmruoi7IHDa+L76h9bR/FxN1mllSOET
         Ildk0ZaxVZ6/wkhrw8QD4C5gLtk1cyGIIxERwjWVq2p/aFmbCLkX5RAGeUepoo3s9uRn
         6pHHHdv7LG5h0Bmf5/wMWXK7/9vtchjsQsxg69atuWX2qI9xy3UgfVaFLKenIUNL9+Px
         Jp89gKCpicVJRMwKMIzteDDIeemG57jAzPaWzsTmdSnFpNGqDpdwhtoOrs7+ecjDh21X
         myLK9nfD1jPuUYGTqOGDo1T0lS1tO8eQGL0nXZhWJocjl9yUyyuNk6tamikMhHt2reAU
         JY6Q==
X-Gm-Message-State: AOAM532LJE9Vra1UkhenxbYi8ur+6yKN7CdAaEAilObLj1QoCZlAA0iM
        jvVFM0vmIx7LZBOKGDIk3zQ5E7IkliSAEAjnSCyr6A==
X-Google-Smtp-Source: ABdhPJwT7mBTxFB2KCvGaabPBBhyDKh95AwbFKMcPsKCU7iReq/PJgisg+Lo2VGqUXkL6+aa9/rh5cwJxozsPm/VlP8=
X-Received: by 2002:a25:618a:: with SMTP id v132mr11371392ybb.129.1624611946586;
 Fri, 25 Jun 2021 02:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <ab361a862755e281f5fef67b3f678d66ae201781.1623413974.git.geert+renesas@glider.be>
 <20210624211348.GA1991366@robh.at.kernel.org>
In-Reply-To: <20210624211348.GA1991366@robh.at.kernel.org>
From:   Gilad Ben-Yossef <gilad@benyossef.com>
Date:   Fri, 25 Jun 2021 12:05:35 +0300
Message-ID: <CAOtvUMdhDhbvL8M8HkVi+4d1jXPpw4ORJTBooU0V8Q6JBqSO+g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: crypto: ccree: Convert to json-schema
To:     Rob Herring <robh@kernel.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jun 25, 2021 at 12:13 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 11 Jun 2021 14:20:17 +0200, Geert Uytterhoeven wrote:
> > Convert the Arm TrustZone CryptoCell cryptographic engine Device Tree
> > binding documentation to json-schema.
> >
> > Document missing properties.
> > Update the example to match reality.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  .../bindings/crypto/arm,cryptocell.yaml       | 53 +++++++++++++++++++
> >  .../bindings/crypto/arm-cryptocell.txt        | 25 ---------
> >  2 files changed, 53 insertions(+), 25 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/arm,crypto=
cell.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/arm-crypto=
cell.txt
> >
>
> I'm applying this version which is dual licensed as that is the
> preference of my employeer, Arm, who is the copyright holder here. I'll
> sort this out internally with Gilad.

If it's fine with you, Rob, it's fine with me.

I'll sort out the procedure internally. Sorry for the previous noise.

For what it's worth:

Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>

Gilad

--=20
Gilad Ben-Yossef
Chief Coffee Drinker

values of =CE=B2 will give rise to dom!
