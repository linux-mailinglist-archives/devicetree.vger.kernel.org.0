Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E33225FB75
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 15:30:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729543AbgIGNXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 09:23:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729407AbgIGNXM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 09:23:12 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD08CC061573
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 06:23:11 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id lo4so18203253ejb.8
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 06:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gw9lL2TvHDntCUhAnmDZSsRD6P570jc9dLDcigHjLqo=;
        b=Tr/UEPlBz2fsDMLmFd0VCTGHcFQoc3bi3jh3lDW53ENl1TrQGuLEKeEciByE6ZA2WD
         XSmZEXdGl7UtzQnOv0mi030b/ZpXsd3jp6njzQGgvSUCvjgszzE07oO7iR4juvN86L83
         BBDqz5v7eDZQXHBAJ4NVL4rmU5c4uIBCozDxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gw9lL2TvHDntCUhAnmDZSsRD6P570jc9dLDcigHjLqo=;
        b=tj2ZrmkDgQu93m3Fp6Zc1vPNw7Uk1QZVTBfHMdKg1I1+PqaeZulweipOmeu38MG0V8
         htmd5juA5TdUp3MO7k1loHUSAIT/nBL0NvxjuCcHFQEmbWr6BgLjFSHmiGf+F4VJ3AFC
         V+mX1onQpGO/5rpNk3ZthH7I4OqX8QamzWOlpPPoCDViga0Ehv3Te/5CaA+00UkWB93N
         rZ4d8syrulSTNNrcMCKdlMlEWNpXBrOYiTYYoo7rmnECSCmmAWJ3LO0Z0IHiYVTdMCq8
         95sWzM3ss9zdA0jtYmYIBeMjMK/FmazduxLoheYpk0pVkEbu9/4091lDlS9qGnEX59il
         +t/g==
X-Gm-Message-State: AOAM531u1+NlwDBuKDHPDptVUORkCZSAae/0H0slzlFTWbzNcnzxNsJ7
        wYrijn36enTOfw3col50Ro55QsoDVD5ohA==
X-Google-Smtp-Source: ABdhPJxR9e5a9GEwu0OoWmLhOIaAU2nsSBMcomlJC43VswmBEAm44GcWAObDjl1M2u/KaE/QO6hbjQ==
X-Received: by 2002:a17:907:b0b:: with SMTP id h11mr21448992ejl.330.1599484990278;
        Mon, 07 Sep 2020 06:23:10 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id w11sm14800893edx.81.2020.09.07.06.23.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 06:23:10 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id c19so12319946wmd.1
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 06:23:09 -0700 (PDT)
X-Received: by 2002:a1c:a5c8:: with SMTP id o191mr21337268wme.127.1599484528763;
 Mon, 07 Sep 2020 06:15:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200902120122.24456-1-dongchun.zhu@mediatek.com>
 <20200902120122.24456-3-dongchun.zhu@mediatek.com> <20200902134421.GN1891694@smile.fi.intel.com>
 <1599225767.4733.64.camel@mhfsdcap03> <CAHp75Ve8WNuCuRmFcXaZHLjHMGfsvM=69ii5g4H+NYud6N95eQ@mail.gmail.com>
In-Reply-To: <CAHp75Ve8WNuCuRmFcXaZHLjHMGfsvM=69ii5g4H+NYud6N95eQ@mail.gmail.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Mon, 7 Sep 2020 15:15:17 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BH4NZrhg=abqc=P9Uzf+t4Davn4SP9i3QktS4Q05WtzA@mail.gmail.com>
Message-ID: <CAAFQd5BH4NZrhg=abqc=P9Uzf+t4Davn4SP9i3QktS4Q05WtzA@mail.gmail.com>
Subject: Re: [PATCH v14 2/2] media: i2c: Add OV02A10 image sensor driver
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Dongchun Zhu <dongchun.zhu@mediatek.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bingbu Cao <bingbu.cao@intel.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sj Huang <sj.huang@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Louis Kuo <louis.kuo@mediatek.com>,
        =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= 
        <shengnan.wang@mediatek.com>, matrix.zhu@aliyun.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 4, 2020 at 4:06 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, Sep 4, 2020 at 4:48 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > On Wed, 2020-09-02 at 16:44 +0300, Andy Shevchenko wrote:
> > > On Wed, Sep 02, 2020 at 08:01:22PM +0800, Dongchun Zhu wrote:
>
> ...
>
> > > > +   struct i2c_client *client = to_i2c_client(dev);
> > > > +   struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > >
> > >       struct v4l2_subdev *sd = dev_get_drvdata(dev);
> > >
> > > Same for the rest similar cases.
> >
> > We've discussed the issue in DW9768 V2.
> >
> > For V4L2 sub-device drivers, dev_get_drvdata() shouldn't be used
> > directly.
> >
> > More details please check the Google Issue:
> > https://partnerissuetracker.corp.google.com/issues/147957975
>
> This is not a public link. Can you remind me what was the issue?
>

v4l2-subdev framework uses dev drvdata for its own purposes. However,
that problem was about the driver setting its own drvdata and having
it overridden by the framework. There is nothing wrong in using
dev_get_drvdata(), assuming the correct type is known and here it's
guaranteed to be v4l2_subdev for the v4l2-subdev framework.

In fact i2c_get_clientdata() [1] is just a wrapper that calls
dev_get_drvdata(&client->dev).

[1] https://elixir.bootlin.com/linux/v5.9-rc3/source/include/linux/i2c.h#L351

> ...
>
> > > > +   if (!bus_cfg.nr_of_link_frequencies) {
> > > > +           dev_err(dev, "no link frequencies defined\n");
> > > > +           ret = -EINVAL;
> > > > +           goto check_hwcfg_error;
> > > > +   }
> > >
> > > If it's 0, the below will break on 'if (j == 0)' with slightly different but
> > > informative enough message. What do you keep above check for?
> >
> > I still prefer to the original version.
> > If 'bus_cfg.nr_of_link_frequencies' is 0, shouldn't we directly return
> > error?
>
> But that will happen anyway. I will leave this to Sakari and
> maintainers to decide.
>

I agree with Andy on this. The check is redundant. In fact, the later
error message is more meaningful, because it at least suggests a
frequency that must be supported, while the earlier one only states
the fact.

Best regards,
Tomasz
