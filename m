Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4706738FBF4
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 09:46:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231865AbhEYHsW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 03:48:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231708AbhEYHsW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 03:48:22 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFF19C06138A
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 00:46:52 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id m18so1376526wrv.2
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 00:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=v55P6S5W7xrOd/7SzhygqC9B4BMec90s1TTSAj2EVxE=;
        b=JajTsqVKIfsWuZ1YrQXqPuTRbCnCPA8rGan8mjq6zPyXX2H4MFK5L3fnVH7R22ucVi
         1SYgnolIifkRimEssKJG31YS1HT2fFeZB3zvVt3J9IaFtNnJSThrbl5Yf+TGlZVd59ta
         D+8wOIOStaAQaJ8ifPspoDD77EDjnSSMhTZGTE+EcuAClrkId1vNjEeWZIXmbYNIqMRu
         bWqGjVzBQd+FBecuDWce1Pw2msLiJK67HHr2EGDzSkjMeJs9U583NdjCRPKI9Od2S2rZ
         NDe6OmegGTq7eTb5/TiycCAdK/52GDNoVy+6/062Qq3HZUE4GW8Xp5US/V23Wv48k1Pk
         29lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=v55P6S5W7xrOd/7SzhygqC9B4BMec90s1TTSAj2EVxE=;
        b=cxekbmqc05Fae9G9LOgXSvJRUqtD2j+SLesChqZG32SBfvgKivgQFThbt4dOsS5YFo
         1D0abiGFYukLkPm5aRcj0kfdkoGf6IIZWemuHMFSmkE9WiMyqr1L9t7Ycv4HBGRwwVbZ
         XF1UYk2EHol8JcCuEv8oxIqNSb7Yn5gIkfse1K/CN0momhja7GtYyfuZA31shm8GbL94
         xr62QXkdAsfnSpMUIM5dDJr12J2YDfVOZXYVyH3KwyGuL0y4JnOnBg2p41J4vlYFXS0Q
         WqejK9CKbvGik3ZpI73l8gCtKBB+/ZAiRF6Ej2ToRwXlVrH00uXOgbSODRLhzZtEz9Ft
         6DFQ==
X-Gm-Message-State: AOAM531XuFb3rL6NhYl1HacoCNmdzZiWiaMlnL74mdf3Q3Lo8ooO/z89
        5MfZ4s3arwOpoQKJjJhsT8nmLg==
X-Google-Smtp-Source: ABdhPJxra+VdD0HTsZR+c2d1us85Dq8lMeLNrROWhWra+R6dRK5Bqzi5HZanKgKfTsSKdJMTHwMgdg==
X-Received: by 2002:a5d:4408:: with SMTP id z8mr26244243wrq.2.1621928811370;
        Tue, 25 May 2021 00:46:51 -0700 (PDT)
Received: from dell ([91.110.221.223])
        by smtp.gmail.com with ESMTPSA id y6sm1749432wmy.23.2021.05.25.00.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 00:46:50 -0700 (PDT)
Date:   Tue, 25 May 2021 08:46:49 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Robert Marko <robert.marko@sartura.hr>, linus.walleij@linaro.org,
        bgolaszewski@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de
Subject: Re: [PATCH v2 3/4] dt-bindings: mfd: Add Delta TN48M CPLD drivers
 bindings
Message-ID: <20210525074649.GC4005783@dell>
References: <20210524120539.3267145-1-robert.marko@sartura.hr>
 <20210524120539.3267145-3-robert.marko@sartura.hr>
 <20210524230940.GA1350504@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210524230940.GA1350504@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 May 2021, Rob Herring wrote:

> On Mon, May 24, 2021 at 02:05:38PM +0200, Robert Marko wrote:
> > Add binding documents for the Delta TN48M CPLD drivers.
> > 
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> > Changes in v2:
> > * Implement MFD as a simple I2C MFD
> > * Add GPIO bindings as separate
> 
> I don't understand why this changed. This doesn't look like an MFD to 
> me. Make your binding complete if there are missing functions. 
> Otherwise, stick with what I already ok'ed.

Right.  What else, besides GPIO, does this do?

> >  .../bindings/gpio/delta,tn48m-gpio.yaml       | 42 ++++++++++
> >  .../bindings/mfd/delta,tn48m-cpld.yaml        | 81 +++++++++++++++++++
> >  2 files changed, 123 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
