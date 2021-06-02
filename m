Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CFB63985D5
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 12:03:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231285AbhFBKFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 06:05:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbhFBKFg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 06:05:36 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93F8BC061574
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 03:03:52 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id f17so886364wmf.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=d17wiHgIe/PqHGM+WdLLvT4l48nPr/I6NgWvbRVuc3A=;
        b=O81t76BtG61kbE2sTAJZj3yHsiZVEcClJqTJgnt+rwp63FR09wlmiOdJHFETPmdyu3
         tG9s5pycra00dAaQFdi505gh4FmqhRiDwLjjTGsB0+UCRyj7w34FEwCkqn0p4LB4AT4z
         wkUuaj3EvdNi58+4vIQBfTxy99nFBzZfAgOJSMMVAYqX01DCEXeBRGtCQ2IjgNKv+RCD
         JkqRIfgvtEmitstihr2JY/9i261kvDQR+QwA8EuIKVpGcJ+nZXxDPCtl56khKD1yHSWp
         N9Qy03c1SN/7oL9DMGewiDmxQqczyhRplnhmL3YmlT+9GBGytylzYjA6bu9IdtCi3/a7
         tKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=d17wiHgIe/PqHGM+WdLLvT4l48nPr/I6NgWvbRVuc3A=;
        b=lm2W/pU6mOpv2amNJc9etKvBAr5nnwPHEQko9hE0kUt0sYi1DihVa3+o27EckB2szk
         PH+NXGEg1bZNWhAd4C8hQ3AvQ+ClaPe/E7kNyyp5O4Kf0yqQM/se0zqxLIHRIAFeBN2S
         /932f/wN37Xicp9jHqnYH5f01uPZbA5RuOZIZZ9iEvI2GePZLPenHfuTj5Rr4uevncOm
         a1qZ+wCVORAwAWT8mSa0NObckP8+gbIDPekHsPanaVyVo6MZ3gImIKhn9T8xlftErfXh
         DahIdXAAeXOWvdXk+7ab8yC0R8468fVZ821ucJ4Q3VF44/vmENvq8nawTIwU9LjzrSyg
         eHgg==
X-Gm-Message-State: AOAM530d+ERl9fyN8PgdkY3wEX7MjvmL5ZuG/6QwVgERiyFkvgBatpgl
        AGbVC3+oC01Gb6HUJ6pGsmnvPw==
X-Google-Smtp-Source: ABdhPJxrlQkPEbOekwHp0BZFary1w5p0fqEJ/xkktoICg00nU1vy7wHl9B+lFt1dDufs0KpRYvaXtA==
X-Received: by 2002:a1c:a484:: with SMTP id n126mr4406798wme.34.1622628231264;
        Wed, 02 Jun 2021 03:03:51 -0700 (PDT)
Received: from dell ([91.110.221.214])
        by smtp.gmail.com with ESMTPSA id 30sm6488185wrl.37.2021.06.02.03.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 03:03:50 -0700 (PDT)
Date:   Wed, 2 Jun 2021 11:03:49 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Robert Marko <robert.marko@sartura.hr>
Cc:     Michael Walle <michael@walle.cc>, Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luka Perkov <luka.perkov@sartura.hr>, jmp@epiphyte.org,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Subject: Re: [PATCH v2 3/4] dt-bindings: mfd: Add Delta TN48M CPLD drivers
 bindings
Message-ID: <20210602100349.GG2173308@dell>
References: <20210524230940.GA1350504@robh.at.kernel.org>
 <20210525074649.GC4005783@dell>
 <CA+HBbNFxCKbitVctbUisuZXJWxaZp0cswNNNTgD0UxQZ1smJbg@mail.gmail.com>
 <20210526075255.GG4005783@dell>
 <CA+HBbNGSH9AvRo0Hwa5pWea94u0LwJt=Kj7gWjSAV9fS5VFr0A@mail.gmail.com>
 <20210601081933.GU543307@dell>
 <50ced58164999f51a8c8b9c8dc01468e@walle.cc>
 <20210601135816.GG543307@dell>
 <20210601144826.GI543307@dell>
 <CA+HBbNFZhF1+B-JsHyeybcF96NQDA+afoWt-pMSKrtYdDYNgZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+HBbNFZhF1+B-JsHyeybcF96NQDA+afoWt-pMSKrtYdDYNgZQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Jun 2021, Robert Marko wrote:

> On Tue, Jun 1, 2021 at 4:48 PM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Tue, 01 Jun 2021, Lee Jones wrote:
> >
> > > On Tue, 01 Jun 2021, Michael Walle wrote:
> > >
> > > > Am 2021-06-01 10:19, schrieb Lee Jones:
> > > > > Why do you require one single Regmap anyway?  Are they register banks
> > > > > not neatly separated on a per-function basis?
> > > >
> > > > AFAIK you can only have one I2C device driver per device, hence the
> > > > simple-mfd-i2c.
> > >
> > > Sorry, can you provide more detail.
> >
> > I'd still like further explanation to be sure, but if you mean what I
> > think you mean then, no, I don't think that's correct.
> >
> > The point of simple-mfd-i2c is to provide an I2C device offering
> > multiple functions, but does so via a non-separated/linear register-
> > set, with an entry point and an opportunity to register its interwoven
> > bank of registers via Regmap.
> >
> > However, if you can get away with not registering your entire register
> > set as a single Regmap chunk, then all the better.  This will allow
> > you to use the OF provided 'simple-mfd' compatible instead.
> >
> > Now, if you're talking about Regmap not supporting multiple
> > registrations with only a single I2C address, this *may* very well be
> > the case, but IIRC, I've spoken to Mark about this previously and he
> > said the extension to make this possible would be trivial.
> 
> This is my understanding, that you cannot have multiple regmap registrations
> with on the same I2C address.
> At least that is how it was the last time I tested.
> That is why I went the MFD way.

I've just clarified with Mark.

There does not appear to be such a restriction.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
