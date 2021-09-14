Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16C1940A3DD
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 04:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234374AbhINCw2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 22:52:28 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:59683 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237867AbhINCw2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 22:52:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1631587871;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=OmTulBs9q+vbNMJfsRmajckF/MOURKwD1JqRZVK9QMw=;
        b=QUAUmA1P6T/r8nce37kRwK527Rjfcj34L+usRSJtdXdeq2L8n5OoH6QGmWIbmX4HJPPc7k
        3gbAeCeHa1ApEB0QZnxIHo4lg0JSc7Z0ppQ0ymn9CAEO/27yu8sDOMPMtHD8pJVdafwGhH
        msL9SCw0+LbiNlL2faG7GAhJxb+7dSE=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-qvq_k7SPPn6qvixB4UQm4Q-1; Mon, 13 Sep 2021 22:51:09 -0400
X-MC-Unique: qvq_k7SPPn6qvixB4UQm4Q-1
Received: by mail-lj1-f199.google.com with SMTP id d19-20020a2e8913000000b001c2cf57d9b7so5146515lji.16
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 19:51:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OmTulBs9q+vbNMJfsRmajckF/MOURKwD1JqRZVK9QMw=;
        b=DqDNLR6Mc1YDq1s2IDu0bkCw6wGkZGlkm8p2Z9C8an9FQqyPOap3dzeWPkBKgJPEI/
         s6FdfQoqhaVc4eUz2vqSUja0rPImb2V2zMoaLxl5NxHHD3PeIi+KJUthYoNZ1iPZez77
         lLS6KQyrEmPA2bGMHzuPd1lYe59bFBlDZg9OidXFeOSwg/oVVjAI14kmdoQFgWY3t22G
         05Avl6gS2qvBdPBAixyxlFyYZ+Yh7mGKzTCax5Mp5Y6sp3NoYc42SNywbALtMiDVPnKn
         xGBTj8l9WEPgyjl8K1Gb2SBXwPKB989hxIAPHTZp/inWpOhgeDDXSyUPw+GckSpw/SNM
         09zA==
X-Gm-Message-State: AOAM533bsly/UPpMkLBE+ksOLNeFLHYwUPUXAa7In5pIS4HhJegvl5sn
        y1USO6tisG9XBfsDrpOmGR92ichGrwB7QNVUUa2Az9RvFGW54tdOTGnElYosAYi6LpawA986FQ2
        lSU2TIcJzk4tdL2jJ5S88N0+8LKB2WAR8CsYx5w==
X-Received: by 2002:a05:651c:b09:: with SMTP id b9mr13170736ljr.307.1631587868061;
        Mon, 13 Sep 2021 19:51:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWV5sVHDiv+fgIFmhN9p5nU2mmIjZkCH4nqdLdqeo+9oSfLJ5OsAZxljqxcHXz1azMI0JJSKQuMLXiwLN5i50=
X-Received: by 2002:a05:651c:b09:: with SMTP id b9mr13170716ljr.307.1631587867859;
 Mon, 13 Sep 2021 19:51:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210913104640.85839-1-mst@redhat.com>
In-Reply-To: <20210913104640.85839-1-mst@redhat.com>
From:   Jason Wang <jasowang@redhat.com>
Date:   Tue, 14 Sep 2021 10:50:56 +0800
Message-ID: <CACGkMEsXm+v14r=+ALCsxe82+Ht8dUS9_1y3YvD-kvKraAFUoQ@mail.gmail.com>
Subject: Re: [PATCH] virtio: don't fail on !of_device_is_compatible
To:     "Michael S. Tsirkin" <mst@redhat.com>
Cc:     Alexey Kardashevskiy <aik@ozlabs.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        virtualization <virtualization@lists.linux-foundation.org>,
        Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 13, 2021 at 6:47 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
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
>
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
>         ret = snprintf(compat, sizeof(compat), "virtio,device%x", dev->id.device);
>         BUG_ON(ret >= sizeof(compat));
>
> +       /*
> +        * On powerpc/pseries virtio devices are PCI devices so PCI
> +        * vendor/device ids play the role of the "compatible" property.
> +        * Simply don't init of_node in this case.
> +        */
>         if (!of_device_is_compatible(np, compat)) {
> -               ret = -EINVAL;
> +               ret = 0;
>                 goto out;
>         }

Acked-by: Jason Wang <jasowang@redhat.com>

>
> --
> MST
>

