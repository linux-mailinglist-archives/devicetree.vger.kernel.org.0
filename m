Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D848388246
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:40:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352541AbhERVmJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237801AbhERVmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:42:09 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D05D2C06175F
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:40:50 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id lx17-20020a17090b4b11b029015f3b32b8dbso560724pjb.0
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NO+E9haj5HC+Ioq2q5jbYmaN67YLuG5h+MWeeOy/Mcg=;
        b=d8ENwOj3RaWNAXa+l06QiOoh9KYh0nFTSwmxMhWM8AfXTUY75ZxtmLp3n/3xQkyVwY
         /cWZwJi5cpGKwOPXYHxmZ6iqHxPx+cNSvhu7ZhntqRNc0iDID/g/xI9Joq9hD00b7QXR
         mYrdHX9Z0V6Er3/JkM/do7r2wu7ak88IuUP78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NO+E9haj5HC+Ioq2q5jbYmaN67YLuG5h+MWeeOy/Mcg=;
        b=spA6r6FEygrPYoWLuX/cy2+bPoO7NoL/XkCPihpMym1kgAqOoJNG7gktnAZKR7WUg+
         dIBFZ0Xq3nIYe6flQ5VAV4eK8o4PwS4ZD29KOS/c/h/n/zCnfxrEO6oPJrSAo4Ka4AGd
         YehbxVfr+F4hnKuYQMWutofkJzxz0US/v5cr1IiBVrSDJZnFWl8AWmLz7MOEx0c2Cs6N
         KF5JLvXgY6GWZhZ2w3xZf1JWa9a6gPn22FI9JkplRKgOQ0Cwun4QRmP0iKFZw1Fe+SwN
         1I2JFS8fYCF6s/tIH9ajOgRBaFE9/miJB9GigPFgQcFphsKp53o++ZahN7R9rUia7D5Z
         CDDQ==
X-Gm-Message-State: AOAM530u3lUu5d2u8+689nc2MCEJ9AO8WfpRKge1JyxyGp1ZMbnsSz2j
        Ouzvvpr+9M02tHCO+umuR5529w==
X-Google-Smtp-Source: ABdhPJzZf+S61tHLmuKGvW/VCmO9EdXeD0KtPCfDvd91+UxniCNo279v2OwfVZ3YicVT5JKBbEsByA==
X-Received: by 2002:a17:902:a40e:b029:e9:7253:8198 with SMTP id p14-20020a170902a40eb02900e972538198mr6819690plq.82.1621374050449;
        Tue, 18 May 2021 14:40:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:916f:ad57:7323:d032])
        by smtp.gmail.com with UTF8SMTPSA id g18sm12857076pfb.178.2021.05.18.14.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 14:40:50 -0700 (PDT)
Date:   Tue, 18 May 2021 14:40:47 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Michal Simek <michal.simek@xilinx.com>,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-usb@vger.kernel.org, Peter Chen <peter.chen@kernel.org>,
        linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Al Cooper <alcooperx@gmail.com>,
        "Alexander A. Klimov" <grandmaster@al2klimov.de>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH v10 2/5] USB: misc: Add onboard_usb_hub driver
Message-ID: <YKQ0XxhIWaN37HMr@google.com>
References: <20210511225223.550762-1-mka@chromium.org>
 <20210511155152.v10.2.I7c9a1f1d6ced41dd8310e8a03da666a32364e790@changeid>
 <YKPz7a68duMyXU5x@google.com>
 <20210518194511.GA1137841@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210518194511.GA1137841@rowland.harvard.edu>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 03:45:11PM -0400, Alan Stern wrote:
> On Tue, May 18, 2021 at 10:05:49AM -0700, Matthias Kaehlcke wrote:
> > Hi Alan,
> > 
> > You seemed to have a generally favorable view of this driver,
> > but I haven't heard from you in a while :)
> > 
> > On v4 expressed a series of suggestions and concerns, which
> > should be addressed in this version:
> > 
> > https://lore.kernel.org/patchwork/patch/1313000/
> > https://lore.kernel.org/patchwork/patch/1313001/
> > 
> > Rob acked the DT binding and the of_platform change. Please let me
> > know if the USB part needs any further changes or if you think this
> > series is ready to land.
> 
> Those were long and complicated threads, and a lot of the material has
> gone out of my brain since last October.  :-(
> 
> Still, at the time when this was first posted I don't remember there
> being any big outstanding issues regarding the USB part of the
> implementation.  It seemed to be pretty much all in order.
> 
> You can add:
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> to this patch.  Greg KH may have some thoughts of his own...

Thanks!

Could you also have a look at "[4/5] usb: host: xhci-plat:
Create platform device for onboard hubs in probe()"
(https://lore.kernel.org/patchwork/patch/1425453/)? It's a
relatively short patch that creates the platform device for
the driver from xhci-plat as you suggested in the v4
discussion.

Greg, are there any more concerns from your side?
