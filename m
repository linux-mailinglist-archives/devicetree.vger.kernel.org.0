Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F28974B7DD0
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 03:51:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233777AbiBPCbt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 21:31:49 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233821AbiBPCbr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 21:31:47 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59D6C98F7B
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 18:31:36 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id u12so858696plf.13
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 18:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tMSwIfjOv1Uyh0Rn8c3FPvnNt2awh1M6+sjpagFNNPs=;
        b=MrvjeIXCQ0Ol/ZNcfXLD9ryra3Lxo0LuahOeXNhhVa8XVLk1mUyCn13YOkRJMEu7rU
         /IiaUHNDr77cLli/X5P8Akq/dF6VCwimLY3cWD9peCVXcnFV56IY9C7gNqaju6Y/YLy3
         eWTGx5T7KUECG4JNaraqfYDi4uVSFg/kF5Iv+0n6BeHzpnTgQ2e9eIrsYZF3XfWZ3GhB
         WuEwHitGwU6yPS5Z7i9bu7dfGGKty0EU7dChAqeZ/QpqjScnH0TkUWB4Mm5UyxLYNufD
         qI3yU6sUDxkiD/3h9BfUlAfCRDkDWa7tEV0xEIg4ifAS6TMM+5ZGqlOi2GdVTXx1/dcO
         Nq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tMSwIfjOv1Uyh0Rn8c3FPvnNt2awh1M6+sjpagFNNPs=;
        b=YEe/mnVjFk2/aVgC7JL0DSBHkleJuObSLVFxHTioCB413h8R5MHdVN5AOhl/Ws8vQd
         gClrBp6chr9Yzki4Vxv3xDRpRx8rg53JYlo0t46qPU64m8XYE+3KfAhFmWRqWjgXAv4H
         1IEYbHfEiOfqamNn44XkVGGXv4BR4hWFD81dV+mT1Rnb3yGnrhePDuDlLkhP7RqVoA46
         Gu/G8BDXXOjGMZGFpChJdKNNQU1bNODr/u/9hqSgYN9314ZZswzEAP6mmFaCaloS6pB1
         sc/CEkNfgKsdMFxdrZ4AEd9mOLOZzQHoKt7dAaLidWnkkerNFofQSsRXo2R4i41gSLzb
         1Csw==
X-Gm-Message-State: AOAM532LtN4m0otcfhlaYueok3fEKoO07Fn3K03y9ze72AezMCg8W3Na
        Xulvfo3bdnhH7Q6082PwNTvztQ==
X-Google-Smtp-Source: ABdhPJyU2ukSn0pACLz1YQlEvjfxSBDTqZwAmjsrkqyhGVLNZmkSRDuKwLpWoQymGsMeVVJJ0nyyig==
X-Received: by 2002:a17:902:82c7:b0:14f:252d:67e7 with SMTP id u7-20020a17090282c700b0014f252d67e7mr777069plz.27.1644978695666;
        Tue, 15 Feb 2022 18:31:35 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:adf7:46e7:cef5:ba49])
        by smtp.gmail.com with ESMTPSA id 7sm18442035pjo.45.2022.02.15.18.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 18:31:35 -0800 (PST)
Date:   Wed, 16 Feb 2022 10:31:32 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     Prashant Malani <pmalani@chromium.org>
Cc:     bleung@chromium.org, groeck@chromium.org, robh+dt@kernel.org,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] platform/chrome: cros_kbd_led_backlight: support OF
 match
Message-ID: <YgxiBO7jDtyhWwlb@google.com>
References: <20220214053646.3088298-1-tzungbi@google.com>
 <20220214053646.3088298-5-tzungbi@google.com>
 <CACeCKac+b1Rp6bZFALn=sbh8gkJbWeKTC=8bdzp+-90pgq=wSw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACeCKac+b1Rp6bZFALn=sbh8gkJbWeKTC=8bdzp+-90pgq=wSw@mail.gmail.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 15, 2022 at 05:10:04PM -0800, Prashant Malani wrote:
> On Sun, Feb 13, 2022 at 9:37 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
> > diff --git a/drivers/platform/chrome/cros_kbd_led_backlight.c b/drivers/platform/chrome/cros_kbd_led_backlight.c
> > index 814f2b74c602..ba853e55d29a 100644
> > --- a/drivers/platform/chrome/cros_kbd_led_backlight.c
> > +++ b/drivers/platform/chrome/cros_kbd_led_backlight.c
> > @@ -10,6 +10,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/leds.h>
> >  #include <linux/module.h>
> > +#include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >
> > @@ -128,8 +129,11 @@ static int keyboard_led_probe(struct platform_device *pdev)
> >         int error;
> >
> >         drvdata = acpi_device_get_match_data(&pdev->dev);
> > -       if (!drvdata)
> > -               return -EINVAL;
> > +       if (!drvdata) {
> > +               drvdata = of_device_get_match_data(&pdev->dev);
> > +               if (!drvdata)
> > +                       return -EINVAL;
> > +       }
> 
> I'm not familiar with this driver, so can't do a full review, but
> shouldn't device_get_match_data()
> from property.h [1] be able to handle both DT and ACPI cases?
> 
> [1]: https://elixir.bootlin.com/linux/v5.17-rc4/source/include/linux/property.h

Yes, it does[2][3].  Thanks for the feedback, will fix it in next version.

[2]: https://elixir.bootlin.com/linux/v5.17-rc4/source/drivers/of/property.c#L1474
[3]: https://elixir.bootlin.com/linux/v5.17-rc4/source/drivers/acpi/property.c#L1386
