Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA47F41734
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 23:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407752AbfFKVwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 17:52:44 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:45543 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407751AbfFKVwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 17:52:44 -0400
Received: by mail-pl1-f195.google.com with SMTP id bi6so5283460plb.12
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 14:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=android.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mSH6vjaD/nr1X2l9Lu5p2XVHT+RbgtF+8lv2TXUlGxI=;
        b=AVWVFnz3EkCZsE+NYatD/YXB62zlYFWeSCIzuEw4yezw8A74s/W8lvaK0EgK4htQ4A
         DQYmbuW1AAhmO758McKb+i6O5RYvzmBvYa5PLtB9fxvCCuXxpmWhi1XQkjI3DpyGf9Wb
         tcam3xyknZvvLf4S1FjXpCBDgFpjD0do6YuMssibmei6FY8wfy6Nt0Ho1pYbvK+Fm0Q5
         ogi9hS0UkwAy1SFW9Hg6+AIlIk1DrLcW2Rae5FOACRJSJqu2tzwzj+KuSpnWTaJAuIY0
         uciFEij83IKIUYY8YA56k/6BXWW+sn/14KimcibOa5aT4oSlLDKslJEr1sodGjLIOn2c
         BS5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mSH6vjaD/nr1X2l9Lu5p2XVHT+RbgtF+8lv2TXUlGxI=;
        b=nOrtc1kWxByBrI3tf8Mrv9Fw/sHuVK4eYg1jG+bq+AWQklkTu5c4+82PFEvXFmZPfV
         yfDTV8+EgjZ4fpqHcBy6lmt0bvno75Wey97RhDAK9Kdt2konyzUxB5wgjI1eniFTmzvZ
         HqAFEF+XylLq2MtniHITRN52fTvYMHAF2WmzY3PiVaQZTqcdHjGxH/vIhJ++aY7hLs4+
         cyYDpDND+Yk9fNPvYT6KMPwr1hOwudWaoTY0/gdKfnkVMDQsUoa5n8J1e3eWwIO3KMMN
         OqJwAdntBImcdbvtnkpPJq1zXom3W0gyco0H46DsbsucUX+wjubYIrHer/xRIvmjt9as
         R4sQ==
X-Gm-Message-State: APjAAAXuIMlobznUutsuQeOySGdIreSfS8OQGB02PI3p5KwZOSQHWYjq
        dzSVlrOWt1d3pYeIxgfu7NFKaA==
X-Google-Smtp-Source: APXvYqysSME+/cdv9S8P9cj2bcfPJvkEUDZsjH4vh2DbbdzUop8MSCZwew2ErpDpFIMCx2GEjV1qug==
X-Received: by 2002:a17:902:a412:: with SMTP id p18mr9930029plq.105.1560289963457;
        Tue, 11 Jun 2019 14:52:43 -0700 (PDT)
Received: from localhost ([2620:0:1000:147d:bc5f:a59e:d0e2:264f])
        by smtp.gmail.com with ESMTPSA id y22sm10173193pfm.70.2019.06.11.14.52.42
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 14:52:42 -0700 (PDT)
Date:   Tue, 11 Jun 2019 14:52:42 -0700
From:   Sandeep Patil <sspatil@android.com>
To:     Saravana Kannan <saravanak@google.com>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        David Collins <collinsd@codeaurora.org>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>
Subject: Re: [RESEND PATCH v1 1/5] of/platform: Speed up
 of_find_device_by_node()
Message-ID: <20190611215242.GE212690@google.com>
References: <20190604003218.241354-1-saravanak@google.com>
 <20190604003218.241354-2-saravanak@google.com>
 <CAL_JsqLWfNUJm23x+doJDwyuMLOvqWAnLKGQYcgVct-AyWb9LQ@mail.gmail.com>
 <570474f4-8749-50fd-5f72-36648ed44653@gmail.com>
 <CAGETcx8M3YkUBZ-e2LLfrbWgnMKMMNG5cv=p8MMmBe7ZyPJ7xw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGETcx8M3YkUBZ-e2LLfrbWgnMKMMNG5cv=p8MMmBe7ZyPJ7xw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 01:56:25PM -0700, 'Saravana Kannan' via kernel-team wrote:
> On Tue, Jun 11, 2019 at 8:18 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >
> > Hi Saravana,
> >
> > On 6/10/19 10:36 AM, Rob Herring wrote:
> > > Why are you resending this rather than replying to Frank's last
> > > comments on the original?
> >
> > Adding on a different aspect...  The independent replies from three different
> > maintainers (Rob, Mark, myself) pointed out architectural issues with the
> > patch series.  There were also some implementation issues brought out.
> > (Although I refrained from bringing up most of my implementation issues
> > as they are not relevant until architecture issues are resolved.)
> 
> Right, I'm not too worried about the implementation issues before we
> settle on the architectural issues. Those are easy to fix.
> 
> Honestly, the main points that the maintainers raised are:
> 1) This is a configuration property and not describing the device.
> Just use the implicit dependencies coming from existing bindings.
> 
> I gave a bunch of reasons for why I think it isn't an OS configuration
> property. But even if that's not something the maintainers can agree
> to, I gave a concrete example (cyclic dependencies between clock
> provider hardware) where the implicit dependencies would prevent one
> of the devices from probing till the end of time. So even if the
> maintainers don't agree we should always look at "depends-on" to
> decide the dependencies, we still need some means to override the
> implicit dependencies where they don't match the real dependency. Can
> we use depends-on as an override when the implicit dependencies aren't
> correct?
> 
> 2) This doesn't need to be solved because this is just optimizing
> probing or saving power ("we should get rid of this auto disabling"):
> 
> I explained why this patch series is not just about optimizing probe
> ordering or saving power. And why we can't ignore auto disabling
> (because it's more than just auto disabling). The kernel is currently
> broken when trying to use modules in ARM SoCs (probably in other
> systems/archs too, but I can't speak for those).
> 
> 3) Concerns about backwards compatibility
> 
> I pointed out why the current scheme (depends-on being the only source
> of dependency) doesn't break compatibility. And if we go with
> "depends-on" as an override what we could do to keep backwards
> compatibility. Happy to hear more thoughts or discuss options.
> 
> 4) How the "sync_state" would work for a device that supplies multiple
> functionalities but a limited driver.

<snip>
To be clear, all of above are _real_ problems that stops us from efficiently
load device drivers as modules for Android.

So, if 'depends-on' doesn't seem like the right approach and "going back to
the drawing board" is the ask, could you please point us in the right
direction?

- ssp
