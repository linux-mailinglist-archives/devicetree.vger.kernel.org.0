Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FBFA40887B
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 11:45:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238822AbhIMJrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 05:47:04 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:31511 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238817AbhIMJrD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 05:47:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1631526347;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=XWe98zeJD7s9qLcq/i/RsJ8if8FlWjyR2b/zkGoJBbI=;
        b=i0a5VJgz0EmkLs61QfrH8mkKoffzSoWrpU5h71H9ZT+KPCSprQFOupRvw29FGDJ/Ts5C4H
        CuQix6C7XDEJxoc83BKwkL5X0Wxi2EpclhPNjK0CLAdwoW8mNVXfkiHaUF2AkbsTjQ2YX3
        g5sZrAbygW7h0WJ1x6ictMpsKUlE5Xo=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-NvulGi8hNya9d4Wealcnfw-1; Mon, 13 Sep 2021 05:45:46 -0400
X-MC-Unique: NvulGi8hNya9d4Wealcnfw-1
Received: by mail-ed1-f70.google.com with SMTP id g11-20020a056402090b00b003d114f9cb8aso2198296edz.20
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 02:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XWe98zeJD7s9qLcq/i/RsJ8if8FlWjyR2b/zkGoJBbI=;
        b=5Kg7o24YEgrE3+TWt2Nf55sOZcIec9OvWInIAAmbxaNwjBLY26XsCS2lJzsnvIK7i7
         1NHE5w/fr6WLN6B+5WW/imoRXhgVN3P/t8JuD8gscQ5yretsQ/FrDE8WyBrmChZsSHDs
         9HbajFTwbqF33+qismHgep9jQBPKdMvi5PPxBzycD7MTjEOcGiiq/EfEl1e9DvhFoA68
         tM4DJBCftkeh/8TK9oNS+sU6qPpm/UybKZv8FeFSvZ35Wn1CQm1+Q/ddsa/b+7wJnBK9
         tZUO+vOKJbA3LhFTAZZgxgN1LYHpnw4ceARMr70g4U5Vx8UoD8HowsZMMNmrqijBmPsA
         Rpog==
X-Gm-Message-State: AOAM531aTbjPc447AR61blnB9TboafgUqHpv5sRmbmR2ZkZ8UnTb9A/j
        kk58EbnMCZD0pY7XODazx4mYt0iBFgXQsr3/IV8byPZzZXwBzNKdhX9OKhiSLpo0KKFFX1i0Qc0
        GT9fS+iakzgDHq+uCaO2+Vw==
X-Received: by 2002:a17:906:36d6:: with SMTP id b22mr11416319ejc.387.1631526345042;
        Mon, 13 Sep 2021 02:45:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvMXi0jvSRqI7rhgMLRLOVsHiODoTK7Ac8qaJOeVYG3W2Chw606SsKje3cckY4USX/iMLdRQ==
X-Received: by 2002:a17:906:36d6:: with SMTP id b22mr11416304ejc.387.1631526344832;
        Mon, 13 Sep 2021 02:45:44 -0700 (PDT)
Received: from redhat.com ([2a03:c5c0:207f:418b:5703:fd4e:73dd:1986])
        by smtp.gmail.com with ESMTPSA id c5sm3653619edx.81.2021.09.13.02.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 02:45:44 -0700 (PDT)
Date:   Mon, 13 Sep 2021 05:45:37 -0400
From:   "Michael S. Tsirkin" <mst@redhat.com>
To:     Alexey Kardashevskiy <aik@ozlabs.ru>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Jason Wang <jasowang@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
        Bill Mills <bill.mills@linaro.org>,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org
Subject: Re: [PATCH V3 5/5] virtio: Bind virtio device to device-tree node
Message-ID: <20210913053816-mutt-send-email-mst@kernel.org>
References: <cover.1627273794.git.viresh.kumar@linaro.org>
 <454a58f998b0d16847d72a97b32192829fab2c8c.1627273794.git.viresh.kumar@linaro.org>
 <d5f87715-5a3e-1e85-68ba-3e4d35163c68@ozlabs.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d5f87715-5a3e-1e85-68ba-3e4d35163c68@ozlabs.ru>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 13, 2021 at 07:19:17PM +1000, Alexey Kardashevskiy wrote:
