Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4974B267B5B
	for <lists+devicetree@lfdr.de>; Sat, 12 Sep 2020 18:16:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725875AbgILQQ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 12:16:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725850AbgILQQv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 12:16:51 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F300C0613ED
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 09:16:51 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id x69so8988313lff.3
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 09:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9U094qqCq9d4miMet+MZEOYG8XbE21uClAnLKejltBc=;
        b=YAeVSe5Osg2SXWG44jaIOAY1b/3jhgKvB4Bu+/p517wil9XaoCFMb/SFfZKuBdlQ7k
         RxmGRUXxd0VLFX0exm5WSxx7aKflLcpDtUlppZUkuz3aQ79UR4TjIQeO2AhqqjR7Wkul
         mPaZmim0Li8U5WFu7vfqRf2mzIJm1R42Q2A+54i1j67bF30hTGLcmmQHBWuxl6NHLoyX
         9nclgltPHcYGCNxwmsSMBXQEPKS17dPFYi9GKRhFP6xMiA/ycvTq1fnOxpc8q4PTXTo2
         WrgWGvA3hM+6bda7WPisZUToo8MRKj4q88tefqK96HQxdKjF1OAPwKyck15Ses0a+tb4
         jlBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9U094qqCq9d4miMet+MZEOYG8XbE21uClAnLKejltBc=;
        b=JfhTynF5q93AWCdV9TUl9pD0Yu1YD7w15sBMNprZ3eObJEMI8HnD+lsXkqPswzdz5N
         OxED+Yt/Gp+5pqAydvKSJStLeupQuVrnSIs5tNh9TyGtk3HmUyK9LX+wvIe7KE05D/Kz
         s/YmJm/3QEnh18nf9Ntd1Wuj4vHPveeHa5/rraYrr5NzrOp5vdS0H+8GRZAb50VAJ2lf
         +HbeDuAPdk31BbbHLsZS5ct4Xmm79i31NPOpvxSbsQ32C3n6wTT0Ha8+6pErNzX4FRGN
         csBy2xLytVAhS2PH1r8UL/4zxwrv8LWiTHeqJqK0HwKcVmv3iObyZogGuqC8TJ1WAXym
         ivuw==
X-Gm-Message-State: AOAM532Jcg7WAYHle7AgF6Rd/HUYuBcWuXOB8zrw/S7n7OdhCISSfN3s
        sjoxaialSoHATKRRTUrU9CFkVRFGICiRnaPDBjn4LQ==
X-Google-Smtp-Source: ABdhPJyxyrQtW5hXYVHMhi10Oq4pHIB0NH2ATk3u2qZ+1xXJqbLNuSz38EwTMJ4U5Lfc1EZ+TVMsa1cmiQDormQOmwY=
X-Received: by 2002:a19:6c2:: with SMTP id 185mr1785569lfg.441.1599927409676;
 Sat, 12 Sep 2020 09:16:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200907211712.9697-1-chris.packham@alliedtelesis.co.nz> <20200907211712.9697-4-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20200907211712.9697-4-chris.packham@alliedtelesis.co.nz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 12 Sep 2020 18:16:39 +0200
Message-ID: <CACRpkdZ13B==RROumpfB1sjO_uPG0Jx-LRwjm-w_6wr_wb1v8A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: Add i2c0 pinctrl information for 98dx3236
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc:     Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 7, 2020 at 11:17 PM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> Add pinctrl information for the 98dx3236 (and variants). There is only
> one choice for i2c0 MPP14 and MPP15.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please merge this through the ARM SoC maintenance path.

Yours,
Linus Walleij
