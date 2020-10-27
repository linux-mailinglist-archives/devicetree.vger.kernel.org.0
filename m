Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAA5F29C3C0
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 18:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2901661AbgJ0OZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 10:25:48 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:52925 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2901651AbgJ0OZs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Oct 2020 10:25:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603808746;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=W8T6izU/oNHcBniuIuJaDWyP10lggzePxlPagoxsxoM=;
        b=D/lkOy1lep0p/c93FVkSV74byv0+cxMIRUlbDN1u+lbm8DNrrzrFmqB8KXcCXVdyZIKYpC
        zcOZzUh03wKuONIfzmWpdt8HSIbIc0kJvHkVMun6GW9uWQIUTcUbXHMwjsiICa/hMYScTH
        e0CJ/MYONGPuyWSeca69ezmDS88RbcM=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-WEJ4ifXTNa69ls_xitGvtg-1; Tue, 27 Oct 2020 10:25:44 -0400
X-MC-Unique: WEJ4ifXTNa69ls_xitGvtg-1
Received: by mail-ed1-f72.google.com with SMTP id i9so749071edx.10
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 07:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W8T6izU/oNHcBniuIuJaDWyP10lggzePxlPagoxsxoM=;
        b=sYOQdhuKnPiPGS1EXp/qLDP7hokHd6NehpgGIGLWKd8ykXIDFEpuCLg7+FgrnjxzKT
         9O6wFuSSeXIH2oX3UXTTWW3/f2nt1W99lrr7KJgtqrVaDhdKipD0XsioZY6tKUNanDi1
         TK32c1dk3nGyXgd9Ds6JQ3v5iTsMfLMijSELzGcv3E57NMxjNugdmN20KzDodl7cO0Z3
         oZo6zO2TGOWNXtLLqqAwdRQkuwGDu8RktEF/1xHWjIctk9vWypuRDURSD//GnAEIqI11
         Uhykj+NKJlvP6Brj3NeRVE2Rdh1YSRNAQ6dhzzh6GgtZ1n6cDKP7HD8Vq5xNKaBAzuMY
         VXVA==
X-Gm-Message-State: AOAM531Y00zqn4gDSMNV0pCOIZcAq7r2xI6F8usDxFVargFBkOaJ7kK7
        tb38Ac+c0gmKRuRa8I99Sg6AAaAUNFx0zpp+/x7xbJbpZEZK4GquuaQEwKLhRq2+digXc1eIFU+
        kn/d3Mzy5O6gcFv6knwFhyw==
X-Received: by 2002:a50:f097:: with SMTP id v23mr2404384edl.347.1603808743313;
        Tue, 27 Oct 2020 07:25:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxu4pKgkYlCuJH4ozVfZhANkT+83qvtuALa3E0kmNGDNjltGRJsGpYp0vutOt3rv7WYPMUxBQ==
X-Received: by 2002:a50:f097:: with SMTP id v23mr2404364edl.347.1603808743107;
        Tue, 27 Oct 2020 07:25:43 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id 6sm1135113ejv.49.2020.10.27.07.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 07:25:42 -0700 (PDT)
Subject: Re: [PATCH 5/7] dt-bindings: ata: Update ahci bindings with possible
 per-port interrupts
To:     sven.auhagen@voleatech.de, axboe@kernel.dk, robh+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, gregory.clement@bootlin.com
Cc:     linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, jason@lakedaemon.net, andrew@lunn.ch,
        rjw@rjwysocki.net, viresh.kumar@linaro.org,
        antoine.tenart@bootlin.com, maxime.chevallier@bootlin.com,
        thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com
References: <20201007154554.66650-1-sven.auhagen@voleatech.de>
 <20201007154554.66650-6-sven.auhagen@voleatech.de>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <77e5e3f5-ca84-b203-10da-705a008700ba@redhat.com>
Date:   Tue, 27 Oct 2020 15:25:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201007154554.66650-6-sven.auhagen@voleatech.de>
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
> Update bindings to reflect the fact that a SATA IP can either have:
> - only one interrupt: in this case an 'interrupts' property is
>   declared at the root of the node;
> or
> - each SATA port can have their own interrupt: in this case there is
>   one 'interrupts' property per port/sub-node and none at the root.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
> index 77091a277642..83d715cbcecd 100644
> --- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.txt
> @@ -49,6 +49,12 @@ And at least one of the following properties:
>  - phys		    : reference to the SATA PHY node
>  - target-supply     : regulator for SATA target power
>  
> +Sub-nodes optional properties:
> +- interrupts        : <interrupt mapping for SATA ports IRQ>, please
> +                      note that either the root SATA node has the
> +                      interrupts property, or there is one per SATA
> +                      port, but not both at the same time.
> +
>  Examples:
>          sata@ffe08000 {
>  		compatible = "snps,spear-ahci";
> 

