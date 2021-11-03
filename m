Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E32DB443B24
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 02:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbhKCBzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 21:55:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbhKCBzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 21:55:07 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AA5BC061714
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 18:52:31 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id s9so1095257qvk.12
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 18:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=W2HU4w7GnhKTte65isyHpt7yAXFNwuaPGGZjXYZzIto=;
        b=n0H27rJwgjdtjio7lxmzwV+ku2ClAqJg7OCr/K1KcAj+6e/BCrGJwbWJu43YR3BQI2
         3ZPoZhGZ7jA/GKubBzn5kbMELmhasgtMfCf/7JXMgtEJdAtaxoA8zt6sspI1czgw3Vzy
         3kgcg6ERstIMCbGylbyonfNK+UUj5e5yx/dgWyf2InCX1hJJ+RXqCJimBw2hiIDUcxDb
         GDf/MUV7rQThVUC6nfMGGUJX0Q+VZk7gdMeW3ELI8aqpJsN/y9ashfXGqWm84zuqmCLe
         IqvyrIO9boJcz+t603XxmJWkl38M9civl35afuasHfx7b3IDkqWv/AyysASTfbAwMxuU
         +1iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to;
        bh=W2HU4w7GnhKTte65isyHpt7yAXFNwuaPGGZjXYZzIto=;
        b=iT7/tLZmiu+Thvm1bWLIwXrcR7WlE3KH0iAY2Evn2c+g0zDUnq4B9TW8AqtIkghpVn
         nRWSLMfmf1trhcKcZ2Ddu9qJOblJ7/dvcZtAW1Z2T+EEUpTRLPKUjdAfILme33nh8OTd
         hPDi9z1jgQVZ4bb0SZzheArb/1O5171JQ7Rcv08TvyJEPNglUcaEpUqsd3YnCU6eNGKG
         uqvszZp5Y+toaXS1EBnvY/5+7Y/Bui40GTSIOXJ5IGIg0/CxqrPpJp9u2qqkXyXP8gFz
         M+wpbdy5canMBNq/xJJXvEER2I82pxYEwDgnaqlDqFdgNJMNWZ6jpoNXy6ZsHkFkWfWl
         q5vA==
X-Gm-Message-State: AOAM532Rp1ksL8Q0aEfvJpDNIgHxf9TtB0n5eWpyXF6YxET0wVuPARdP
        jJbq3iTkSrxSV4cz2OcEHw==
X-Google-Smtp-Source: ABdhPJxAZb3DCF8bmbLHwMF6GRKQh7wEROD8SIINO6DSBkTwPrzFSqU3DONEfQuaeO92GHCycangsA==
X-Received: by 2002:ac8:5745:: with SMTP id 5mr18639476qtx.37.1635904350437;
        Tue, 02 Nov 2021 18:52:30 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
        by smtp.gmail.com with ESMTPSA id o10sm596759qtx.43.2021.11.02.18.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 18:52:30 -0700 (PDT)
Sender: Corey Minyard <tcminyard@gmail.com>
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:b4e0:932d:f90c:fafb])
        by serve.minyard.net (Postfix) with ESMTPSA id 009481800B9;
        Wed,  3 Nov 2021 01:52:28 +0000 (UTC)
Date:   Tue, 2 Nov 2021 20:52:27 -0500
From:   Corey Minyard <minyard@acm.org>
To:     Rob Herring <robh@kernel.org>
Cc:     jae.hyun.yoo@intel.com, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        openipmi-developer@lists.sourceforge.net,
        linux-aspeed@lists.ozlabs.org,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Cedric Le Goater <clg@kaod.org>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add
 'clocks' as a required property
Message-ID: <20211103015227.GO4667@minyard.net>
Reply-To: minyard@acm.org
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 02, 2021 at 08:20:37PM -0500, Rob Herring wrote:
> On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
> > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> > 
> > Add 'clocks' as a required property.
> > 
> > Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> > ---
> > v1 -> v2:
> > Changes sinve v1:
> >  - Added 'clocks' property into kcs-bmc bindings using
> >    'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
> >    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
> >    separate patch later.
> > 
> >  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1549943
> 

From the code, I think this change will break all these platforms, as
the initialization of kcs will fail without the clock property.  I'm
going to pull this out until it gets sorted out.

Also, could you rebase on the latest kernel when submitting next time?
There was a minor thing I had to fix up.

-corey

> 
> kcs@114: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> 
> kcs@24: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 
> kcs@28: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> 
> kcs@2c: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> 