> 
> 
> On 26/07/2021 14:51, Viresh Kumar wrote:
> > Bind the virtio devices with their of_node. This will help users of the
> > virtio devices to mention their dependencies on the device in the DT
> > itself. Like GPIO pin users can use the phandle of the device node, or
> > the node may contain more subnodes to add i2c or spi eeproms and other
> > users.
> > 
> > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> >  drivers/virtio/virtio.c | 57 ++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 54 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
> > index 4b15c00c0a0a..d001e84a5b23 100644
> > --- a/drivers/virtio/virtio.c
> > +++ b/drivers/virtio/virtio.c
> > @@ -4,6 +4,7 @@
> >  #include <linux/virtio_config.h>
> >  #include <linux/module.h>
> >  #include <linux/idr.h>
> > +#include <linux/of.h>
> >  #include <uapi/linux/virtio_ids.h>
> >  
> >  /* Unique numbering for virtio devices. */
> > @@ -292,6 +293,9 @@ static int virtio_dev_remove(struct device *_d)
> >  
> >  	/* Acknowledge the device's existence again. */
> >  	virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
> > +
> > +	of_node_put(dev->dev.of_node);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -319,6 +323,43 @@ void unregister_virtio_driver(struct virtio_driver *driver)
> >  }
> >  EXPORT_SYMBOL_GPL(unregister_virtio_driver);
> >  
> > +static int virtio_device_of_init(struct virtio_device *dev)
> > +{
> > +	struct device_node *np, *pnode = dev_of_node(dev->dev.parent);
> > +	char compat[] = "virtio,XXXXXXXX"; /* Reserve enough space 32-bit id */
> > +	int ret, count;
> > +
> > +	if (!pnode)
> > +		return 0;
> > +
> > +	count = of_get_available_child_count(pnode);
> > +	if (!count)
> > +		return 0;
> > +
> > +	/* There can be only 1 child node */
> > +	if (WARN_ON(count > 1))
> > +		return -EINVAL;
> > +
> > +	np = of_get_next_available_child(pnode, NULL);
> > +	if (WARN_ON(!np))
> > +		return -ENODEV;
> > +
> > +	BUG_ON(snprintf(compat, sizeof(compat), "virtio,%x", dev->id.device) >=
> > +	       sizeof(compat));
> > +
> > +	if (!of_device_is_compatible(np, compat)) {
> 
> 
> This broke powerpc/pseries as there these virtio devices are PCI so
> there is no "compat" - PCI vendor id/device ids play role of "compat".
> Thanks,

Hmm now that you say this I wonder why do we bother
with this check, too. When can this be invoked for something
that is not a virtio device? And is it enough to just
skip of_node initialization then?


> 
> 
> 
> > +		ret = -EINVAL;


So basically ret = 0 above?


> > +		goto out;
> > +	}
> > +
> > +	dev->dev.of_node = np;
> > +	return 0;
> > +
> > +out:
> > +	of_node_put(np);
> > +	return ret;
> > +}
> > +
> >  /**
> >   * register_virtio_device - register virtio device
> >   * @dev        : virtio device to be registered
> > @@ -343,6 +384,10 @@ int register_virtio_device(struct virtio_device *dev)
> >  	dev->index = err;
> >  	dev_set_name(&dev->dev, "virtio%u", dev->index);
> >  
> > +	err = virtio_device_of_init(dev);
> > +	if (err)
> > +		goto out_ida_remove;
> > +
> >  	spin_lock_init(&dev->config_lock);
> >  	dev->config_enabled = false;
> >  	dev->config_change_pending = false;
> > @@ -362,10 +407,16 @@ int register_virtio_device(struct virtio_device *dev)
> >  	 */
> >  	err = device_add(&dev->dev);
> >  	if (err)
> > -		ida_simple_remove(&virtio_index_ida, dev->index);
> > +		goto out_of_node_put;
> > +
> > +	return 0;
> > +
> > +out_of_node_put:
> > +	of_node_put(dev->dev.of_node);
> > +out_ida_remove:
> > +	ida_simple_remove(&virtio_index_ida, dev->index);
> >  out:
> > -	if (err)
> > -		virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
> > +	virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
> >  	return err;
> >  }
> >  EXPORT_SYMBOL_GPL(register_virtio_device);
> > 
> 
> -- 
> Alexey

