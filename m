Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E8FF389E3A
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 08:49:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230355AbhETGuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 02:50:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbhETGuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 02:50:55 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B1C2C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:49:33 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id n2so16468126wrm.0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=E1ZuZRCTlz6/Ws9j0pRH14oGlY9lvvE2LqjzptzYfhQ=;
        b=axSDBqF3Sq8wkc0WbH3CZY6xm95L5mDZQFgCfOftPV9fglwEx33FuoeYTqysdF5CgO
         gvOAGVJZQq0bB6/K5ulo+fN8Xt1eZcfui9dS+YxqacaFmgLBTh8mXE30GkWIW8mG4gop
         b0nJpOKu1eMSEZ+P+wGt5ZABOMNItvm0iPiYRFJv+CJh5SovDDgyJ0JY0nRv5zqoWaqy
         itEp92jB45oI7wAH/FQlDEMKw9mTUrE2qbi7R+h0oBTAjQISeI9YlMa4waCbqKrl2PPq
         C/dmLBHaaav0k/lPwIQGhyye7uVNYzDQItA2FuQSU7y1eFiI9/+9GnlGjOgxZzuX/enh
         EoGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=E1ZuZRCTlz6/Ws9j0pRH14oGlY9lvvE2LqjzptzYfhQ=;
        b=PC6QyxnW9KzTIcRdY97galEjjtfcjZpYEpgRkEUyUak9ZzGIbnPKwTWR18SZHkb4jr
         LyLYKL5AiMmSmz32zQ0V9nkoJyHEK30ZM7jZ9nddagJ2eYpEMlB1zXioXQXgIAUL6AhD
         xX2WnYM7Y8w8kaXMpNWBl8iw5cs4bMF+E1OgU8Ct5wXiLSgMpP8CEB4/PzVh+5JlGiGs
         rDQasqFPk9X0fGdCXCdqaTSMH58asZDVYGB8f9UvagDvIVR5yQLVuf9+j5SwqyaGVfXv
         hdWDznj0Xvt0BkMbKCoW5VSkhhAs091WHpoaoOsqSFeT6WAeC5y9Vxn9KH7iTDGCj6ui
         qsJg==
X-Gm-Message-State: AOAM530sg1jLgfCL7WfBO5URjCDQ/uxIuHEhtRwesHMIaUlonX0Q9Qnb
        rK6RHooyxOlACIhSjnZ1eZ2XGA==
X-Google-Smtp-Source: ABdhPJwd6qF+Ay8hmUhZ+42UEFFkMLo1dBf7iN0NlNPKX5LqdOy5Y71JWAqSVW/tw0t9av+hXvaRNw==
X-Received: by 2002:a5d:4b08:: with SMTP id v8mr2606935wrq.122.1621493372212;
        Wed, 19 May 2021 23:49:32 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id p2sm1930764wrj.10.2021.05.19.23.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 23:49:31 -0700 (PDT)
Date:   Thu, 20 May 2021 07:49:29 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Michael Walle <michael@walle.cc>
Cc:     Robert Marko <robert.marko@sartura.hr>, robh+dt@kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        bgolaszewski@baylibre.com, jdelvare@suse.com,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-hwmon@vger.kernel.org, Luka Perkov <luka.perkov@sartura.hr>,
        jmp@epiphyte.org, Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Subject: Re: [PATCH 1/6] mfd: Add Delta TN48M CPLD driver
Message-ID: <20210520064929.GM2549456@dell>
References: <20210430123511.116057-1-robert.marko@sartura.hr>
 <af4923ef1ed0693fcd67d7986348b164@walle.cc>
 <CA+HBbNHCnpg9qCzZbT9KVNqX-daC68iaJKNdyEf7do3w98miWw@mail.gmail.com>
 <0f28cabf858154842819935000f32bc2@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0f28cabf858154842819935000f32bc2@walle.cc>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021, Michael Walle wrote:

> Hi,
> 
> Am 2021-05-19 13:53, schrieb Robert Marko:
> > On Thu, May 6, 2021 at 6:34 PM Michael Walle <michael@walle.cc> wrote:
> > > Am 2021-04-30 14:35, schrieb Robert Marko:
> > > > Delta TN48M switches have a Lattice CPLD that serves
> > > > multiple purposes including being a GPIO expander.
> > > > So lets add the MFD core driver for it.
> > > 
> > > Did you have a look at mfd/simple-mfd-i2c.c?
> > 
> > Yes, that was my first idea but we have a requirement to expose CPLD
> > information via debugfs as there are userspace applications using it.
> > And simple-mfd-i2c does not allow us to do so.
> 
> Mh, last time Lee wasn't very fond of having a driver that just populates
> sub-drivers while doing almost nothing itself. See
> https://lore.kernel.org/lkml/20200605065709.GD3714@dell/

Right.  I still feel that way.

> That being said, I'd also like to expose our CPLD version, but until now
> haven't found a good solution.

Why though?  Does S/W *need* it?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
