Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49A47560AB0
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 21:53:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbiF2Txh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 15:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbiF2Txf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 15:53:35 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADAE42AC50
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 12:53:32 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ay16so34718769ejb.6
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 12:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dqavdjkcT0va56FD3EAwacRKjzmrc+kAsjMewxtGQNk=;
        b=LLdoGzkK2JjpkHb6PtvuoF5XA5STkn9qwLNSbrOkqQW+nRhUheph7vagv8spFW3HZf
         buAQemnlMu1kjxtGb8qcAtkwI8HwbLVjVbnofOvcA3WtPHj57EGKakcqWT0GtIDzhi21
         IKmFp1mRlPFVFq2TfkGq+F0BbdiutoJjgjK94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dqavdjkcT0va56FD3EAwacRKjzmrc+kAsjMewxtGQNk=;
        b=U30jymGNOwAlgSUzo81jHG05stZd5QfnjSKcbkJnyd0wqnTvsSseAQbKW0b+1dI20/
         1U1Nd8MoCZRdo44W+qh/90xFamujLxSS2eZ3PW+27gVcy0g/Aqk7X+bI+po9WBLOhAAo
         C5T4D0bfEweKSs4m1b9MzLrdPuhnnSmzIFQwuYbN77i7E+4QdUu3QKpIA5zuVipl3Bp3
         CooIMyNyc06tefGBADDoAXO6/mO9BqUvRQf749WUFimq8FuYvC9QuDmeM0gD69a3Kgqc
         Pm7zT152HvCQsFi7di/0mXhVky5BCQzFxCW9PlyXpzY97s2RqPsjswFaueLgI1I7Z24M
         T8lA==
X-Gm-Message-State: AJIora/ReEGQKU7KmjNdtb3MJccJoc9LA7KiAZ6RtWLVCBSIM8fQMJCg
        8Gd+2KnBHIPo+sCJ7CUk0jD5YD40gXXd3Jnx
X-Google-Smtp-Source: AGRyM1svhwOOLqcxsoW2DS8vcCz9/WVOXzoAhp2fWAJzUrLpjaiNpK4fpuA/QUxWtS4F9OuunPsx0w==
X-Received: by 2002:a17:907:3da2:b0:718:c108:663c with SMTP id he34-20020a1709073da200b00718c108663cmr5026003ejc.252.1656532410853;
        Wed, 29 Jun 2022 12:53:30 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id jz2-20020a170906bb0200b00726314d0655sm8127318ejb.39.2022.06.29.12.53.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 12:53:28 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id v9so8429586wrp.7
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 12:53:27 -0700 (PDT)
X-Received: by 2002:adf:d1e9:0:b0:21b:c8f8:3c16 with SMTP id
 g9-20020adfd1e9000000b0021bc8f83c16mr4660391wrd.659.1656532407325; Wed, 29
 Jun 2022 12:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <YqpprpUHmlD62YzI@google.com> <CAD=FV=VNDamV4+j07TrnX3cUs2-D5ySbeQ-zfU=Eef8+WagGig@mail.gmail.com>
 <Yqub17iT4O7aqFMi@google.com> <CAD=FV=VEztPLhsrJecZUdyHCW7ZfFTVvxyqY5CqRVv2mWyrLog@mail.gmail.com>
 <YquoSMiQS+RG8rOM@google.com> <CAD=FV=W81pSEUbzw2ZQgs_TJ9MLnHQHiDopZXZ6bHdS7QMzAyA@mail.gmail.com>
 <YqvMffveCPiKQEUk@google.com> <CAD=FV=UJOStPfRR3Hq2DmRBSH-HCtZ16hAU9eVH5w6Hm=WSJRQ@mail.gmail.com>
 <YqytDNB2y4+qT8GD@google.com> <CAD=FV=UT0XtMjZ9syQPGXeTEaUrwGTb_LgDow+cofgmx4D30VA@mail.gmail.com>
 <Yrnzl8k81f9JTMIQ@google.com>
In-Reply-To: <Yrnzl8k81f9JTMIQ@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 29 Jun 2022 12:53:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xphn68xA01xCZzX1d4YRRtkm+5G=SEUOywUCD8LKP=gw@mail.gmail.com>
Message-ID: <CAD=FV=Xphn68xA01xCZzX1d4YRRtkm+5G=SEUOywUCD8LKP=gw@mail.gmail.com>
Subject: Re: [PATCH v22 2/3] usb: misc: Add onboard_usb_hub driver
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Bastien Nocera <hadess@hadess.net>,
        Peter Chen <peter.chen@kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jun 27, 2022 at 11:14 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Fri, Jun 24, 2022 at 01:33:19PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Jun 17, 2022 at 9:34 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> > >
