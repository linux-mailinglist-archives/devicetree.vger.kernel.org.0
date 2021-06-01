Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D092A3975C3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 16:48:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234066AbhFAOuM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 10:50:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234043AbhFAOuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 10:50:11 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0555EC06174A
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 07:48:30 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id h3so8379894wmq.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 07:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=VBC6p0CYeTEs8LBPbXWO6qCXW99P1wQJJOQ5N5i01VQ=;
        b=f55fOyvgfKVrMZ6UQnW/TFJ97BT7PIjrBGSrf0ub+jmYIYveM/SacTYD/ffCi1gMvy
         dx8UoLwj0/giE/LRl2F15A3HRxak29o+Efm4mX1g3WkiptBHirjkOvAGxhY/pVV9gX6/
         gUBj6RiAzW/jZRPUduBuSH6Z2R79khEBSKbSbbvDcmAJ6htuMk7Qo7PuTod9CVLY4JRd
         a+sqCtPYJDudohhGXcdBN2TthfFLDOcngAhN62joNzcfa1dok5sj7cvtH0QQIbxyK5Ig
         na4SoYMk27DwSowOCkNqj/TsnC8Zcge5EOt8x5elNcfKnBmG9Mm8p+8IMaH7iiwLMwRa
         +dzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=VBC6p0CYeTEs8LBPbXWO6qCXW99P1wQJJOQ5N5i01VQ=;
        b=H69iN2arjCZrt4/Ea6dJdR/VIxw5ozZ2njzeU3KYLw72yFCqCQTFtV0Q3IapOTtXvi
         MQlGiSyifi0QjQXNQglyxFgYrxhiTXupRB4SR+rN7Vs+XVB5nd56h1VYKYB5TF4YQs91
         eLWZ+6yY+bdXxd8/SEjTyTcc1YA/VLi8w4u/zlBdqYA8l9Hzhx+dVLhtl95XpzQYWuz7
         ChfBkgOPCwQLGrJYLHQAoH3ALGcO3bFzuw3SSXhM1m6lkFLT6iuN2PeD7Gnz+bGRd09f
         PyMBbzyQjBFRMtKIKysgStTm/eCdvE2EYYdl1fCl1JuRX/v+Bp0k4TdPonCOD/oR9iTX
         c0BQ==
X-Gm-Message-State: AOAM533SSaoC6bpr8DsxEdaNohXIWWXx0/OpGW5JTMB7KzC6UnCu7Uh+
        32FURnUeY2KREbM36t/YUtSQdw==
X-Google-Smtp-Source: ABdhPJyKyx/OmLkVnsfXkw6GGCEzY1jkBlJAaOeO4cBcuvzhR67UEnNW8PWcyRlGmP0CkoTkW6pt6A==
X-Received: by 2002:a1c:7218:: with SMTP id n24mr302581wmc.104.1622558908619;
        Tue, 01 Jun 2021 07:48:28 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id h1sm3331865wmq.0.2021.06.01.07.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 07:48:28 -0700 (PDT)
Date:   Tue, 1 Jun 2021 15:48:26 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Michael Walle <michael@walle.cc>
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        bgolaszewski@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luka Perkov <luka.perkov@sartura.hr>, jmp@epiphyte.org,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Subject: Re: [PATCH v2 3/4] dt-bindings: mfd: Add Delta TN48M CPLD drivers
 bindings
Message-ID: <20210601144826.GI543307@dell>
References: <20210524120539.3267145-1-robert.marko@sartura.hr>
 <20210524120539.3267145-3-robert.marko@sartura.hr>
 <20210524230940.GA1350504@robh.at.kernel.org>
 <20210525074649.GC4005783@dell>
 <CA+HBbNFxCKbitVctbUisuZXJWxaZp0cswNNNTgD0UxQZ1smJbg@mail.gmail.com>
 <20210526075255.GG4005783@dell>
 <CA+HBbNGSH9AvRo0Hwa5pWea94u0LwJt=Kj7gWjSAV9fS5VFr0A@mail.gmail.com>
 <20210601081933.GU543307@dell>
 <50ced58164999f51a8c8b9c8dc01468e@walle.cc>
 <20210601135816.GG543307@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210601135816.GG543307@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021, Lee Jones wrote:

> On Tue, 01 Jun 2021, Michael Walle wrote:
> 
> > Am 2021-06-01 10:19, schrieb Lee Jones:
> > > Why do you require one single Regmap anyway?  Are they register banks
> > > not neatly separated on a per-function basis?
> > 
> > AFAIK you can only have one I2C device driver per device, hence the
> > simple-mfd-i2c.
> 
> Sorry, can you provide more detail.

I'd still like further explanation to be sure, but if you mean what I
think you mean then, no, I don't think that's correct.

The point of simple-mfd-i2c is to provide an I2C device offering
multiple functions, but does so via a non-separated/linear register-
set, with an entry point and an opportunity to register its interwoven 
bank of registers via Regmap.

However, if you can get away with not registering your entire register
set as a single Regmap chunk, then all the better.  This will allow
you to use the OF provided 'simple-mfd' compatible instead.

Now, if you're talking about Regmap not supporting multiple
registrations with only a single I2C address, this *may* very well be
the case, but IIRC, I've spoken to Mark about this previously and he
said the extension to make this possible would be trivial.

So we have to take this on a device-by-device basis an decide what is
best at the time of submission.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
