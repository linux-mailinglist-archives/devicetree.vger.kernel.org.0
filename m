Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26AD329B10A
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 15:27:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2901755AbgJ0O0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 10:26:17 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:34264 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2901739AbgJ0O0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Oct 2020 10:26:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603808773;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=wXBVU/T/oq3B/ZMjB1hnu0RNkSq1J7GyIHCZJXhpTwQ=;
        b=dB9HM/WIAqyeV9xHfZuVduI57uwvT1UtGV0X0lLUB3iFdeG8sifuLUDsd2hdRRcOcQEoY/
        BHacAz54g0kIq1QELF1ioDecEiSULf2Xb3YkQFsgZvRBR0vxec2szFyPBqSrIETnGq4WXr
        rkGR2Wb2oxT//U2aIx8ttgavmOHCgMM=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-9OGkmPWXMZKgpU_C9mnwPg-1; Tue, 27 Oct 2020 10:26:09 -0400
X-MC-Unique: 9OGkmPWXMZKgpU_C9mnwPg-1
Received: by mail-ed1-f72.google.com with SMTP id ay19so719953edb.23
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 07:26:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wXBVU/T/oq3B/ZMjB1hnu0RNkSq1J7GyIHCZJXhpTwQ=;
        b=XYu82FP13wH1uXZoVHFkYhuPSGwWotI+CF1ZTNeBaVrp7hUOTLhWO5zTi6X5KPFuXY
         ghmMFPzSd9f8GtlnO+G3YG4861SiJSQQffWnvVcxMtmrELFv/jppqekhPyNTDCK/Ymzs
         nxFG+/fEKupkiGlJdfw1zMoj7spm19Z+ebPJaNdH/Sn8Ad71qoDhKvjLlzCY4zv13aaa
         z0o0IvNDWiOT3knRfWJR/nZszRwzie7FuMdeLAstqQPPpHL0mj9+Ub09uwfvGZWuD8WG
         hzQIT1eC/mptqUsXoIHYaH6kZyaf0IiE8QdUDW1R2Wx+xF/M9UvULE8MhQI67dfvZM97
         vPdA==
X-Gm-Message-State: AOAM530vuOc/Q9W1NhN42vJA/wLq6BkFJXe5cQ5drL5Exy9jXPByiqj4
        oSsl14Vpu0S6lL1ssd+0QXNMKAl9WY+o2FJDV97HpCcG4ubq2YTBLCnnaNZK2bQ3jWSfNA4/0B5
        KHmgk7OaR2EltGsjd4TjvAA==
X-Received: by 2002:a17:907:9ef:: with SMTP id ce15mr2665771ejc.430.1603808767845;
        Tue, 27 Oct 2020 07:26:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2vCF9rv5gMkUj39gttGYFXjg7Rzj7Mng+PaGESVJlp1C9a6GT126sbTrheXxEx6crga8rgw==
X-Received: by 2002:a17:907:9ef:: with SMTP id ce15mr2665754ejc.430.1603808767613;
        Tue, 27 Oct 2020 07:26:07 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id v14sm1131659ejh.6.2020.10.27.07.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 07:26:06 -0700 (PDT)
Subject: Re: [PATCH 7/7] arm64: dts: marvell: armada-cp110: Switch to per-port
 SATA interrupts
To:     sven.auhagen@voleatech.de, axboe@kernel.dk, robh+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, gregory.clement@bootlin.com
Cc:     linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, jason@lakedaemon.net, andrew@lunn.ch,
        rjw@rjwysocki.net, viresh.kumar@linaro.org,
        antoine.tenart@bootlin.com, maxime.chevallier@bootlin.com,
        thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com
References: <20201007154554.66650-1-sven.auhagen@voleatech.de>
 <20201007154554.66650-8-sven.auhagen@voleatech.de>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <60ae5a7f-ec34-62d2-6987-c5dec348de6e@redhat.com>
Date:   Tue, 27 Oct 2020 15:26:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201007154554.66650-8-sven.auhagen@voleatech.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10/7/20 5:45 PM, sven.auhagen@voleatech.de wrote:
> From: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> There are two SATA ports per CP110. Each of them has a dedicated
> interrupt. Describe the real hardware by adding two SATA ports to the
> CP110 SATA node.
> 
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  arch/arm64/boot/dts/marvell/armada-cp11x.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
> index 9dcf16beabf5..ec27294f097b 100644
> --- a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
> @@ -300,11 +300,9 @@
>  		};
>  
>  		CP11X_LABEL(sata0): sata@540000 {
> -			compatible = "marvell,armada-8k-ahci",
> -			"generic-ahci";
> +			compatible = "marvell,armada-8k-ahci";
>  			reg = <0x540000 0x30000>;
>  			dma-coherent;
> -			interrupts = <107 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&CP11X_LABEL(clk) 1 15>,
>  				 <&CP11X_LABEL(clk) 1 16>;
>  			#address-cells = <1>;
> @@ -312,10 +310,12 @@
>  			status = "disabled";
>  
>  			sata-port@0 {
> +				interrupts = <109 IRQ_TYPE_LEVEL_HIGH>;
>  				reg = <0>;
>  			};
>  
>  			sata-port@1 {
> +				interrupts = <107 IRQ_TYPE_LEVEL_HIGH>;
>  				reg = <1>;
>  			};
>  		};
> 

