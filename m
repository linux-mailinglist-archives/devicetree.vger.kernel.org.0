Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5BD29C3DC
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 18:51:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1822610AbgJ0Ruw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 13:50:52 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:43077 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2901576AbgJ0OZB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Oct 2020 10:25:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603808699;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=lZIQtSRPpP7bzkDKojGKr85+f7UAm051h+6PAJvhRak=;
        b=PHxTBs+AikeKRwTwQXpSMqicUNGHp+S7dLWF1wbKPQt8twnVkPjx9EFnr9nxAwX0Kh3fSA
        FBXMb1KC6ZMm6fUTy5QPbjMnLsyhzG2zpUbwUbje7HlNX7fJMT2BScEFLnUX+wPPTe4gU3
        UM8SnSXrt/Oj/U12HWsdtlSvoeyXpOI=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-408-0SCaaamqO_KiXdmhxC7X2w-1; Tue, 27 Oct 2020 10:24:53 -0400
X-MC-Unique: 0SCaaamqO_KiXdmhxC7X2w-1
Received: by mail-ej1-f69.google.com with SMTP id t1so902367ejb.21
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 07:24:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lZIQtSRPpP7bzkDKojGKr85+f7UAm051h+6PAJvhRak=;
        b=NjWcx3iw2+EQ3qorfNCUOiRn5EUUKJru72Ordei00jguVvvyQe2PFBqhyYp3vkUFnh
         4dH9n7T5y76dJFDJYpQ9rGHJ8GhpjSl+KdfTiEoO4EAMgXpKbTVY0WYIqMWeugndX7Pe
         l93A0LHkWkD4yDycsxoLPEmEbDtWz1aTXyL3F6XrGRszEJr4I807xnLJ+wn+fGr2qoKT
         gHp8E2XErHBBLpsA8gxolov+Gy3k91rIpFvOYep5F36xfxVpxDJYuBAHMHiw2Hb3P+5Y
         CC2KQWvUd9zCY2AsLxIgl39lVNn0hE16K1mGVIuCzlAY1EB92Gq0Z0SY5dI14YYyCPKV
         0PUQ==
X-Gm-Message-State: AOAM530aLperTwPaSRo1eeEAmOzeQDMbbDr2bZiMRpox31MZEI+ZU7Cd
        8iGieeIbrOK2uSZ4Mfa5w7cChgsSy7dwuSMhSIlVDrvw5I9UkCI2yE1/CLUCV1i9bEBhl0fKzrU
        oVqYUnYSb3k+GyO4f0rcixw==
X-Received: by 2002:a50:88e5:: with SMTP id d92mr2549992edd.145.1603808692525;
        Tue, 27 Oct 2020 07:24:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzApUcUk9SzoxZFdV+Ugcey7NYFu4EhTJ1o513dIeIc3FxXZD5QyjvKBq96p8qkWB9wFeMMfw==
X-Received: by 2002:a50:88e5:: with SMTP id d92mr2549968edd.145.1603808692276;
        Tue, 27 Oct 2020 07:24:52 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id yw17sm1147190ejb.97.2020.10.27.07.24.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 07:24:51 -0700 (PDT)
Subject: Re: [PATCH 4/7] irqchip/irq-mvebu-icu: Remove the double SATA ports
 interrupt hack
To:     sven.auhagen@voleatech.de, axboe@kernel.dk, robh+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, gregory.clement@bootlin.com
Cc:     linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, jason@lakedaemon.net, andrew@lunn.ch,
        rjw@rjwysocki.net, viresh.kumar@linaro.org,
        antoine.tenart@bootlin.com, maxime.chevallier@bootlin.com,
        thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com
References: <20201007154554.66650-1-sven.auhagen@voleatech.de>
 <20201007154554.66650-5-sven.auhagen@voleatech.de>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <fc09e06f-c1a3-d0c7-d906-35a9c6094f5a@redhat.com>
Date:   Tue, 27 Oct 2020 15:24:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201007154554.66650-5-sven.auhagen@voleatech.de>
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
> When writing the driver, a hack was introduced to configure both SATA
> interrupts regardless of the port in use to overcome a limitation in
> the SATA core. Now that this limitation has been addressed and the
> hack moved in the (historically) responsible SATA driver,
> ahci_{platform,mvebu}.c, let's clean this driver section.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Acked-by: Marc Zyngier <marc.zyngier@arm.com>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  drivers/irqchip/irq-mvebu-icu.c | 18 ------------------
>  1 file changed, 18 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-mvebu-icu.c b/drivers/irqchip/irq-mvebu-icu.c
> index 91adf771f185..3e29f8d5b33b 100644
> --- a/drivers/irqchip/irq-mvebu-icu.c
> +++ b/drivers/irqchip/irq-mvebu-icu.c
> @@ -38,8 +38,6 @@
>  
>  /* ICU definitions */
>  #define ICU_MAX_IRQS		207
> -#define ICU_SATA0_ICU_ID	109
> -#define ICU_SATA1_ICU_ID	107
>  
>  struct mvebu_icu_subset_data {
>  	unsigned int icu_group;
> @@ -111,22 +109,6 @@ static void mvebu_icu_write_msg(struct msi_desc *desc, struct msi_msg *msg)
>  	}
>  
>  	writel_relaxed(icu_int, icu->base + ICU_INT_CFG(d->hwirq));
> -
> -	/*
> -	 * The SATA unit has 2 ports, and a dedicated ICU entry per
> -	 * port. The ahci sata driver supports only one irq interrupt
> -	 * per SATA unit. To solve this conflict, we configure the 2
> -	 * SATA wired interrupts in the south bridge into 1 GIC
> -	 * interrupt in the north bridge. Even if only a single port
> -	 * is enabled, if sata node is enabled, both interrupts are
> -	 * configured (regardless of which port is actually in use).
> -	 */
> -	if (d->hwirq == ICU_SATA0_ICU_ID || d->hwirq == ICU_SATA1_ICU_ID) {
> -		writel_relaxed(icu_int,
> -			       icu->base + ICU_INT_CFG(ICU_SATA0_ICU_ID));
> -		writel_relaxed(icu_int,
> -			       icu->base + ICU_INT_CFG(ICU_SATA1_ICU_ID));
> -	}
>  }
>  
>  static struct irq_chip mvebu_icu_nsr_chip = {
> 

