Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E2663C9D8F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 13:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240792AbhGOLQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 07:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232743AbhGOLQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 07:16:03 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76291C061762
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 04:13:10 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id i94so7260827wri.4
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 04:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=QoQggKBNG73iiz+oJUCzC+hCeqXPg+AUIOeXU08+Occ=;
        b=IGfepieNQ0u1yqgOqkhEypF2vO7Q3TggAmZXP599KQsou3hURUgB57YwgGdynqj6bp
         yed9tvwxAvKPXhQP41IsssYoiUswpVfJ/gdBFK0DAiuoJOcOYO1FZJ2tRxBZ/R5JlfBO
         PvyYtivsjIEhe63Wx64Q6TBNawGPaaabYLzqPY+O5TZi2OsmJ2nuomiqf1nCi/dzOb8g
         /iOTUB4akDlc2jKRaBCc/06a9oXHXKcUZmnHuQaB8e072AxnXaUERakTprx92/9hqgwi
         vJO+1akL1aKtirj9cX8+jFfaFoSM0LiZfbgeOgr7guEjNmSmxx9DL4+i4FRSwYULbkL/
         QhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=QoQggKBNG73iiz+oJUCzC+hCeqXPg+AUIOeXU08+Occ=;
        b=W4OuCykGLaAWvSaH29WuTUbGduX/M/PtEQfCnbtMPQMO3gq+t6ltbwpM3ucKCTiZH6
         bpkcPQ+de04IAMXI5KSUnjTYvwSfPoqOx/ROQ5YwSPxKjZ7U76QFYTasSPnjHJkMjH4u
         5B060W4G03VWX828ZzGLY6bEkpPzwZPmc3IF6/4/ZQuXntC2CTAEPYoCK4rxHMsIMVUH
         klWewGDW4AVlx9P4QVe0xnT3BCWanrJD5Ex6uk9rJVYH7j/xxPVNE/3PJwxe6vymJG5P
         4xHwqYaw6L/r6vKqSBlY/tFhcHX0Xi5VvaIhGORQkcmSKTF860iNqwUxrLPkj/iDQgOd
         Dwsg==
X-Gm-Message-State: AOAM5319q9XPvGLUBPyNQ4Mw1LCZaGuk5AK+M/1TtTeglCAEJxBV4Uem
        ccpFDxlswKhN1x3H5gRBEyr6nO5HuANf8A==
X-Google-Smtp-Source: ABdhPJwwofJHQaawhKaQNyVZuYi/fz5W8fxZqgQBQ9bAdtGIhyTdVyQ0iiBguurV0/a0JDKR4pZY9g==
X-Received: by 2002:adf:c448:: with SMTP id a8mr4807599wrg.103.1626347589058;
        Thu, 15 Jul 2021 04:13:09 -0700 (PDT)
Received: from google.com ([109.180.115.218])
        by smtp.gmail.com with ESMTPSA id v9sm4672834wml.36.2021.07.15.04.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jul 2021 04:13:08 -0700 (PDT)
Date:   Thu, 15 Jul 2021 12:13:06 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Emil Renner Berthing <kernel@esmil.dk>,
        Sebastian Reichel <sre@kernel.org>,
        "Andrew F. Davis" <afd@ti.com>, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] mfd: tps65086: Make interrupt line optional
Message-ID: <YPAYQvhHwPOrnyik@google.com>
References: <20210625224744.1020108-1-kernel@esmil.dk>
 <20210625224744.1020108-3-kernel@esmil.dk>
 <YO1aSSSankv+cAru@google.com>
 <20210714203843.GA3476672@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210714203843.GA3476672@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Jul 2021, Rob Herring wrote:

> On Tue, Jul 13, 2021 at 10:18:01AM +0100, Lee Jones wrote:
> > On Sat, 26 Jun 2021, Emil Renner Berthing wrote:
> > 
> > > The BeagleV Starlight v0.9 board[1] doesn't have the IRQB line routed to
> > > the SoC, but it is still useful to be able to reach the PMIC over I2C
> > 
> > What is still useful?
> > 
> > The GPIO and Regulator drivers?
> > 
> > > for the other functionality it provides.
> > > 
> > > [1] https://github.com/beagleboard/beaglev-starlight
> > > 
> > > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > > ---
> > >  .../devicetree/bindings/mfd/ti,tps65086.yaml  |  3 ---
> > >  drivers/mfd/tps65086.c                        | 21 ++++++++++---------
> > >  2 files changed, 11 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/mfd/ti,tps65086.yaml b/Documentation/devicetree/bindings/mfd/ti,tps65086.yaml
> > > index ba638bd10a58..4b629fcc0df9 100644
> > > --- a/Documentation/devicetree/bindings/mfd/ti,tps65086.yaml
> > > +++ b/Documentation/devicetree/bindings/mfd/ti,tps65086.yaml
> > > @@ -87,9 +87,6 @@ additionalProperties: false
> > >  required:
> > >    - compatible
> > >    - reg
> > > -  - interrupts
> > > -  - interrupt-controller
> > > -  - '#interrupt-cells'
> > 
> > I can't say that I've been keeping up with the latest DT binding
> > changes, but shouldn't these lines be relocated into some kind of
> > optional listing?
> > 
> > Or are optional properties omitted from documentation?
> 
> Optional properties are the ones not listed in the 'required' list.

Ah, so they are already documented somewhere else in the file?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
