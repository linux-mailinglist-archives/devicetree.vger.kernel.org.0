Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 324903D3BD4
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 16:34:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233665AbhGWNx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 09:53:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235310AbhGWNxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 09:53:52 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2487CC061760
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 07:34:25 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id z26so1986520oih.10
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 07:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XAinfP2rs3am3N6tj2c+h5vadTCnbhTDK2b4aCECSE4=;
        b=u+cadcfhA+j6aHp6BGy9ZUtZxONYh+7Cgj5HKJYLkI/ZqZFcXyRyBkWNm4atPw2l4L
         YObLRM8IDWnlFrBQ+1dDDuUJAFzPwLq+D3C3DodvczZw8cG4Gexm/+4QYrnUPkUygtNA
         hM0Ktvz/VTciCKBMovzabl0RaoZtM8NJzK2F68R1Be4bFyLP9dGNrRIGQUplaaY+owpu
         M2h/C4gMig5HQbe24sbD7d/31fRS8EptxemUdnjJED2vObEwaMOT5LiCIpg7Jqli+sZL
         F4hcUsnGXVL1yZLaYgPR8xA7kbpKYTWM+nkW9MkJ2HDR+mJYRLBJAwz9repEuw59MwN2
         BLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XAinfP2rs3am3N6tj2c+h5vadTCnbhTDK2b4aCECSE4=;
        b=MRTesbmNLF7MtC7PxjOnTptwU8NCi5e8dT1pxC1cucQ/NGUJFoyd5N/98rsaFPjYWu
         2u89oY8f2v5Fg4yUzuSpX/0fEg+Yl7fi4l3+yFyvs3ys3tjVUcLb8TnrP97DLy3TBcz+
         vVytTiYuDQLJAJGqC9SnY346hIdMRfddJ1Y750P4fT9qvS+dfu6PtnCma/bJ8BIktzAr
         mfYJdu1RoXOeOfpYevBPZK87TbNcDniOR/+C+FVKsslp8W5V4bUwIGc1JKz54eWF3j04
         T+JTEP4wUsn8M4tMMA+sem2+7FcEi55YOuZSN4OqOSs09BpTDlgaxu7VYT8bexIL0OKa
         GAqg==
X-Gm-Message-State: AOAM531w/MrOrAfBYz+xEkX/w07Mz3nn81E9JbogjIiqPw0wPinY95UE
        boOtXhqF0YwhmEbNWrx735J25idqeLr1gg==
X-Google-Smtp-Source: ABdhPJxX86aBV8kuG7xzOwBTqRN+j8bd4Ak482LKf14NiNigPOtJzDnbi3hkRrQbTnoUDdwjoudU6Q==
X-Received: by 2002:aca:d11:: with SMTP id 17mr8785630oin.19.1627050864349;
        Fri, 23 Jul 2021 07:34:24 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q63sm3747743ooq.4.2021.07.23.07.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 07:34:23 -0700 (PDT)
Date:   Fri, 23 Jul 2021 09:34:20 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        John Stultz <john.stultz@linaro.org>,
        Felipe Balbi <balbi@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH 29/29] arm64: dts: qcom: Harmonize DWC USB3 DT nodes name
Message-ID: <YPrTbC7fNOY3qCcJ@yoga>
References: <20201020115959.2658-1-Sergey.Semin@baikalelectronics.ru>
 <20201020115959.2658-30-Sergey.Semin@baikalelectronics.ru>
 <CALAqxLX_FNvFndEDWtGbFPjSzuAbfqxQE07diBJFZtftwEJX5A@mail.gmail.com>
 <20210714124807.o22mottsrg3tv6nt@mobilestation>
 <YPfPDqJhfzbvDLvB@kroah.com>
 <20210721100220.ddfxwugivsndsedv@mobilestation>
 <YPf29+ewbrYgHxRP@kroah.com>
 <YPh/AS5svBk+gddY@yoga>
 <YPp7Q4IofUYQlrqd@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YPp7Q4IofUYQlrqd@kroah.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 23 Jul 03:18 CDT 2021, Greg Kroah-Hartman wrote:

> On Wed, Jul 21, 2021 at 03:09:37PM -0500, Bjorn Andersson wrote:
> > Which tree did you revert this in? 5.13.stable?)
> 
> My usb-linus branch which will go to Linus later today.  Then we can
> backport the revert to older kernels as needed.
> 

I'm not worried about the backports, I'm worried about conflicts you're
causing because you're taking a non-usb patch through the usb tree.

I was about to push a revert (to this and the other Qualcomm platforms),
but as you're taking some set of reverts through the usb tree we're just
in for a bunch of merge conflicts.

Regards,
Bjorn
