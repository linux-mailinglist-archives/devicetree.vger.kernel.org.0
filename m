Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE0192ABDFB
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 14:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729850AbgKIN7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 08:59:07 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:29920 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729697AbgKIN7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 08:59:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1604930345;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=7xwyMRgx6zwOoi8ggqAXxORMWSzC0EyKow3sz49WwHo=;
        b=Scq6HiNR6YvdPzryR0DPWR7C3e5lCAsR1+Op19eZdJH7eb/ippFQd8oV/AbhM/AZ6iHuk6
        kh3Qj8EybrsokiTkq/n0JqjM0ctZZ1T04YWu0nKy4OYToM1NNakB6E8z4xUgn3ILura86K
        Zko1n/MbcTYi8g5lWV07jAHJVI6GeHM=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-Af5TMbucO1uL1FrYQ9WPTg-1; Mon, 09 Nov 2020 08:59:04 -0500
X-MC-Unique: Af5TMbucO1uL1FrYQ9WPTg-1
Received: by mail-ed1-f69.google.com with SMTP id h6so2730625edt.12
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 05:59:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7xwyMRgx6zwOoi8ggqAXxORMWSzC0EyKow3sz49WwHo=;
        b=HcLPuLUYyaj8cnxpKkpRNpRb4grJXqIt0i1QfYwJFc5wQoy6Rsk5UZDtw3xtiNFE8h
         Qs2eWseyKpDsSGqr+NYen/LxzseJCiDAQLVKK+vpM+eg9HRw+QoB8cDmDhvS2Wgk6Twq
         vYycdssv/HRaNHmamSgZ/6SsKDMD6GLTZ9f5108NFWqreSBSoWRvoh22dJqqG9iCUQUc
         S9FUsmg84XDcxBmGY8VF8iEtwhFWRkm0c1AyPDGSS/Qn9vyg+AjvCn1jv7fYEPI4HGKM
         pApkMxT6MgB8ZGaWctwDVL9ooa74PzPQRj9SOKmLmWKisttwIxViDH9A4ofi7ts55YVw
         tY5w==
X-Gm-Message-State: AOAM531qvJ9cd+s8nlm9+wuh4yx+RMsOm6LKYS+et3McWQH0Di/8izIP
        IrsRHrb6Vep0Rbea+6qe3Edp7Z+IKROAG3sonwB6QIvWgwtVEfYj/0wEonooY5qZOWrWiod7+KL
        7a5GYr0NIJaaF+OLGOIg3bw==
X-Received: by 2002:a17:906:6d13:: with SMTP id m19mr15065935ejr.345.1604930342787;
        Mon, 09 Nov 2020 05:59:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwtdM3M+0YFSVIeiw2vPzebtoaAaXJrH7HsStEJdONxGf7Fpp63aS0CZ48GpVImlcZ1NZAehw==
X-Received: by 2002:a17:906:6d13:: with SMTP id m19mr15065916ejr.345.1604930342620;
        Mon, 09 Nov 2020 05:59:02 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
        by smtp.gmail.com with ESMTPSA id c4sm8714607ejx.9.2020.11.09.05.59.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 05:59:02 -0800 (PST)
Subject: Re: [PATCH v2 4/9] ata: ahci: add ack callback to multi irq handler
To:     sven.auhagen@voleatech.de, axboe@kernel.dk, robh+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, gregory.clement@bootlin.com
Cc:     linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, jason@lakedaemon.net, andrew@lunn.ch,
        rjw@rjwysocki.net, viresh.kumar@linaro.org,
        antoine.tenart@bootlin.com, maxime.chevallier@bootlin.com,
        thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com
References: <20201104155237.77772-1-sven.auhagen@voleatech.de>
 <20201104155237.77772-5-sven.auhagen@voleatech.de>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <b27902a6-f7cb-cea4-2023-2cc6875a4f42@redhat.com>
Date:   Mon, 9 Nov 2020 14:59:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201104155237.77772-5-sven.auhagen@voleatech.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 11/4/20 4:52 PM, sven.auhagen@voleatech.de wrote:
> From: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> In order to support custom actions at the end of the irq handler
> a multi_irq_host_ack callback is added to the struct ahci_host_priv.
> 
> Suggested-by: Hans de Goede <hdegoede@redhat.com>
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  drivers/ata/ahci.h    | 2 ++
>  drivers/ata/libahci.c | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
> index 98b8baa47dc5..d8109e06794c 100644
> --- a/drivers/ata/ahci.h
> +++ b/drivers/ata/ahci.h
> @@ -371,6 +371,8 @@ struct ahci_host_priv {
>  	/* only required for per-port MSI(-X) support */
>  	int			(*get_irq_vector)(struct ata_host *host,
>  						  int port);
> +
> +	int			(*multi_irq_host_ack)(int irq, struct ata_port *ap);
>  };
>  
>  extern int ahci_ignore_sss;
> diff --git a/drivers/ata/libahci.c b/drivers/ata/libahci.c
> index ea5bf5f4cbed..cf9839135a57 100644
> --- a/drivers/ata/libahci.c
> +++ b/drivers/ata/libahci.c
> @@ -1897,6 +1897,7 @@ static void ahci_port_intr(struct ata_port *ap)
>  static irqreturn_t ahci_multi_irqs_intr_hard(int irq, void *dev_instance)
>  {
>  	struct ata_port *ap = dev_instance;
> +	struct ahci_host_priv *hpriv = ap->host->private_data;
>  	void __iomem *port_mmio = ahci_port_base(ap);
>  	u32 status;
>  
> @@ -1909,6 +1910,9 @@ static irqreturn_t ahci_multi_irqs_intr_hard(int irq, void *dev_instance)
>  	ahci_handle_port_interrupt(ap, port_mmio, status);
>  	spin_unlock(ap->lock);
>  
> +	if (hpriv->multi_irq_host_ack)
> +		hpriv->multi_irq_host_ack(irq, ap);
> +
>  	VPRINTK("EXIT\n");
>  
>  	return IRQ_HANDLED;
> 

