Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ECB827F0F6
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 20:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725872AbgI3SAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 14:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725372AbgI3SAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 14:00:55 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C083C0613D0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 11:00:55 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id 7so1385060vsp.6
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 11:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ION+wzhBe/H3HfVhVn+aQX6OzRaoZpbpam2ANPg8S4M=;
        b=WlaLzAfIf8gOrN61qUpliyZBNgObrr8xUTvxW9ednPw5sEUmkOlDoTRsT+tZIJiEk+
         us0nNAvOS0At26rSTh8xkL+17Pg+KGnqWPys/tJv23e2ngAd5AyuMaDSTJvI2/Vj8E1d
         52d5VerCqA/Zzxk3XPVyGQoWIzXc6R5108cCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ION+wzhBe/H3HfVhVn+aQX6OzRaoZpbpam2ANPg8S4M=;
        b=Dr70UefelkxvKjNMIm3LJ9A8ofGXDwJR8n+ancire9382exb3w85426Lesr0MM8Xik
         VmpQCWJOHuy6CoQwlX+UX/+R3y/DFIMKYcA6FfBI72oXuem8t4Dn3oL/RfSQ9WQkDZzM
         NPSLVLQYQecrRb5hTV1LBTnfEoL8bBEdiYv0df3q8OpJc9+ks6Zyd0tmduZWBAzvIdbb
         v8kP/OuKHhvr7Ooo4a9tMa0hREwKay4lnlCcl4YfenVCPxmbf7yQIso2ml8G3SEfFyZk
         0f6DSYoRL+Tf5d0E55PEIgH23Y2tUjpzo/gmPaYiCa6waTU1/qKCnphQdb2w7j8fGqnj
         GIWg==
X-Gm-Message-State: AOAM5336k5LcJCFzv/MHeuNfSN+jT7EYuNbueTSmUJxfqr9sNUVT5AQk
        h4dttQ6CS+C1s4o9MxTJd2n+YeQdK1JO3A==
X-Google-Smtp-Source: ABdhPJy+lsuIqD2Hwobk4aPQ99l2mke68YEeLwWEL+mO61eXIvYWAXLK20BcmhETB8c4T8REIUwBvw==
X-Received: by 2002:a05:6102:3029:: with SMTP id v9mr2532715vsa.5.1601488853924;
        Wed, 30 Sep 2020 11:00:53 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id q23sm338820vkq.18.2020.09.30.11.00.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 11:00:52 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id w11so1369460vsw.13
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 11:00:51 -0700 (PDT)
X-Received: by 2002:a05:6102:2f7:: with SMTP id j23mr2430596vsj.37.1601488851471;
 Wed, 30 Sep 2020 11:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200928101326.v4.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
 <20200929201701.GA1080459@bogus> <20200929220912.GF1621304@google.com>
 <20200930013229.GB194665@rowland.harvard.edu> <20200930124915.GA1826870@google.com>
 <CAL_JsqLq9ZJm_CMiqWwbQhgGeu_ac_j43pvk4+xCFueSbyL4wA@mail.gmail.com> <CAD=FV=WcDzgcHNn1+gH+gq_WEwpD0XXdJGm2fBVpAB=3fVbzZA@mail.gmail.com>
In-Reply-To: <CAD=FV=WcDzgcHNn1+gH+gq_WEwpD0XXdJGm2fBVpAB=3fVbzZA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 30 Sep 2020 11:00:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WhowcppEhmd=QG7YFk5iSVaCKsfGJkGBQJTwMs=bwekA@mail.gmail.com>
Message-ID: <CAD=FV=WhowcppEhmd=QG7YFk5iSVaCKsfGJkGBQJTwMs=bwekA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: usb: Add binding for discrete onboard
 USB hubs
To:     Rob Herring <robh@kernel.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Stephen Boyd <swboyd@chromium.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Peter Chen <peter.chen@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> On Wed, Sep 30, 2020 at 7:44 AM Rob Herring <robh@kernel.org> wrote:
> >
> > We already have hubs in DT. See [1][2][3][4]. What's new here?

After I sent my response I kept thinking about this and I realized
that I have prior art I can point out too!  :-)  Check out
"smsc,usb3503a".  That is describing a USB hub too and, at least on
"exynos5250-spring.dts" is is a top level node.  Since "smsc,usb3503a"
can be optionally connected to an i2c bus too, it could be listed
under an i2c controller as well (I believe it wasn't hooked up to i2c
on spring).

Interestingly enough, the USB Hub that Matthias is trying to add
support for can _also_ be hooked up to i2c.  We don't actually have
i2c hooked up on our board, but conceivably it could be.  Presumably,
if i2c was hooked up, we would have no other choice but to represent
this chip as several device tree nodes: at least one under the i2c
controller and one (or two) under the USB controller.  Just because
(on this board) i2c isn't hooked up doesn't change the fact that there
is some extra control logic that could be represented in its own
device tree node.  To me, this seems to give extra evidence that the
correct way to model this device in device tree is with several nodes.

I'll point out that on "exynos5250-spring.dts" we didn't have to solve
the problem that Matthias is trying to solve here because we never
actually supported waking up from USB devices there.  Thus the
regulator for the hub on spring can be unconditionally powered off in
suspend.  On newer boards we'd like to support waking up from USB
devices but also to save power if no wakeup devices are plugged into
USB.  In order to achieve this we need some type of link from the
top-level hub device to the actual USB devices that were enumerated.

-Doug
