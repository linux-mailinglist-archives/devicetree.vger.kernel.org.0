Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B662C4297C
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 16:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731624AbfFLOhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 10:37:20 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:54291 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731564AbfFLOhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 10:37:20 -0400
Received: by mail-wm1-f68.google.com with SMTP id g135so6844301wme.4
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 07:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=VplAio+sVK07Pjxzj2QfGPoBuAFyvNhZScCOrRSlmOg=;
        b=nVP3PUMAQmhGKeeuGgz8Msy+BotU4EfAKloaSSbTZS/04Dv1nuQy5HM0flUpAJLf63
         hCvO2BkTA/nIGw0uvr+0sO0iOkzgeqVQiOyCzm7Vt0Gnn45NZzOEqpcP/JB3mA/A2l8d
         XYlGjAQ2GlDNrEWBXb0IWGfTXw2N9a8dlCkI4jO0DddDbtBEULqP80gmxATKN+RYXHfE
         jIQ2aanTGu4ukWHT2RpirFhCZgua9zVcBffn3W8f9ZFIqjICLfpDVP/6OXMjYPO4p32p
         QQIPBhP89gQidkHFDWA4pOyE29eGsMUDqsGh6YArjEFESsrizbL0wnGiS0im0p8NI3PV
         zTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=VplAio+sVK07Pjxzj2QfGPoBuAFyvNhZScCOrRSlmOg=;
        b=a3TB8r/fwxGhDPZ/t2Uxrha3cX3gWI1724kKCKJt4hyGHBHruagW/a4Kjo2SMh4FKx
         L+5JkMWS3xdfYJd8+P0KBm3eN01HjCd8nclyNz9/ZzlxXBGfs1I9AMWgUQFanVmTFpSQ
         UwXV8bb1dA2c+AwiIDLwaGQJ+fomhZErKIORtzfMQ5u8pf0b0y5J5dtl0dJkzUHzyLbs
         NGt84Og++BQAEKUXbK82ZoKNjc/61+0itdemoN19JmSv1A+rTnoszC4gRT+ZdACNJH03
         ASykSLUE2e9o7+Pi9nk6zY6ghVHjL3W1poxqm0KN5IGyn/eANRLre6mIJ7t/DgRjU1Rj
         FhZg==
X-Gm-Message-State: APjAAAUPnHGck2zV29kNVpeMshNIyB9I1/Af6EDpzniJt2mTFSacysxu
        AIleJelyyb5blKkWA/EjSIGSSw==
X-Google-Smtp-Source: APXvYqyXpn/hJQn+QAdkpG+PAOIVfZytwEwBa6XdlVWbIPJzEymxH5QfmHeEMsWdDJ8I8TFh442WNg==
X-Received: by 2002:a1c:a541:: with SMTP id o62mr3196842wme.84.1560350238120;
        Wed, 12 Jun 2019 07:37:18 -0700 (PDT)
Received: from dell ([185.80.132.160])
        by smtp.gmail.com with ESMTPSA id j7sm24764543wru.54.2019.06.12.07.37.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Jun 2019 07:37:17 -0700 (PDT)
Date:   Wed, 12 Jun 2019 15:37:15 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Jeffrey Hugo <jhugo@codeaurora.org>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        benjamin.tissoires@redhat.com, jikos@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        mark.rutland@arm.com, agross@kernel.org, david.brown@linaro.org,
        hdegoede@redhat.com, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] HID: quirks: Refactor ELAN 400 and 401 handling
Message-ID: <20190612143715.GC4660@dell>
References: <20190606161055.47089-1-jeffrey.l.hugo@gmail.com>
 <20190606161322.47192-1-jeffrey.l.hugo@gmail.com>
 <20190612003507.GG143729@dtor-ws>
 <2282f3e1-e76a-4fe7-d447-51d9a4bee2de@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2282f3e1-e76a-4fe7-d447-51d9a4bee2de@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jun 2019, Jeffrey Hugo wrote:

> On 6/11/2019 6:35 PM, Dmitry Torokhov wrote:
> > On Thu, Jun 06, 2019 at 09:13:22AM -0700, Jeffrey Hugo wrote:
> > > There needs to be coordination between hid-quirks and the elan_i2c driver
> > > about which devices are handled by what drivers.  Currently, both use
> > > whitelists, which results in valid devices being unhandled by default,
> > > when they should not be rejected by hid-quirks.  This is quickly becoming
> > > an issue.
> > > 
> > > Since elan_i2c has a maintained whitelist of what devices it will handle,
> > > use that to implement a blacklist in hid-quirks so that only the devices
> > > that need to be handled by elan_i2c get rejected by hid-quirks, and
> > > everything else is handled by default.  The downside is the whitelist and
> > > blacklist need to be kept in sync.
> > > 
> > > Suggested-by: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > > ---
> > >   drivers/hid/hid-quirks.c | 78 ++++++++++++++++++++++++++++++++++------
> > >   1 file changed, 67 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/hid/hid-quirks.c b/drivers/hid/hid-quirks.c
> > > index e5ca6fe2ca57..edebd0700e3d 100644
> > > --- a/drivers/hid/hid-quirks.c
> > > +++ b/drivers/hid/hid-quirks.c
> > > @@ -912,8 +912,66 @@ static const struct hid_device_id hid_mouse_ignore_list[] = {
> > >   	{ }
> > >   };
> > > +/*
> > > + * List of device names that elan_i2c is handling and HID should ignore.  Must
> > > + * be kept in sync with elan_i2c
> > > + */
> > > +static const char *hid_elan_i2c_ignore[] = {
> > 
> > If this is a copy of elan whitelist, then, if we do not want to bother
> > with sharing it in object form (as a elan-i2c-ids module), can we at
> > least move it into include/linux/input/elan-i2c-ids.h and consume from
> > hid-quirks.c?
> 
> I can put it in a shared header file, however elan-i2c and hid-quirks
> would need to be updated in the same change to prevent a breakage, but
> that would seem to violate a concern Benjamin brought up in v4 given
> that elan-i2c is maintained in your input tree, and hid-quirks is
> maintained in his hid tree.
> 
> Are you ok with the elan-i2c changes going through Benjamin's hid tree?

We co-ordinate cross-subsystem merges all the time.  That is never a
reason to not do the 'right thing (tm)'.  If this information can be
held in a single, central place, without the need for constant
re-alignment, I'm all for it.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
