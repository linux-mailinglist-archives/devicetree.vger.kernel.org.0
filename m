Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0451357D4DC
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 22:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbiGUUie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 16:38:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229750AbiGUUid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 16:38:33 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9215C9F1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 13:38:33 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id t3-20020a17090a3b4300b001f21eb7e8b0so5789304pjf.1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 13:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vhEL2n63GIy3eV3gH7ovdwJvKRxWR52rbSmn5hmY09I=;
        b=Qs9HdCOCWOl3BXayEijkkBfHIf60AhHqHYwbQ8EspPQAYOLN56GhibRA3Acl6djZqL
         isVqGTgLdID0N3a5qld44Vgm2NkZvvXcglh1zL9A7DL8viMi8Hxw3aHxnbL1r5+a0SbG
         wNHrsary3Y2CEZXy3DR413dxsPjkbtkrkbdIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vhEL2n63GIy3eV3gH7ovdwJvKRxWR52rbSmn5hmY09I=;
        b=pJCJJZxnOa2dYj4uQ62uEE2fNNehQwgxg/2eMHyvCG9IqTxohCIhxLge+XRARCjn+E
         Hkya524UmUlUkRGtxGXgi7ofPxziQ2eA7avl72N4DsQU3937QgyVmfTdSrVhOEuUFdtR
         kol4h1DMyrbGZjEUhJ0OV+PRbWOjwBW8M4Y/qdAcl7idaQWeOxeWq1ehzQIE9RsEwHcS
         57om61ZAXH/bek7JfO7cmxLo5PS3vacouVI811RkPK1iPcPlDw2IUOHPsP1k5gpT+HHb
         vQfcFfPsMwNFyqRAhQYp0nZkSFd9OissOMlGVwEqU/5ZEslKprmpOdaGq/yjjHcqZFpP
         4x0g==
X-Gm-Message-State: AJIora+3Ssw3EzgH+McZoQcVwZ1rNPZuTlTQBfAaMyMjE45M/ciKYpXu
        kmAj9EiYhYF1FQebzO59hUcGZQ==
X-Google-Smtp-Source: AGRyM1uZAAUHbSnyka57V3ux6i4PTbKitXwoEiAXBdds16ilM3cjJdbrs4NYN+e1yI90fmwxaMvbyA==
X-Received: by 2002:a17:90b:38c8:b0:1f1:ea33:455e with SMTP id nn8-20020a17090b38c800b001f1ea33455emr13424130pjb.219.1658435912462;
        Thu, 21 Jul 2022 13:38:32 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:e11e:767b:e6fb:8f36])
        by smtp.gmail.com with UTF8SMTPSA id i1-20020aa796e1000000b0052ab54a4711sm2205552pfq.150.2022.07.21.13.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 13:38:32 -0700 (PDT)
Date:   Thu, 21 Jul 2022 13:38:30 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] usb: misc: onboard_usb_hub: Add TI USB8041 hub
 support
Message-ID: <Ytm5RrXYaKtwEg23@google.com>
References: <20220715073300.868087-1-alexander.stein@ew.tq-group.com>
 <20220715073300.868087-3-alexander.stein@ew.tq-group.com>
 <YtHFEY+iAipCROPl@google.com>
 <3525334.R56niFO833@steina-w>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3525334.R56niFO833@steina-w>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 20, 2022 at 09:18:50AM +0200, Alexander Stein wrote:
> Am Freitag, 15. Juli 2022, 21:50:41 CEST schrieb Matthias Kaehlcke:
> > On Fri, Jul 15, 2022 at 09:33:00AM +0200, Alexander Stein wrote:
> > > This is a 4-port 3.0 USB hub.
> > > 
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > > Changes in v2:
> > > * Add devtype data containing waiting times
> > > 
> > >  drivers/usb/misc/onboard_usb_hub.c | 3 +++
> > >  drivers/usb/misc/onboard_usb_hub.h | 7 +++++++
> > >  2 files changed, 10 insertions(+)
> > > 
> > > diff --git a/drivers/usb/misc/onboard_usb_hub.c
> > > b/drivers/usb/misc/onboard_usb_hub.c index 1dd7f4767def..319b4b1748fb
> > > 100644
> > > --- a/drivers/usb/misc/onboard_usb_hub.c
> > > +++ b/drivers/usb/misc/onboard_usb_hub.c
> > > @@ -339,6 +339,7 @@ static struct platform_driver onboard_hub_driver = {
> > > 
> > >  /************************** USB driver **************************/
> > >  
> > >  #define VENDOR_ID_REALTEK	0x0bda
> > > 
> > > +#define VENDOR_ID_TI		0x0451
> > > 
> > >  /*
> > >  
> > >   * Returns the onboard_hub platform device that is associated with the
> > >   USB
> > > 
> > > @@ -416,6 +417,8 @@ static const struct usb_device_id
> > > onboard_hub_id_table[] = {> 
> > >  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x5411) }, /* RTS5411 USB 2.1 */
> > >  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x0414) }, /* RTS5414 USB 3.2 */
> > >  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x5414) }, /* RTS5414 USB 2.1 */
> > > 
> > > +	{ USB_DEVICE(VENDOR_ID_TI, 0x8140) }, /* TI USB8041 3.0 */
> > > +	{ USB_DEVICE(VENDOR_ID_TI, 0x8142) }, /* TI USB8041 2.0 */
> > > 
> > >  	{}
> > >  
> > >  };
> > >  MODULE_DEVICE_TABLE(usb, onboard_hub_id_table);
> > > 
> > > diff --git a/drivers/usb/misc/onboard_usb_hub.h
> > > b/drivers/usb/misc/onboard_usb_hub.h index 7e743f4c8aaa..fcb6a9024bbd
> > > 100644
> > > --- a/drivers/usb/misc/onboard_usb_hub.h
> > > +++ b/drivers/usb/misc/onboard_usb_hub.h
> > > @@ -11,7 +11,14 @@ struct onboard_hub_devtype_data {
> > > 
> > >  	unsigned long reset_duration;		/* reset pulse width in 
> us */
> > >  
> > >  };
> > > 
> > > +static const struct onboard_hub_devtype_data ti_tusb8041_data = {
> > > +	.power_stable_time = 3000,
> > > +	.reset_duration = 3000,
> > 
> > Aren't these two values actually the same thing, i.e. the minimum
> > duration of the reset?
> > 
> > From the data sheet:
> > 
> >   A minimum reset duration of 3 ms is required
> > 
> >   td2: VDD and VDD33 stable before de-assertion of GRSTz (>= 3ms)
> > 
> > My understanding is that td2 is just another expression of the first
> > requirement.
> 
> They may have the same values, but IMHO they are applied differently.
> 'power_stable_time' (or power_stable_us now) applies after supplying power, 
> while 'reset_duration' (or reset_us now) applies when you deassert the reset 
> line. 
> For that reason I would like to keep them separated.

In both cases the datasheet talks about the reset duration of 3 ms in
relation with the power supplies:

  7.6 Timing Requirements, Power-Up

  td2: VDD and VDD33 stable before de-assertion of GRSTz


  8.3.7 Power-Up and Reset

  A minimum reset duration of 3 ms is required. This is defined as the time when
  the power supplies are in the recommended operating range to the de-assertion
  of GRSTz.

At this point I see no good reason for having two different values. If it turns
out later that it is really needed for other hubs another fiels like
'power_stable_us' can still be added.
