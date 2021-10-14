Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE9B42D855
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 13:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230454AbhJNLlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Oct 2021 07:41:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231186AbhJNLlo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Oct 2021 07:41:44 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22D3C06174E
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 04:39:39 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id r19so25176423lfe.10
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 04:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0dmeydzjhaUi1kEyRO+tb4cDfJwd9a/eF0Dg2+vEquw=;
        b=2AueeCKKy9ILP/UiZl+F8fvvaaVmLXBx/d4uZ6k98hdUJIVBfA5QWLLkSNdx6RYdr+
         jmMs4hbEAA+zDBy5zNRriTNaQaTIdgg1FFQIiV/bBj2pO1WWZHw4EwC78D/uBB71FTjp
         DrS63xLNcpD9lxKqNt6J4U7r+KznQLRuBtA+fd0t/i2N1f7Ic4ZcGV6a0C9pyD8IxBt4
         ZEK5Yb372dYpgGhSzgI5domlkoqHIEPdNsRKszt8MWCFlY2teqPjUTwszoJtMpuMyrRU
         bo0YB8DbswvqXB4AToZIMJ9nU6DMgd/rveJsLUpcyxUmN6uLVlmes+b99Pr7UQ5bDeMl
         uw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0dmeydzjhaUi1kEyRO+tb4cDfJwd9a/eF0Dg2+vEquw=;
        b=WgkH9hr9yvZPRmp5AU89qtKyb8wO3IKmyvl8vWfPLtzEJ5HHBXeAh9DrquzxUi26s8
         6hMosezeXNO4tqQxebfkqWiWVi6Y2FdMT7TLcRMrpk34tJ+RYBja8Er5kTgcddkTCkKG
         AjrSP+8N8tn3uXeigK/61+2q6kIbKl8xKgSv3/T1kp+qTFDSjTWVS8BbHzGiS35qZO8c
         ZBcnKBqcdS56dii8efAUgRh6gvBSHIAUigmb8eAm6ZZC1KLAG1nzpUjAQV2guBcZNY3I
         Cb37Y1MSQWRNvDn0ceym1MP6T8rCsbrYk49NXoL3qClMhptub135tdzMJcPZpa2/G1KM
         /w9A==
X-Gm-Message-State: AOAM5320EpzXPFzv2t77tnonLRA6WVphtKxZ5jbSgLQ1NnKj+pvmvtZY
        P2U00SN7rVycwle1b2N/2MZBeS1GcOgw/zo2
X-Google-Smtp-Source: ABdhPJxepoSD617Qvj7aawKidSUQxI0Uz5yaRoelAIbImt2LucJ3idusCV/Mtxdzuim+F8F/+Y/lsw==
X-Received: by 2002:a05:6512:3b7:: with SMTP id v23mr4774988lfp.127.1634211577829;
        Thu, 14 Oct 2021 04:39:37 -0700 (PDT)
Received: from localhost (h-46-59-88-219.A463.priv.bahnhof.se. [46.59.88.219])
        by smtp.gmail.com with ESMTPSA id r14sm206650lfe.13.2021.10.14.04.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 04:39:37 -0700 (PDT)
Date:   Thu, 14 Oct 2021 13:39:36 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: adv748x: Convert bindings to json-schema
Message-ID: <YWgW+ArZ48NeHr5F@oden.dyn.berto.se>
References: <20211012183324.717975-1-niklas.soderlund+renesas@ragnatech.se>
 <CAMuHMdX8LzmksfB85iSMX4+RYq=SYTamw5C3GNgbAV+9f1uAyQ@mail.gmail.com>
 <YWgK3c+8wHWw8IYM@oden.dyn.berto.se>
 <CAMuHMdWsLzLqVNdt2EGD20fMXxb3R70Hx3EyPHwLsFc82qAG8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdWsLzLqVNdt2EGD20fMXxb3R70Hx3EyPHwLsFc82qAG8A@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On 2021-10-14 13:07:30 +0200, Geert Uytterhoeven wrote:
> Hi Niklas,
> 
> On Thu, Oct 14, 2021 at 12:48 PM Niklas Söderlund
> <niklas.soderlund+renesas@ragnatech.se> wrote:
> > On 2021-10-13 17:08:44 +0200, Geert Uytterhoeven wrote:
> > > On Tue, Oct 12, 2021 at 8:48 PM Niklas Söderlund
> > > <niklas.soderlund+renesas@ragnatech.se> wrote:
> > > > Convert ADV748X analog video decoder documentation to json-schema.
> 
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/adv748x.yaml
> 
> > > > +allOf:
> > > > +  - if:
> > > > +      properties:
> > > > +        compatible:
> > > > +          contains:
> > > > +            const: adi,adv7481
> > > > +    then:
> > > > +      properties:
> > > > +        interrupts:
> > > > +          minItems: 1
> > > > +          maxItems: 3
> > > > +
> > > > +        interrupt-names:
> > > > +          minItems: 1
> > > > +          items:
> > > > +            - enum: [ intrq1, intrq2, intrq3 ]
> > > > +            - enum: [ intrq1, intrq2, intrq3 ]
> > > > +            - enum: [ intrq1, intrq2, intrq3 ]
> > >
> > > They can really appear in any order?
> >
> > Yes, as not all interrupt lines may be wired up. It would be nice to
> > enforce that intrq2 must come before intrq3 if both are wired but I'm
> > not sure how to express that.
> 
> You mean
> 
>     items:
>       - const: intrq1
>       - const: intrq2
>       - const: intrq3

Will this not enforce that if intrq2 is present intrq1 must be too?

> 
> ?
> 
> If the first two might be exchanged, you can still fix the last one:
> 
>     items:
>       - const: [ intrq1, intrq2 ]
>       - const: [ intrq1, intrq2 ]
>       - const: intrq3

Same here, will this not fail if only intrq3 is given?

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Regards,
Niklas Söderlund
