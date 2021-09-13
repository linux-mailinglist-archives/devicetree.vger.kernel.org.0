Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 820A3409E17
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 22:24:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243525AbhIMUZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 16:25:21 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:23391 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243503AbhIMUZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 16:25:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1631564644;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=NhPD0uUD31I/CKuX1ZppKPQ477bEoW/ZxvwAE00nVcg=;
        b=GtumtC5Y7X1IXmNlVTCC/WxDY62tfTkYFrAwe8+TnWHO40Rbt9Z/ZM4NjVQjg+PeX1CgIi
        P3IwRcGrMBq/ErZjJLLkyqZdrqQhfZ+Ld415iJJjP8+QX9wJfCRiYPzlIfF9Akces9LBbT
        8vme7MV9X2zBItQHkJBmDc4T20pbxvo=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-XxCb5M4yP9WioQ37LGnUWQ-1; Mon, 13 Sep 2021 16:24:03 -0400
X-MC-Unique: XxCb5M4yP9WioQ37LGnUWQ-1
Received: by mail-wm1-f71.google.com with SMTP id n17-20020a7bc5d1000000b002f8ca8bacdeso250942wmk.3
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 13:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NhPD0uUD31I/CKuX1ZppKPQ477bEoW/ZxvwAE00nVcg=;
        b=sU1qouneEOOKpw/gJ7zsKyMpbwVX2PP3mF65aRSgJ+AWTUINNrRtMQ9nG4P4R73OFP
         8aHwlvqZDJ5r5WdeNWYShUn0+z2/D2kiFE1sgydt/j8XRUb3fiUEprorL7oCd4wVhv97
         VS6mtYHawLHpskOnpkoIxVkmtceJtS6DF0oRUNFZee6sQdHD0T7EOLaQdSBB0eoQxdkm
         lqo6lPUqbWJC4jnHeMhWqjTFX81a0FNTejetbwk8OAqmWEbmDRNHMTN1W0kafFwFxftF
         5Trs1aUuhTviLFJVgmWWHdKwOc1JouhZozAAjcN0Zt5OILi7NQkM6nh1NPteSpb1I1J6
         OaKg==
X-Gm-Message-State: AOAM531g+ptm1ynpEzUGD1ynfSIvEq5vCtDeUk/5kpM9dplCgdQfM7OA
        /cB9VNQSI9CTa5xFfYWBy3SxsjsHq/KJvAkgbiPIeNtbXLRm1E+LMo7sDONDhvEfVR/tiVp/dPz
        fLMMROw9fhoxaJ2zoGhwhXQ==
X-Received: by 2002:adf:8b19:: with SMTP id n25mr15678733wra.216.1631564641935;
        Mon, 13 Sep 2021 13:24:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwZ4VPgchaH0UTtSoQXdz3pY1CJwy3IEzUFNkJqC0hstFpyRondLeVvmI4fHJvgYlZOixZWGg==
X-Received: by 2002:adf:8b19:: with SMTP id n25mr15678716wra.216.1631564641742;
        Mon, 13 Sep 2021 13:24:01 -0700 (PDT)
Received: from redhat.com ([2.55.151.134])
        by smtp.gmail.com with ESMTPSA id j98sm8615187wrj.88.2021.09.13.13.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 13:24:01 -0700 (PDT)
Date:   Mon, 13 Sep 2021 16:23:57 -0400
From:   "Michael S. Tsirkin" <mst@redhat.com>
To:     Alexey Kardashevskiy <aik@ozlabs.ru>
Cc:     Jason Wang <jasowang@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        Arnd Bergmann <arnd@arndb.de>,
        Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] virtio: don't fail on !of_device_is_compatible
Message-ID: <20210913162308-mutt-send-email-mst@kernel.org>
References: <20210913104640.85839-1-mst@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210913104640.85839-1-mst@redhat.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 13, 2021 at 06:47:52AM -0400, Michael S. Tsirkin wrote:
> A recent change checking of_device_is_compatible on probe broke some
> powerpc/pseries setups. Apparently there virtio devices do not have a
> "compatible" property - they are matched by PCI vendor/device ids.
> 
> Let's just skip of_node setup but proceed with initialization like we
> did previously.
> 
> Fixes: 694a1116b405 ("virtio: Bind virtio device to device-tree node")
> Reported-by: Alexey Kardashevskiy <aik@ozlabs.ru>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---


Guenter could you take a look at this patch pls? Does it help?



> Arnd could you help review this pls? Viresh is on vacation.
> 
>  drivers/virtio/virtio.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
> index c46cc1fbc7ae..19a70a2361b4 100644
> --- a/drivers/virtio/virtio.c
> +++ b/drivers/virtio/virtio.c
> @@ -347,8 +347,13 @@ static int virtio_device_of_init(struct virtio_device *dev)
>  	ret = snprintf(compat, sizeof(compat), "virtio,device%x", dev->id.device);
>  	BUG_ON(ret >= sizeof(compat));
>  
> +	/*
> +	 * On powerpc/pseries virtio devices are PCI devices so PCI
> +	 * vendor/device ids play the role of the "compatible" property.
> +	 * Simply don't init of_node in this case.
> +	 */
>  	if (!of_device_is_compatible(np, compat)) {
> -		ret = -EINVAL;
> +		ret = 0;
>  		goto out;
>  	}
>  
> -- 
> MST

