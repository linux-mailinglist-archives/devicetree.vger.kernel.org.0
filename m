Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14F0B5D044
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 15:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726401AbfGBNLx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 09:11:53 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:43552 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726623AbfGBNLw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 09:11:52 -0400
Received: by mail-wr1-f68.google.com with SMTP id p13so17743775wru.10
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 06:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dtiFMwb61GFph+NiLLfdMwRbAYlFiiULbxV5uhpqzbs=;
        b=V++CEmF+i6wDMdxwKT7ZGWJ2ct/9at3E204w9IE7cbFQWvcCNQDR5KcsoLxloh2VfD
         OOZPoB15QjLkAQbitnLCpRSYMCMzSNs3PWcmh0VIV5ty8dbo3ii8pxCnrV/W4/cAbfT0
         5rYF5WJ1dd+EkPRCDWtfxN9gt5240opSaVY6DC1sQYflxwnNOtTwzgkqXVrPGck5ILHL
         901nlWn8vCond4cgJdNfrZwlgBX0o5z0bip8f12VfwaBw1vBIotnBxn1Qzg1QCmjRtBD
         HqOVZTHD7ztuO2Mbc2oJ3aQ4AR9KnOcNOTVgajbPs7qAONZ88vxFMqSInkMoi5415upq
         cFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dtiFMwb61GFph+NiLLfdMwRbAYlFiiULbxV5uhpqzbs=;
        b=jhxEdFMs+XiTzVohoNL1fZ/TXWBXRcDLNQASpO6z3FAiMQQ7xiiIUvMNo/c5E3f+pi
         sPjotPZAPOviAbn9rXOy2wLzkMQg4xWg6PmO6cZ46Tq4Q7FdR7WT0XE454psAelGxp2d
         hqshdgMKB1Zb4i20+F4kEn6XpjJlT6UIJxU8Wqf1uV+BIXLQfGkHq5uhrflgAG1aArki
         wx7inO8IGbXFjsqpB7DzAyf6e/xresZFo2EWjU1a2ce+tCiY3+hxH7ppz7oMvHUaror/
         FOlnnN8otwaLd8F5UmNbW3uJbj19lPyZrg4QSUrFmykxefEmelIQAqP0KZB9Ttbe2mnm
         yMFA==
X-Gm-Message-State: APjAAAVeFGa2sMt1v8sKKIAwbys9tut0lgbN+BpY0ipn5hTw1SD9jX7E
        Ja5pTboZHnpmyVnvy1PDuuKwuQ==
X-Google-Smtp-Source: APXvYqyCF5BhdWZHRjhmUYkqcu7PDvQ+1PKBZeupILVCkfHkRnPZLwpcjzx3Hpun3/h9ML/RRkFBRQ==
X-Received: by 2002:a5d:4d84:: with SMTP id b4mr20369411wru.242.1562073110866;
        Tue, 02 Jul 2019 06:11:50 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
        by smtp.gmail.com with ESMTPSA id h8sm2526250wmf.12.2019.07.02.06.11.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 06:11:50 -0700 (PDT)
Date:   Tue, 2 Jul 2019 14:11:48 +0100
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Brian Dodge <bdodge09@gmail.com>
Cc:     pavel@ucw.cz, lee.jones@linaro.org, jingoohan1@gmail.com,
        jacek.anaszewski@gmail.com, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, pbacon@psemi.com
Subject: Re: [PATCH 1/2] dt-bindings: backlight: fix vendor prefix for
 ArcticSand arcxcnn driver bindings
Message-ID: <20190702131148.unb3pfthxvacfwn3@holly.lan>
References: <1561940895-15837-1-git-send-email-bdodge09@gmail.com>
 <1561940895-15837-2-git-send-email-bdodge09@gmail.com>
 <20190702092617.c4wn3dmg5orrquyj@holly.lan>
 <9ffed46f-c878-e415-cad0-cbe64efb9885@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ffed46f-c878-e415-cad0-cbe64efb9885@gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 02, 2019 at 07:21:29AM -0400, Brian Dodge wrote:
