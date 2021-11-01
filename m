Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B4FF44245A
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:52:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230396AbhKAXy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbhKAXy4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 19:54:56 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72152C061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 16:52:22 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id az8so6983835qkb.2
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 16:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9eouahAXCmBoP2fXcZKQUpZJtWrRZSQPICoQryeoVs0=;
        b=AFVyNJZZ2GFBhEFp9jbrLperb698Ftnk1xoNnGmqSgGs/cEcgQIc0XlsYnWYFEbn2i
         MHm2bG4qqyk3T+6a0Vm6nPyAzXmSIeeS/SziI5Q17Hpqzx0/PNMYYDN5D38K9COs73Xv
         Pllo859919J7Do7UjOmnglCU9QhF+XwULm7B0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9eouahAXCmBoP2fXcZKQUpZJtWrRZSQPICoQryeoVs0=;
        b=WddG5gc9XfZ9uNC7ABtTiJpN739fw/shQQkpUqO7xStqVqtHdnvPhJcLkPEC3mhkWc
         rvdh63RMJL+XqCnmBXkAMC/igpXCTq990W2mrzDfoUtYWsrdakri8Pw+KuyGtT15LWqH
         IeOZyDFGeUNPeQXV+BHexpHOdKQ6wUayxfuJ+iSWKcUL9BdRb07Fk2Ywn4oYC2NMBhjj
         URK778Jdff75+NCm1zlUixUPWxk53OB97YVVslTG5Xz3Vaf4BgJqEr5KCHXiME7eyHtF
         9wsHXbNVGvoxDeyYOImodr72uw5dCfS+MZmshk/5hNDx7p4BncHZciSXSyKbaWxH/XbX
         ujpA==
X-Gm-Message-State: AOAM531blXoreAkfmFhq/YCDzLQxwihf7XdNpg0jaFoP8cdKJjNIbzVk
        ZhpQ/wvGbHRVmcTz+Iv9EGmUNwn0RKHAsWPq20I=
X-Google-Smtp-Source: ABdhPJzNbKv43p0Q3hZwPiVHfSlsLzJt/pcc7KTOY+bO3Jb9HdrhFpv7DvOMO5z9FoUwNbsx+XNHEDl/oePzYk1NXHo=
X-Received: by 2002:a05:620a:4588:: with SMTP id bp8mr18564175qkb.292.1635810741609;
 Mon, 01 Nov 2021 16:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-2-jae.hyun.yoo@intel.com> <CACPK8XcAN-SsKDS2E_Cnv=5-Rq=9sAWYyb88i2Ub-iX0WH6aZw@mail.gmail.com>
 <3b90b836-d35f-fe98-69b1-69ebcecf54ea@linux.intel.com>
In-Reply-To: <3b90b836-d35f-fe98-69b1-69ebcecf54ea@linux.intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 1 Nov 2021 23:52:09 +0000
Message-ID: <CACPK8XcR0zR10_dPOM0atyqU3TarkWZ9N4r0B94N56_gebjJaw@mail.gmail.com>
Subject: Re: [PATCH -next 1/4] ARM: dts: aspeed: add LCLK setting into LPC IBT node
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 1 Nov 2021 at 23:48, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> >
> > Do you need to update the bindings too?
>
> Hi Joel,
>
> Right, I have to update 'aspeed,ast2400-ibt-bmc.txt'. Will add update
> in v2. Thanks a lot for your review and for reminding me. :)

Note that they've moved to Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml

You can find this commit in linux-next.
