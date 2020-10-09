Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6409F28819F
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 07:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729908AbgJIFMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 01:12:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729899AbgJIFMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 01:12:38 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD45EC0613D4
        for <devicetree@vger.kernel.org>; Thu,  8 Oct 2020 22:12:37 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id b193so5346279pga.6
        for <devicetree@vger.kernel.org>; Thu, 08 Oct 2020 22:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OYd+TYtCwcTkRErm6PrBZhr36/0O5PMrgsfdqqyaYI0=;
        b=aUatzWoaOLKWccPDyFkkngfUk3K3gYS481LLw3b4hCBK6UzGM0nxisY5dxjngotd8b
         4g2sCb2FTSSxjpX7om5s9uPpfJUPn1vHICiqMpKkxokeOWKNC6569ZKg0n7gt4uBp2kG
         4sx7jkF9qa8zr7+urwx4Kt/P2rDGyqgMHHksylntLPFJ+Q6Wm/H9kGyfBerKYeK79Fmi
         /GEDMfrLh/6rnxl3Z5pbCaYJI4Z7FHUcfEJK7VP5y7fa3xEUDk0R0gZEuGHiQYH9ntrU
         OvvNPbyMRbVNZs8SY+uxz1UcUlKWnm6uDO9y+9zPBe2+mNmO4ICPSfASyxK9ffPV7fr0
         oAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OYd+TYtCwcTkRErm6PrBZhr36/0O5PMrgsfdqqyaYI0=;
        b=VsIVvXhuVHzJxoO6f0xxmkJ+qqRo/UhuDXcwDpg++HNmgLIJuq5p0Wh0wzuawP6tLO
         HkBeUewDgZxCHxBmIy0yOuqNByDxfggQPbzSbG4p9mSYHXVEfwWZCBGQmJubA2ToyCS9
         nSrdmxqBALAdQe3gjTL0bSeE6kyAFrL0xX6q6V2PKqnyU57o3EcBM9nYfMhAF1zUbk38
         7KWDiSKtgIwxoewbKhjuS3Px2IBT6Ckj2QoRWJpDF1sAXidIXAkM10DoB3vYoGabRMIF
         H11yINqX98xlmyLO9t6DxRlPu785Ec6+RKvz+Gnpm5Zv/a+5iXdRJcfBOd53gpZQ1Ug9
         sVNg==
X-Gm-Message-State: AOAM533uKeU/zAvAF8vxyj0UqJQFh/ADs98+5KI/xrNs9tDw15lgPpHd
        oXPd/eAwNI0kIbOG1EMDVAxdVw==
X-Google-Smtp-Source: ABdhPJx3IoklH8AdZdltn7petBy9Vtfp2LQ1yeUvGrm0ltqXpUl00f9rUuxaEp5kz74S44LyV28CyA==
X-Received: by 2002:a63:d558:: with SMTP id v24mr2045134pgi.294.1602220357237;
        Thu, 08 Oct 2020 22:12:37 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id f4sm9199776pgk.19.2020.10.08.22.12.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 22:12:36 -0700 (PDT)
Date:   Fri, 9 Oct 2020 10:42:33 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     morten_bp@live.dk, Jassi Brar <jaswinder.singh@linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        devicetree@vger.kernel.org, Sudeep Holla <Sudeep.Holla@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Tushar Khandelwal <tushar.khandelwal@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [RFC V2] dt-bindings: mailbox : arm,mhuv2: Add bindings
Message-ID: <20201009051233.zn72y7fmwsy3btv4@vireshk-i7>
References: <ca2f491fc97bdf6d7fc8d6fee5f702be27db6702.1602084104.git.viresh.kumar@linaro.org>
 <CAL_JsqJTkeHHKm8ZYM7f1eO_ESPvaG3wnFXK03_ML3uT62rKNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJTkeHHKm8ZYM7f1eO_ESPvaG3wnFXK03_ML3uT62rKNw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-10-20, 09:30, Rob Herring wrote:
> On Wed, Oct 7, 2020 at 10:28 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > +  clock-names:
> > +    items:
> > +      - const: apb_pclk
> 
> Just 'maxItems: 1' is fine here as the name is already defined.
> 
> > +
> > +  arm-mhuv2-mode:
> 
> arm,mhuv2-mode.

This is what I did initially but was getting errors with it...

> Needs a type reference.

And this fixed it.

> > +    description: |
> > +      The MHUv2 controller may contain up to 124 channel windows (each 32-bit
> > +      wide). The hardware and the DT bindings allows any combination of those to
> > +      be used for various transport protocols.
> > +
> > +      This property allows a platform to describe how these channel windows are
> > +      used in various transport protocols. The entries in this property shall be
> > +      present as an array of tuples, where each tuple describes details about
> > +      one of the transport protocol being implemented over some channel
> > +      window(s).
> > +
> > +      The first field of a tuple signifies the transfer protocol, 0 is reserved
> > +      for doorbell protocol, 1 is reserved for single-word protocol and 2 is
> > +      reserved for multi-word protocol. Using any other value in the first field
> > +      of a tuple makes it invalid.
> > +
> > +      The second field of a tuple signifies the number of channel windows where
> > +      the protocol would be used. For doorbell protocol this field signifies the
> > +      number of 32-bit channel windows that implement the doorbell protocol. For
> > +      single-word protocol this field signifies the number of 32-bit channel
> > +      windows that implement separate single-word protocol mailbox channels. For
> > +      multi-word protocol this field signifies the number of channel windows
> > +      used for a multi-word protocol, it should be 2 or more.
> 
> These are based on IP configuration or a software decision?

Software/firmware.

The platform only fixes the total number of 32-bit registers available
(channel windows) for use, how we use them is left to us. I tried to
make it as generic as possible so any combinations of protocols can be
used here.

> > +      The total number of channel windows specified here shouldn't be more than
> > +      the ones implemented by the platform.
> 
> But can be less? Then do you need this to be a mask or range?

Yes, we don't need to use all the windows that are available to us. I
am not sure why we would need a mask/range here.

Just to clarify a little, as it took me some time to come to this
understanding, the maximum number of channel windows (these aren't
necessarily mailbox channels) supported by the hardware is 124, i.e.
124 32-bit registers. Though a platform may implement only 8 of them,
for example and the OS may want to use only 4 of them.

If we use the entire thing in:

- multi-word mode, we can create a single mailbox channel which is
  capable of transferring 124 words in one go.

- single-word mode, we will end up having 124 mailbox channels, each
  32 bit wide.

- doorbell mode, we will end up having 124 * 32 mailbox channels.

-- 
viresh