> > > > Looking at the "companion-hub" case with fresh eyes, too, I wonder if
> > > > that can be simpler. If we find a companion hub, do we need both the
> > > > check for usb_hcd_is_primary_hcd() and the check to see whether the
> > > > pdev was already created?
> > >
> > > I was also doubting about this and concluded that it is still needed.
> > >
> > > Let's use once more the trogdor config as example, which has one physical
> > > onboard hub chip with a USB 3.1 hub and a USB 2.1 companion hub, connected
> > > to the dwc3 controller:
> > >
> > > &usb_1_dwc3 {
> > >         dr_mode = "host";
> > >         #address-cells = <1>;
> > >         #size-cells = <0>;
> > >
> > >         /* 2.x hub on port 1 */
> > >         usb_hub_2_x: hub@1 {
> > >                 compatible = "usbbda,5411";
> > >                 reg = <1>;
> > >                 vdd-supply = <&pp3300_hub>;
> > >                 companion-hub = <&usb_hub_3_x>;
> > >         };
> > >
> > >         /* 3.x hub on port 2 */
> > >         usb_hub_3_x: hub@2 {
> > >                 compatible = "usbbda,411";
> > >                 reg = <2>;
> > >                 vdd-supply = <&pp3300_hub>;
> > >                 companion-hub = <&usb_hub_2_x>;
> > >         };
> > > };
> > >
> > > Let's assume we don't check for the pdev. With our change above for root hubs
> > > the loop is now only executed for the primary HCD. In the first iteration
> > > we encounter the 2.x hub, it has a companion hub, but that alone doesn't
> > > tell us much, so we create a pdev. In the next iteration we encouter the
> > > 3.x hub, it also has a companion hub, but we don't know/check that the
> > > companion already has a pdev, so we create another one for the same
> > > physical hub.
> >
> > Ah, you are correct. You only run into that case for the root hub,
> > correct? For everything else it's impossible?
> >
> > ...and I guess things would be different if inside the loop you
> > actually set "hcd" to point to the "hcd" of the child device. I guess
> > that's where my confusion keeps stemming from. "hcd" is the parent's
> > host controller which is not always the same as the child's host
> > controller.
>
> I'd phrase it differently: for root hubs the 'parent_hub' isn't necessarily
> the parent of each 'child' node.
>
> > It would have been keen if we could somehow know the child's host
> > controller and get a pointer to that, but we can't because the child
> > device hasn't been enumerated yet.
> >
> > OK, I'm convinced. I'll mention it in your v23 but maybe I'll have a
> > slightly better chance of figuring this out if/when I look at this
> > again if we rename "hcd" to "parent_hcd".
>
> I'm not convinced that this would generally help to reduce the confusion.
> To me 'parent_hcd' sounds as if there was a tree of HCDs, which isn't
> the case. Also one could still read 'parent_hcd' as the HCD of all
> 'child' nodes.
>
> Maybe a bit more verbose documentation like this could help:
>
>   Some background about the logic in this function, which can be a bit hard
>   to follow:
>
>   Root hubs don't have dedicated device tree nodes, but use the node of their
>   HCD. The primary and secondary HCD are usually represented by a single DT
>   node. That means the root hubs of the primary and secondary HCD share the
>   same device tree node (the HCD node). As a result this function can be
>   called twice with the same DT node for root hubs. We only want to create a
>   single platform device for each physical onboard hub, hence for root hubs
>   the loop is only executed for the primary hub. Since the function scans
>   through all child nodes it still creates pdevs for onboard hubs connected
>   to the secondary hub if needed.
>
>   Further there must be only one platform device for onboard hubs with a
>   companion hub (the hub is a single physical device). To achieve this two
>   measures are taken: pdevs for onboard hubs with a companion are only
>   created when the function is called on behalf of the parent hub that is
>   connected to the primary HCD (directly or through other hubs). For onboard
>   hubs connected to root hubs the function processes the nodes of both
>   companions. A platform device is only created if the companion hub doesn't
>   have one already.

Sounds good. Extra docs explaining this are always good and I'm fine
with more docs and leaving it called "hcd" instead of "parent_hcd"


> When writing this I realized that the check for an existing platform device
> for companions could be put inside an 'if (!parent_hub->parent)' block. It
> isn't necessary for hubs deeper down in the chain, since their pdev will only
> be created for the hub (indirectly) connected to the primary HCD.

Yup. I'm not 100% sure if it's worth adding the extra "if" test or
not. Could make the argument either way.

-Doug
