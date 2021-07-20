Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BFB83CFE4F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 17:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237619AbhGTPO6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 11:14:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241705AbhGTOw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 10:52:29 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCC51C0613E9
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 08:32:52 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id u1so26525183wrs.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 08:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=y06R/0eT64/snTUFHobmbHosiuAMtQLzFtaIF77YTug=;
        b=YhYegMtKNYPb7xq7sv3ppy3oiIKVCixO01NeWUBaUCvktmA/r28jh/UYGiTC30w9OW
         u+olDDmVVJbncoluIzTY5pqBNfNkb5rw3L6lzXWNJ2aJqf0sx2+Wuolzv1Vez+o68gvg
         I+AoXvaAAf2nu4p2lNyAI+PbiTtL4hVL7GzRXT+j7wTJCi6MwJkPxOSqiSuP5+G92EIe
         25TaKZQnh1IAbRw3uRbxlKg0JgytouGJFe8DWmtDJbrtIXyO4Pyvfr977HypsmNvlXX5
         etuGC6Rm8TJwBC/bNv0dgy/1C19Kj4oDL9delpu6Swc8MavFKkkyKqNDSTYE2JOgbGxM
         JSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=y06R/0eT64/snTUFHobmbHosiuAMtQLzFtaIF77YTug=;
        b=AJgDRg81kP9OnM9jae6COmPYLsyOAlLueEb+7Myji9zakAmto3YdFlaI/zSwXHZI3+
         8rbeu14WGRrzzZ8xpdUUu9n6v6IR1ZsWT56g/xuSo6IJ7RI4JpxAlM0Oo9oYjC/0k/Tj
         xdqyFME8c3B4OReO+NW7AGad53T/9fSvYi5ct37/8JeULVCZ+6RdHpOcpGAClzFj3Evc
         O1yz13No+BZciorxqixTcUCtMLaZv8n88JeXDVddCbufiJ1NzBCqloFqLXaCdgd/lwW2
         b9So/ZNz7BJ7EKkFMNcS/ijtoRqfpLaJRW3uHHbUTZq4aLZDbICowZCL4atkHE+hrLHd
         g/YA==
X-Gm-Message-State: AOAM530+JuSzWNmbujcz1gn5TOUwOyzPpBNOgnkbDS53bSaAfvbRIHHI
        C6mMJ4CTKtZsx1gIUIr52bOq4g==
X-Google-Smtp-Source: ABdhPJxrEYEfOCZ7X2e5jEkeAnhzsFbTZ1DrJExNijXr3c/wQ4kPbqkKIBgFJjoUjTybBXyidIHz3w==
X-Received: by 2002:adf:f949:: with SMTP id q9mr35442776wrr.178.1626795171435;
        Tue, 20 Jul 2021 08:32:51 -0700 (PDT)
Received: from google.com ([31.124.24.141])
        by smtp.gmail.com with ESMTPSA id n5sm17267949wrp.80.2021.07.20.08.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 08:32:50 -0700 (PDT)
Date:   Tue, 20 Jul 2021 16:32:49 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        "Andrew F. Davis" <afd@ti.com>, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 2/3] mfd: tps65086: Make interrupt line optional
Message-ID: <YPbsodxMk+VvU/3D@google.com>
References: <20210625224744.1020108-1-kernel@esmil.dk>
 <20210625224744.1020108-3-kernel@esmil.dk>
 <YPbmmqfOuE5w6EgW@google.com>
 <CANBLGcy_28q23vRJk9=UZR_Feeqod-ETET=v4Ub=35edySH7SA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANBLGcy_28q23vRJk9=UZR_Feeqod-ETET=v4Ub=35edySH7SA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Jul 2021, Emil Renner Berthing wrote:

> On Tue, 20 Jul 2021 at 17:07, Lee Jones <lee.jones@linaro.org> wrote:
> > On Sat, 26 Jun 2021, Emil Renner Berthing wrote:
> > > The BeagleV Starlight v0.9 board[1] doesn't have the IRQB line routed to
> > > the SoC, but it is still useful to be able to reach the PMIC over I2C
> > > for the other functionality it provides.
> > >
> > > [1] https://github.com/beagleboard/beaglev-starlight
> > >
> > > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > > ---
> > >  .../devicetree/bindings/mfd/ti,tps65086.yaml  |  3 ---
> >
> > This is not present in my current tree.
> >
> > Looks like it's still *.txt.
> >
> > Am I missing a patch?
> 
> Yes, the first patch in the series converts that to yaml. I'm quite
> sure I had the same list of recipients on all 4 mails in the series,
> so don't know why that should be missing.

Oh, it's not marked as 'important' because it has open review comments
on it.

Just have this for now then:

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
