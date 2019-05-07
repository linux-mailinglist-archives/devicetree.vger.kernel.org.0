Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A4FF5162C8
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 13:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726496AbfEGL1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 07:27:00 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:35271 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725843AbfEGL1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 07:27:00 -0400
Received: by mail-lj1-f193.google.com with SMTP id m20so4760141lji.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 04:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xV8FmRO0mWj0sIWzs8w528CN5pgK4MkoZyjFAB8G938=;
        b=VBZH/ntr8Lrq0CS1e8dKbZ1fl/tEiwIzVzUI5J4bVKg/Dsa39Mv9BAGsEEzap6xfHK
         Qb6INYm7uQ9IbwR4f5K6D7WreCssqyadlmnFYBQXM3xoioUcQirSlYe7h4Ov1t69tB7f
         PUd2qJ3n7Im+/0fPzs1oSWnAVNiXGwBejxugiJ7Q0YiuQ5YuoH3S2TONda2rXryJXNH8
         chhUpcIP1SBWX6jWrHIXOthiwx0xSg7D8zGftWoi874SOvEGq+WHk1Ni6exqrk8zsWKC
         bfYguGs5N4CgKxV4hQPiOiUEVTk8N8Z2pj3XnnejNFOaorPSr4Nq3hbhNlI8Yphs1cVZ
         IGzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=xV8FmRO0mWj0sIWzs8w528CN5pgK4MkoZyjFAB8G938=;
        b=nkGe616HsQ/bZw6IQHXTcR8l7Yq4HWzoM+uZcW6GQGCXIMzHdg6oRdT2FC/9/eryii
         2mfTkaCRHUL53lZDG79Gep/OoJgNkDr5dtKkHUY5BbBGiZjini4zuuLr9rFFWeTBoX6B
         mBXOuglR5L3xrvOiscP4iAhxt/jiMt3jPzBrIQsRiO6VP8m9JG2Uy/kGBACZK93dCzw0
         wSymq5N9/u3FXXdLvuvXlN9tmV8OQbtgT3I+lHGyfMg28Ea68YdOcJuW7XZehECfCK/p
         b4sT/xz4oKs2YkG9XXC2WIVQVeDKrXIVkmE7FF6+60KHCOim3qmFDjBc6Lfc6XnGTpsT
         VyiA==
X-Gm-Message-State: APjAAAWdhMgMYImTyuQfve7t1d4dIJQ9y+lmznXT+FlFb3KPK2+Rc5NE
        wyUtqE8XK9PJHt9z9wbYNUMLxQ==
X-Google-Smtp-Source: APXvYqz7/q0HrA+enq57C03Bh8QEwF/xYs+9MirAZyg5MZwpUjo0uGaletHd+B7eTbtcq4vvCIhYLw==
X-Received: by 2002:a2e:834d:: with SMTP id l13mr17754067ljh.97.1557228418531;
        Tue, 07 May 2019 04:26:58 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.80.88])
        by smtp.gmail.com with ESMTPSA id r5sm3402837ljh.27.2019.05.07.04.26.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 04:26:57 -0700 (PDT)
Subject: Re: [PATCH 03/10] phy: renesas: rcar-gen3-usb2: Check dr_mode when
 not using OTG
To:     Chris Brandt <chris.brandt@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Simon Horman <horms@verge.net.au>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20190506234631.113226-1-chris.brandt@renesas.com>
 <20190506234631.113226-4-chris.brandt@renesas.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <17bcc673-5fed-ce4f-3d61-af34bfa5d769@cogentembedded.com>
Date:   Tue, 7 May 2019 14:26:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190506234631.113226-4-chris.brandt@renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2019 02:46 AM, Chris Brandt wrote:

> When not using OTG, the PHY will need to know if it should function as
> host or peripheral by checking dr_mode in the PHY node (not the parent
> controller node).
> 
> Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
> ---
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 218b32e458cb..4eaa228ebd30 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -408,7 +408,12 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
>  		if (rcar_gen3_needs_init_otg(channel))
>  			rcar_gen3_init_otg(channel);
>  		rphy->otg_initialized = true;
> -	}
> +	} else

   Wait, don't we neeed {} here?

> +		/* Not OTG, so dr_mode should be set in PHY node */
> +		if (usb_get_dr_mode(channel->dev) == USB_DR_MODE_PERIPHERAL)
> +			writel(0x80000000, usb2_base + USB2_COMMCTRL);
> +		else
> +			writel(0x00000000, usb2_base + USB2_COMMCTRL);
>  
>  	rphy->initialized = true;
>  

MBR, Sergei
