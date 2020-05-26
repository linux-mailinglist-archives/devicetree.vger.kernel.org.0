Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59B721E0E1C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 14:07:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390387AbgEYMHP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 May 2020 08:07:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390169AbgEYMHP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 May 2020 08:07:15 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66DEDC08C5C0
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 05:07:14 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id x20so20195822ejb.11
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 05:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pjBNNIbLOFwDkpzFcneYW/rm3MCteyqmk2+AD7eTi7Q=;
        b=Yaqnn88Ptufk2fBQlUDcRCsKClwr9CO1WpPiINZQN7Y4JD8fD75BspVLhLhkLjxRnV
         OnSaMpQrtS7Zumgr4dlhU8rzWFSyCTw35A0VY+NuJg/9uGfC71GLdP683A++JNRhCti6
         FlHsOkRSKy1k7lGEVPgcYl/pvHmKf5AIXjoFY+c0LFENh61NYCh1pFy/Cs9TEFW2+54I
         b0Ue7htdyUeQ9wnRCiwOiM28NU+ph229BAzmdKlN+YgAg/2WYYtP+4+k3CZ9kISsHA1t
         4eaNy2dCumj/YvHSNdDOdX80MwIj8Z5eYKcCcFFd5bPCIV4ix+OJ5UTnzK4vrKTBELNp
         EwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pjBNNIbLOFwDkpzFcneYW/rm3MCteyqmk2+AD7eTi7Q=;
        b=GqcnHgLaBbmVtt5bJ5HrlF3LJoQyyY1WxC4MXNZxOCnBrmUwkLp393mUeQyzV9Es5x
         KeFjzwKoRsFxsE8pYY4PJEjWiELBLBOQ4sZaFCjk6T4dki6tnkPkia5EIdlKTSDSo3Oc
         4kH0Uy3ggJZbNqpY5gaMtzAYoUckBMJv58IgrspZHM7h8W3K5wdCYaUBWEEaDLOQPpCv
         v0UQTKcfu44y+0FNlAzx5M0j54TM4JYCzj9NqFszeJIY+gRTNmqhznintboTC4XW5BT7
         ry/RbEkEBxiELKmXH5K3BiG1ZU3OcmsHJ9ciXR+kfgpmJVfTYw+YnP3QujTzCVZev7iB
         st+g==
X-Gm-Message-State: AOAM530+wBSP+QlRj3pVGhubSh617GFPBvKSzslG8UOJqHYkbTzQFh68
        +hpvDF4Tgw7z1APzjTHBwTnK6w==
X-Google-Smtp-Source: ABdhPJyG5BNBoy7vcuGmKdKBvgQj8LWPAOajFFLOspBplpV88Xa3IJ2LcNxO/A0Y2BJCjebWWRCstA==
X-Received: by 2002:a17:906:e01:: with SMTP id l1mr17850843eji.425.1590408432916;
        Mon, 25 May 2020 05:07:12 -0700 (PDT)
Received: from x1 (i59F66838.versanet.de. [89.246.104.56])
        by smtp.gmail.com with ESMTPSA id o18sm4012831eje.40.2020.05.25.05.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 05:07:12 -0700 (PDT)
Date:   Mon, 25 May 2020 14:07:10 +0200
From:   Drew Fustini <drew@beagleboard.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Grygorii Strashko <grygorii.strashko@ti.com>,
        =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux-OMAP <linux-omap@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@beagleboard.org>
Subject: Re: [PATCH] arm: dts: am33xx-bone-common: add gpio-line-names
Message-ID: <20200525120710.GA898135@x1>
References: <20200508165821.GA14555@x1>
 <CACRpkdb+ZP6rfjGg6Ef9_wYvNf6qmSc7LZyYBVKA3XWCtxPfqQ@mail.gmail.com>
 <20200518141843.GA916914@x1>
 <20200520220203.GA363398@x1>
 <CACRpkdYV4Pd2rL=Kha6HxL8J5+vFy_M0hV7+qMghS4AVxd9D2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdYV4Pd2rL=Kha6HxL8J5+vFy_M0hV7+qMghS4AVxd9D2w@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 25, 2020 at 11:23:17AM +0200, Linus Walleij wrote:
> On Thu, May 21, 2020 at 12:02 AM Drew Fustini <drew@beagleboard.org> wrote:
> 
> > I've posted a v2 which I hope improves the intent of the line names. [0]
> >
> > I'm happy to integrate any feedback and create a v3 - especially if it
> > is prefered for me to list the specific peripherial signals instead of
> > an abstract term like "[ethernet]" or "[emmc]".  This is for lines that
> > can not be used because they are not routed to the expansion headers.
> >
> > [0] https://lore.kernel.org/linux-omap/20200520214757.GA362547@x1/T/#u
> 
> This looks good to me. FWIW
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Yours,
> Linus Walleij

Linus - 

I have posted a newer patch that targets am335x-beagleblack.dts [0] 
instead of am335x-bone-common.dtsi as Grygorii Strashko pointed out
that these line names are not applicable to all BeagleBone models.

The gpio line naming scheme is the same, is it ok to add your Ack?

thanks,
drew

[0] https://lore.kernel.org/linux-omap/20200521200926.GC429020@x1/
