Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 381F6597385
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 18:07:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240174AbiHQQFl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 12:05:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240556AbiHQQFP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 12:05:15 -0400
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3EFCE0BA
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 09:04:55 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-33365a01f29so145777737b3.2
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 09:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=i6paBFGBWzxKX2pJffOjWDghTkcVcT2QwPiGdTfZzZw=;
        b=pFju4+cgecb+7nzXxtJfDFJTBEmSFx1WBUSqHs+X+u0mvTvjh2PtlDwGgfcJNQdgdY
         BfCM/+2xseoWg9tqub1kfPnDpYXixSzX3QiFNW0xz3sa+0G4g2yfqNMqiXPGYVIOTCRw
         UNGnug1QrOs5ryom3oYOP8Bp+EmkDArR+4p1FsyTS6EJFZ/IJ4KOl1GUlyxEETEM/AVy
         d0fmtfxFoALcbSj8HwgBmJxJOcEBokjqGn2YJnbpIDao8WDG8BfpRLYCFnCPa7AkRZEn
         kXDVZt+KNhylvc48myX/S2nySbTfJjp09PjDPn7DP1NQcrmqTi6KpdYtir/12VMgaf3P
         kiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=i6paBFGBWzxKX2pJffOjWDghTkcVcT2QwPiGdTfZzZw=;
        b=rQwlUD7cc86VvhvGu96nl+o4Kq0i8nOFNDEW3uMkwCBQVEZrjHwKtSO8Q60UfQQ3tG
         Z50wT9Au0nj9tdGyDdB7O4pWSnl7wquyzu7biRG7pItW4K6IKQj0BnT7Wqp8krBkXtTQ
         w9qtw8h7ECTs7O1+/IkhvlGVSm3op+eGOagammfBnzdH1hmXpL37WaGsipZi6I9aVxGd
         UHpMz0m3Y1F7oyTvVbxvH43c0v2MclzzpCUxFQsb+Flf4Du9D/glMHSODILkVGexEIkt
         T5hRY9s8sk4vk8eOwiwCNef9aZxRE5ovGGxi8yy7p7F65S9k/wrQIQz8fe8qwzeZi3QD
         zARQ==
X-Gm-Message-State: ACgBeo0OZM6OnVuOhSnIIIs1KL9uLhDutvLW7/AqP7jSBTPtHwHDf8sk
        hcgtvgenALpkf7SErWaSd0p2gJZj8zSdEoLr5LRUMw==
X-Google-Smtp-Source: AA6agR5ln2ugwHVp4qeFJqZ931PAFnuNukW+KaAmhkMXTkwVzW1CvdUV2yYR8fYD2+p0D7KwXRp96xM0A+iq4P2HGKQ=
X-Received: by 2002:a81:6f43:0:b0:335:9e7e:ad25 with SMTP id
 k64-20020a816f43000000b003359e7ead25mr1912112ywc.518.1660752294638; Wed, 17
 Aug 2022 09:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220803122655.100254-1-nipun.gupta@amd.com> <20220817150542.483291-1-nipun.gupta@amd.com>
 <20220817150542.483291-7-nipun.gupta@amd.com> <Yv0JsOJBfVW1lAOy@kroah.com>
In-Reply-To: <Yv0JsOJBfVW1lAOy@kroah.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 17 Aug 2022 09:04:18 -0700
Message-ID: <CAGETcx_CXE6PPOrbJ9uxYPdNn2TPDUtxxTxXGu+A1OJOH0p5Tw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 6/6] driver core: add compatible string in sysfs
 for platform devices
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     Nipun Gupta <nipun.gupta@amd.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rafael@kernel.org,
        eric.auger@redhat.com, alex.williamson@redhat.com,
        cohuck@redhat.com, puneet.gupta@amd.com,
        song.bao.hua@hisilicon.com, mchehab+huawei@kernel.org,
        maz@kernel.org, f.fainelli@gmail.com, jeffrey.l.hugo@gmail.com,
        Michael.Srba@seznam.cz, mani@kernel.org, yishaih@nvidia.com,
        jgg@ziepe.ca, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kvm@vger.kernel.org, okaya@kernel.org,
        harpreet.anand@amd.com, nikhil.agarwal@amd.com,
        michal.simek@amd.com, git@amd.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 17, 2022 at 8:31 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Aug 17, 2022 at 08:35:42PM +0530, Nipun Gupta wrote:
> > This change adds compatible string for the platform based
> > devices.
>
> What exactly is a "compatible string"?

Didn't read the rest of the patches in the series yet, but Nack to
this. This info is already available under:

<device folder>/of_node/compatible for any device in any (or at least
most) bus that was created from an of_node.

Unless compatible is now also in ACPI. In which case, it's probably be
better to have an of_node like symlink.


-Saravana

>
> >
> > Signed-off-by: Nipun Gupta <nipun.gupta@amd.com>
> > ---
> >  Documentation/ABI/testing/sysfs-bus-platform |  8 +++++++
> >  drivers/base/platform.c                      | 23 ++++++++++++++++++++
> >  2 files changed, 31 insertions(+)
> >
> > diff --git a/Documentation/ABI/testing/sysfs-bus-platform b/Documentation/ABI/testing/sysfs-bus-platform
> > index c4dfe7355c2d..d95ff83d768c 100644
> > --- a/Documentation/ABI/testing/sysfs-bus-platform
> > +++ b/Documentation/ABI/testing/sysfs-bus-platform
> > @@ -54,3 +54,11 @@ Description:
> >               Other platform devices use, instead:
> >
> >                       - platform:`driver name`
> > +
> > +What:                /sys/bus/platform/devices/.../compatible
> > +Date:                August 2022
> > +Contact:     Nipun Gupta <nipun.gupta@amd.com>
> > +Description:
> > +             compatible string associated with the device. This is
> > +             a read only and is visible if the device have "compatible"
> > +             property associated with it.
>
> Where is it defined what a compatible property is?
>
> > diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> > index 51bb2289865c..94c33efaa9b8 100644
> > --- a/drivers/base/platform.c
> > +++ b/drivers/base/platform.c
> > @@ -1289,10 +1289,25 @@ static ssize_t driver_override_store(struct device *dev,
> >  }
> >  static DEVICE_ATTR_RW(driver_override);
> >
> > +static ssize_t compatible_show(struct device *dev, struct device_attribute *attr,
> > +                           char *buf)
> > +{
> > +     const char *compat;
> > +     int ret;
> > +
> > +     ret = device_property_read_string(dev, "compatible", &compat);
> > +     if (ret != 0)
> > +             return 0;
>
> Shouldn't you return an error here?
>
> thanks,
>
> greg k-h
