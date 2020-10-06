Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27EBF2853EB
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:35:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725970AbgJFVfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:35:45 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:32785 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725947AbgJFVfp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:35:45 -0400
Received: by mail-oi1-f195.google.com with SMTP id m7so218636oie.0
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:35:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=H90zUV12QpAhLSai+s8goOQGcLl66BvDd2c6eA0ZeWo=;
        b=Hsw/6KFN+QPQ1AwfeveEWx8Yk1jeyXBzXPQCRTiCPhCdW6+vhhfWNc41szTFPWQ5vV
         EQ9dnezD70mai6NmhYBxiUhIKr+dqSYNtrbbn5JMc2ESBXfC8Cw74msuKVi9wQaUlmJM
         iLDZIX5IR/MHpOEBqG1YldYXHEwWKOkmc5TS5JcyMtZufxQuEAy04CT2+IcmHzleJTlT
         YjQia12fOAl3G6nlv8+XFuifsCgdn7ElyWkh/5iIjsTpbeYrMW88zzDwa4ZbDPI7xIZZ
         m2cn7MO+kaslMk0MLIXNSDl3F2RhHoD3/dQuxDw8h9NMBYCAqEpyxByZETvIK6mWAYLW
         jnnQ==
X-Gm-Message-State: AOAM531NsOstBwWt3v9xY+Cdtj8ypz6rnvmlvkQ9yfAbl8kScpBwljgF
        e1Q81RvutPQ1fFY3g36j/qTxmlSSeGJU
X-Google-Smtp-Source: ABdhPJxgRY2D1XwG5S7C2QMsuWE9VKcr33DUdM+UYTSmRH2u2C683VSiQxIiVVzK5m1Bpacgvi5RvQ==
X-Received: by 2002:aca:3d03:: with SMTP id k3mr174049oia.114.1602020144546;
        Tue, 06 Oct 2020 14:35:44 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f70sm1711587otf.32.2020.10.06.14.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:35:43 -0700 (PDT)
Received: (nullmailer pid 2887404 invoked by uid 1000);
        Tue, 06 Oct 2020 21:35:43 -0000
Date:   Tue, 6 Oct 2020 16:35:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing
 properties
Message-ID: <20201006213543.GA2881522@bogus>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com>
 <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
 <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 06, 2020 at 08:13:17AM +0200, Ricardo Cañuelo wrote:
> Hi Rob,
> 
> thanks for reviewing the patch. Find my comments below:
> 
> On lun 05-10-2020 10:37:09, Rob Herring wrote:
> > > +  '#address-cells':
> > > +    enum: [1, 2]
> > > +
> > > +  '#size-cells':
> > > +    enum: [0, 1]
> > 
> > This doesn't really make sense. Either there's a size or there isn't.
> > 
> > [...]
> > 
> > > +  "^regulator@[a-f0-9]+$":
> > > +  "^ec-codec@[a-f0-9]+$":
> > 
> > What does the number space represent and is it the same for each of
> > these? If not, then this is kind of broken. There's only 1 number
> > space at a given level.
> 
> I see what you mean. In the regulator, the unit-address means the identifier
> for the voltage regulator and I guess it could also be defined as
> simply "^regulator@[0-9]+$". In the codec, though, it's a physical base
> address.
> 
> The reg property in these has a different format, that's why I
> defined #address-cells and #size-cells above to have a range of values
> instead of fixed values.

But in any given DT it is going to be fixed, so that doesn't help you.

> >From your experience, what's the best course of action here? I can't
> find a driver managing google,cros-ec-codec yet, although the binding
> was submitted in January.

Normally, you just add another layer with a 'regulators' and/or 'codecs' 
node. Do you really have more than 1 codec?

Rob
