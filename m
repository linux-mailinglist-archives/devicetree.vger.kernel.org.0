Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D40304245CB
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 20:13:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238501AbhJFSPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 14:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbhJFSPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 14:15:24 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2883DC061746
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 11:13:32 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id 187so3063044pfc.10
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 11:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AHbFLLJBVdMn1EYU1myYShV5KJr7nhKj/LhKLE9VktY=;
        b=nhrD/4QplDgtRCKbs+d1BsV0aQosiQBT3GjUL0PAfAcdWD6m7PoyOtl6CHbN6yTwvy
         kwaLQKq5H7ea9Qxf4rb/s+VrpASAlhjwZvvDcWY920q4H/jJ6IwP2Q0cuRF1fWtAm8Bc
         H6ldHslh6sTSm8Yy0nBHDjTc/Yrk3IR+8Ms+eFHQUzUsgW25OtpDA+ffLYoXnYf+t9De
         OzNcH2iqd8deytbUm87BfvU/pxTeQ2R2qY+kyb/KZphLzUXdV40J0NpIEnTvMdFOWygX
         7KC8mYBB8PBMdD4pmLLnik7rOGGSZCN79wMUoo7kbbjYQMzbGpaCxrF0A7F47xe1xjok
         OWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AHbFLLJBVdMn1EYU1myYShV5KJr7nhKj/LhKLE9VktY=;
        b=KBDSZouYh/dJxK1Jst4ywi2UYrgJnFH7S5ink828aI8j7CzkClSzC0aN1EAYQeHG4F
         kxXJNPNRyrhE1saaySKngeeyd3oly++r3xXcc7aKQZdyNLsIIKH6aGr4UdFCbHJf2D9Y
         6fnjx9uQLVQ3PJy8ZwmkLXNdcjETX4pFdMYK5af6nXZ2R7Q4pEK6Hz/ipPSyGwEBe77I
         O2xzFlRy6Ef/j0hqsWai189b+eApLijMH+QXhNyUBxM7uaAbf3hNzwYcQqCX7W67SBBL
         lrI3MHOxpf1qhmsdNlFfnHHS0bnCAN7QNC5gzxL52bdMtCKKf0nnYTZFm/50vBUFrJGu
         yZSg==
X-Gm-Message-State: AOAM533TkEoDwSodC6yKsWuo/cvwIrln9rDEs7Je+ivb62a/YSGsiWSr
        JsqCxXipblvFR0SvKz1bWLshEg==
X-Google-Smtp-Source: ABdhPJxmKF3Bdz9OwWKs+AydMtJ6JforNBHoMf1Udb6gHLHIyfOPHHC8iDRSqQZ/o3duyNgdDMWmvQ==
X-Received: by 2002:a63:1950:: with SMTP id 16mr141725pgz.346.1633544011042;
        Wed, 06 Oct 2021 11:13:31 -0700 (PDT)
Received: from [192.168.0.14] ([50.53.47.17])
        by smtp.gmail.com with ESMTPSA id u12sm20921209pgi.21.2021.10.06.11.13.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 11:13:30 -0700 (PDT)
Message-ID: <4ff9c36a-3c66-b244-8b2a-7eb4e2cc2d05@pensando.io>
Date:   Wed, 6 Oct 2021 11:13:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.2
Subject: Re: [PATCH net-next v2 7/9] eth: fwnode: add a helper for loading
 netdev->dev_addr
Content-Language: en-US
To:     Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net
Cc:     netdev@vger.kernel.org, gregkh@linuxfoundation.org,
        rafael@kernel.org, saravanak@google.com, mw@semihalf.com,
        andrew@lunn.ch, jeremy.linton@arm.com, hkallweit1@gmail.com,
        linux@armlinux.org.uk, robh+dt@kernel.org, frowand.list@gmail.com,
        heikki.krogerus@linux.intel.com, devicetree@vger.kernel.org
References: <20211006154426.3222199-1-kuba@kernel.org>
 <20211006154426.3222199-8-kuba@kernel.org>
From:   Shannon Nelson <snelson@pensando.io>
In-Reply-To: <20211006154426.3222199-8-kuba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/6/21 8:44 AM, Jakub Kicinski wrote:
> Commit 406f42fa0d3c ("net-next: When a bond have a massive amount
> of VLANs...") introduced a rbtree for faster Ethernet address look
> up. To maintain netdev->dev_addr in this tree we need to make all
> the writes to it got through appropriate helpers.
>
> There is a handful of drivers which pass netdev->dev_addr as
> the destination buffer to device_get_mac_address(). Add a helper
> which takes a dev pointer instead, so it can call an appropriate
> helper.
>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
> v2: spell out address instead of addr in the function name
> ---
>   include/linux/etherdevice.h |  1 +
>   include/linux/property.h    |  1 +
>   net/ethernet/eth.c          | 20 ++++++++++++++++++++
>   3 files changed, 22 insertions(+)
>
> diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
> index 32c30d0f7a73..e75116f48cd1 100644
> --- a/include/linux/etherdevice.h
> +++ b/include/linux/etherdevice.h
> @@ -32,6 +32,7 @@ int eth_platform_get_mac_address(struct device *dev, u8 *mac_addr);
>   unsigned char *arch_get_platform_mac_address(void);
>   int nvmem_get_mac_address(struct device *dev, void *addrbuf);
>   int device_get_mac_address(struct device *dev, char *addr);
> +int device_get_ethdev_address(struct device *dev, struct net_device *netdev);
>   int fwnode_get_mac_address(struct fwnode_handle *fwnode, char *addr);
>   
>   u32 eth_get_headlen(const struct net_device *dev, const void *data, u32 len);
> diff --git a/include/linux/property.h b/include/linux/property.h
> index 4fb081684255..88fa726a76df 100644
> --- a/include/linux/property.h
> +++ b/include/linux/property.h
> @@ -15,6 +15,7 @@
>   #include <linux/types.h>
>   
>   struct device;
> +struct net_device;
>   
>   enum dev_prop_type {
>   	DEV_PROP_U8,
> diff --git a/net/ethernet/eth.c b/net/ethernet/eth.c
> index 29447a61d3ec..5441b232d8a4 100644
> --- a/net/ethernet/eth.c
> +++ b/net/ethernet/eth.c
> @@ -617,3 +617,23 @@ int device_get_mac_address(struct device *dev, char *addr)
>   	return fwnode_get_mac_address(dev_fwnode(dev), addr);
>   }
>   EXPORT_SYMBOL(device_get_mac_address);
> +
> +/**
> + * device_get_ethdev_addr - Set netdev's MAC address from a given device

Nit: s/_addr/_address/

sln

> + * @dev:	Pointer to the device
> + * @netdev:	Pointer to netdev to write the address to
> + *
> + * Wrapper around device_get_mac_address() which writes the address
> + * directly to netdev->dev_addr.
> + */
> +int device_get_ethdev_address(struct device *dev, struct net_device *netdev)
> +{
> +	u8 addr[ETH_ALEN];
> +	int ret;
> +
> +	ret = device_get_mac_address(dev, addr);
> +	if (!ret)
> +		eth_hw_addr_set(netdev, addr);
> +	return ret;
> +}
> +EXPORT_SYMBOL(device_get_ethdev_address);