> 
> On 7/2/19 5:26 AM, Daniel Thompson wrote:
> > > [PATCH 1/2] dt-bindings: backlight: fix vendor prefix for
> > > ArcticSand arcxcnn driver bindings
> > The "v2" is normally applied to the whole patchset (if you
> > prepare the patchset using git format-patch then you can use
> > the --subject-prefix argument for that).
> Sorry and noted
> > 
> > On Sun, Jun 30, 2019 at 08:28:14PM -0400, Brian Dodge wrote:
> > > The vendor-prefixes.txt file properly refers to ArcticSand
> > > as arctic but the driver bindings improperly abbreviated the
> > > prefix to arc. This was a mistake in the original patch. This
> > > patch adds "arctic" and retains "arc" (deprecated) bindings
> > > 
> > > Signed-off-by: Brian Dodge <bdodge09@gmail.com>
> > > ---
> > >   .../bindings/leds/backlight/arcxcnn_bl.txt         | 31 +++++++++++++++-------
> > >   1 file changed, 21 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt b/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt
> > > index 230abde..4d98394 100644
> > > --- a/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt
> > > +++ b/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt
> > > @@ -1,8 +1,13 @@
> > > -Binding for ArcticSand arc2c0608 LED driver
> > > +Binding for ArcticSand arc family LED drivers
> > >   Required properties:
> > > -- compatible:		should be "arc,arc2c0608"
> > > -- reg:			slave address
> > > +- compatible: one of
> > > +	"arctic,arc1c0608"
> > > +	"arctic,arc2c0608"
> > > +	"arctic,arc3c0845"
> > > +	"arc,arc2c0608" (deprecated)
> > Nothing wrong with adding compatible strings for arc1 and arc3 but I
> > would expect it to be mentioned in the description to reassure reviewers
> > that the right depth of thought has been applied Something like "Also added
> > compatible strings for other family members, all the existing optional
> > properties work the same way for the new devices." (if you agree that it
> > is true) is good to show you were paying proper attention!
> > 
> > However this does perhaps verge a little towards nitpicking so maybe
> > wait to see what the DT folks say. From my point of view:
> > Acked-by: Daniel Thompson <daniel.thompson@linaro.org>
> > 
> > 
> > Daniel.
> 
> Good point. I did actually think about this a bit. The *only* chip available
> at the time of the original driver was the arc2c0608 and that is the chip
> that is currently in use in the Samsung Chromebook Plus, and the only use I
> know of using the "arc" prefix. There will be no reason to ever support
> "arc,arc1.." or "arc,arc3..." in the bindings for past or future use.
> 
> The new two chips are just basically supported by this driver. There is more
> functionality to them which will be enabled in my next patch. I wanted to
> separate the move to "arctic" from the move to fully support the other chips
> for clarity (you guys are all rightly picky!) I did put the new chip
> bindings in the driver/bindings in this patch though so I could test this
> patch against the actual h/w instances: I have three boards, one with each
> chip type and each has a dtb with the "arctic,.." type binding onboard.

I think you have misunderstood. I've got no problem with renaming the
properties as well.

What I was bringing up is that you have extended the scope of the
bindings to cover the arc1 and arc3 devices. It would be good for you
to explicitly confirm that the existing properties all still apply
to arc1 and arc3 devices, and that no new properties are needed to
model them properly.

As it happens I *did* glance at your old arc1/arc3 patch to check it for
myself before I offered you the Acked-by and didn't see anything that
offended me. However a good patch description would have spared me that
work...


Daniel.


> 
> > > +
> > > +- reg:		slave address
> > >   Optional properties:
> > >   - default-brightness:	brightness value on boot, value from: 0-4095
> > > @@ -11,19 +16,25 @@ Optional properties:
> > >   - led-sources:		List of enabled channels from 0 to 5.
> > >   			See Documentation/devicetree/bindings/leds/common.txt
> > > -- arc,led-config-0:	setting for register ILED_CONFIG_0
> > > -- arc,led-config-1:	setting for register ILED_CONFIG_1
> > > -- arc,dim-freq:		PWM mode frequence setting (bits [3:0] used)
> > > -- arc,comp-config:	setting for register CONFIG_COMP
> > > -- arc,filter-config:	setting for register FILTER_CONFIG
> > > -- arc,trim-config:	setting for register IMAXTUNE
> > > +- arctic,led-config-0:	setting for register ILED_CONFIG_0
> > > +- arctic,led-config-1:	setting for register ILED_CONFIG_1
> > > +- arctic,dim-freq:	PWM mode frequence setting (bits [3:0] used)
> > > +- arctic,comp-config:	setting for register CONFIG_COMP
> > > +- arctic,filter-config:	setting for register FILTER_CONFIG
> > > +- arctic,trim-config:	setting for register IMAXTUNE
> > > +- arc,led-config-0:	setting for register ILED_CONFIG_0 (deprecated)
> > > +- arc,led-config-1:	setting for register ILED_CONFIG_1 (deprecated)
> > > +- arc,dim-freq:		PWM mode frequence setting (bits [3:0] used) (deprecated)
> > > +- arc,comp-config:	setting for register CONFIG_COMP (deprecated)
> > > +- arc,filter-config:	setting for register FILTER_CONFIG (deprecated)
> > > +- arc,trim-config:	setting for register IMAXTUNE (deprecated)
> > >   Note: Optional properties not specified will default to values in IC EPROM
> > >   Example:
> > >   arc2c0608@30 {
> > > -	compatible = "arc,arc2c0608";
> > > +	compatible = "arctic,arc2c0608";
> > >   	reg = <0x30>;
> > >   	default-brightness = <500>;
> > >   	label = "lcd-backlight";
> > > -- 
> > > 2.7.4
> > > 
