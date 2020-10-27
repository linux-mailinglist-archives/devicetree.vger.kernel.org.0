Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47AA129AE05
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 14:55:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408700AbgJ0NzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 09:55:03 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:25458 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2438386AbgJ0Ny7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Oct 2020 09:54:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603806897;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ngy9t9+mZDVeXCahPtqT6RsIxpk8fj+GjpvS3FzPgDo=;
        b=Jh9Wpd5aXWDPlS6dbOwkazEaFN2eKFKt4LX97dueVp7Hi7YXIM37n8fLwdgRPV0Qhr8zYP
        uVr8lWd9Ov8kzqWb+iCzltfNPBbKH6+xz0bIred3x0YX28TeL3ScqMe0MOP0rT8rlRloWq
        jr+ZGqn1DIrkGQNswceu7kv+oZGwriA=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-W2IfEiYNNEOzMzXhRaFhHw-1; Tue, 27 Oct 2020 09:54:56 -0400
X-MC-Unique: W2IfEiYNNEOzMzXhRaFhHw-1
Received: by mail-ed1-f71.google.com with SMTP id dm20so734075edb.2
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 06:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ngy9t9+mZDVeXCahPtqT6RsIxpk8fj+GjpvS3FzPgDo=;
        b=Lw/qWnpnSHLj0uFD1WG/6Y0LMtFSC2exKt3F8p9BkCRBqwXeHkMi78gd54KRHLx/7v
         X3IuU2RYeJHsrZJ9gwUr6wk8qG0ksxzclNkbQdai6FnykR6Hi/Pv2iDFXeGFtBTRRjK+
         /MMqDeqUE8KJgmsOH1Jo1Fw2RnUt+RXWMs408Iz31iO9OKIvbxGNHDOQITc9buEkuCTb
         DoDKLARAcy7PKW1kT7bJ89Duhyirx6qNY+RqpmPUaPib/NFKVryacgcPhLRqVtYGApcL
         yiOOpSCm/Qd1D4efpqRWauUE+GjC9geSmhH3KZL7+MboEIVwtieVpgyN62CHsuCDzkz7
         4UbA==
X-Gm-Message-State: AOAM532YoTbwJ1nW0yM1vzHVIEtNh2J1GlvL075tJkA9oz8FMh/Kvz9p
        FHeN8U52svIUfN/3/Tw0Q7PPfOMQkYE31tkYW+5JmQ3dgQDdNsAf7qfQLe5PzcWtdBC2rytGT3O
        gkG3epH92+dvpFx/JEPqrJA==
X-Received: by 2002:aa7:db07:: with SMTP id t7mr2433216eds.161.1603806894610;
        Tue, 27 Oct 2020 06:54:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOWMHIOJb9ZQeE/rAhdam2sVdYl3IBDyDW1OMzfCBuJWAVzpMjkn8z+c+E6aL/ohN3DVq4Ew==
X-Received: by 2002:aa7:db07:: with SMTP id t7mr2433197eds.161.1603806894417;
        Tue, 27 Oct 2020 06:54:54 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id v14sm1082691ejh.6.2020.10.27.06.54.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:54:53 -0700 (PDT)
Subject: Re: [PATCH 2/7] ata: ahci: mvebu: Support A8k compatible
To:     sven.auhagen@voleatech.de, axboe@kernel.dk, robh+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, gregory.clement@bootlin.com
Cc:     linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, jason@lakedaemon.net, andrew@lunn.ch,
        rjw@rjwysocki.net, viresh.kumar@linaro.org,
        antoine.tenart@bootlin.com, maxime.chevallier@bootlin.com,
        thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com
References: <20201007154554.66650-1-sven.auhagen@voleatech.de>
 <20201007154554.66650-3-sven.auhagen@voleatech.de>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <fe603fd8-80e4-ac76-ae16-a00c2c9494e0@redhat.com>
Date:   Tue, 27 Oct 2020 14:54:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201007154554.66650-3-sven.auhagen@voleatech.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10/7/20 5:45 PM, sven.auhagen@voleatech.de wrote:
> From: Miquel Raynal <miquel.raynal@bootlin.com>
> 
> The ahci_platform.c driver was historically the one bound to the A8k
> AHCI compatible string, but before adding a quirk for this compatible,
> it is probably cleaner to put all Marvell EBU code in one place: the
> ahci_mvebu.c driver.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  drivers/ata/ahci_mvebu.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/ata/ahci_mvebu.c b/drivers/ata/ahci_mvebu.c
> index 43bb2db59698..1cdc126882eb 100644
> --- a/drivers/ata/ahci_mvebu.c
> +++ b/drivers/ata/ahci_mvebu.c
> @@ -96,6 +96,11 @@ static int ahci_mvebu_armada_3700_config(struct ahci_host_priv *hpriv)
>  	return 0;
>  }
>  
> +static int ahci_mvebu_armada_8k_config(struct ahci_host_priv *hpriv)
> +{
> +	return 0;
> +}
> +
>  /**
>   * ahci_mvebu_stop_engine
>   *
> @@ -230,6 +235,10 @@ static const struct ahci_mvebu_plat_data ahci_mvebu_armada_3700_plat_data = {
>  	.host_flags = AHCI_HFLAG_SUSPEND_PHYS,
>  };
>  
> +static const struct ahci_mvebu_plat_data ahci_mvebu_armada_8k_plat_data = {
> +	.plat_config = ahci_mvebu_armada_8k_config,
> +};
> +
>  static const struct of_device_id ahci_mvebu_of_match[] = {
>  	{
>  		.compatible = "marvell,armada-380-ahci",
> @@ -239,6 +248,10 @@ static const struct of_device_id ahci_mvebu_of_match[] = {
>  		.compatible = "marvell,armada-3700-ahci",
>  		.data = &ahci_mvebu_armada_3700_plat_data,
>  	},
> +	{
> +		.compatible = "marvell,armada-8k-ahci",
> +		.data = &ahci_mvebu_armada_8k_plat_data,
> +	},
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, ahci_mvebu_of_match);
> 

