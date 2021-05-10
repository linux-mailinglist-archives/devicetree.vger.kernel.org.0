Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9C093792C4
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 17:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbhEJPcv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 11:32:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236060AbhEJPcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 11:32:14 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08B73C061344
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 08:30:48 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso11388003wmh.4
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 08:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BIpftz5QKaqbdczxyxTMwM8Y/OLzgltNif3KujXG5rU=;
        b=DqkSjiy4YmypNkE5TQC+Wlabp95BO/iGGaqY2XM/1MAevutq75qI++4Ggz0EIsaQzE
         +cruWV04cD0qoKs2VblpL5cWhYq8m74vdt0PmFdwMtc9rt1X9WL4f/tYZPn1QWF+ZYVC
         3yq+i3dFmtZ6BomH+YVaQ8zuT1rzB+Ve6HC8JOe9oXe3SSWkjh6YmoV+uEMlwrthy5Ae
         nJ3YejhbM47/W+zKt72oss6w/0pnVvoa+f+6jc3Jv7FwgGuIjAGZz7+cp/++U801VsOb
         kkMSBpK0quUyN8HSOGVyFdWfVl1zDn2gM2lMJM+U0lO2Ymub3wWLRmlI2HnYIe19xW9u
         fW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BIpftz5QKaqbdczxyxTMwM8Y/OLzgltNif3KujXG5rU=;
        b=ViVjf+eg/dN0PFjwXFpNMSykjLT5AuqYgTRyuuckPOE7yVyVeo02bntErkKIeQm05Z
         4E3X8LQSpgyjzUrxhSMvRcDLll1xD1mGNC1Ubxz5SO8It/domjsPUX+vaSvkX71yvILD
         YUqzw4cTQFmVYpOp29VtVYul3WRcAMiEj7WOD/xbqqXwauLMhXiV9flFie3gNWbwtC6/
         NT4D+AWjRs8D44h9+mHim3Nk16ujCVY9PgY3gJ+9snRTlOniCDmXpE/HPGGfyV0/FTSS
         4biu1DPWpM32QECj9nu0sx9Gdgp/kixZGXde1Z9UlNbPqHCBCpj0o9/hGYM3ibelQNVK
         8drQ==
X-Gm-Message-State: AOAM533CqjI/96uOufeFwE7kzGO/H9TwFtoyLJeby1+VU48Xe2ybRedx
        Yds78qkQP2IsKe5Ty22lcN0=
X-Google-Smtp-Source: ABdhPJwZRoaeQtZWSrmI8dVBe7amjp6/ZX2fc1ylbmWzbySigiBRWFKDVeUbBjDHJrAiyhbAKKn6+A==
X-Received: by 2002:a05:600c:154a:: with SMTP id f10mr27351030wmg.31.1620660646776;
        Mon, 10 May 2021 08:30:46 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-17-133.cable.triera.net. [86.58.17.133])
        by smtp.gmail.com with ESMTPSA id 61sm25983049wrm.52.2021.05.10.08.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 08:30:46 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     Icenowy Zheng <icenowy@aosc.io>,
        Samuel Holland <samuel@sholland.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: allwinner: Pine H64: Enable USB 3.0 port
Date:   Mon, 10 May 2021 17:30:44 +0200
Message-ID: <2288435.7XXmsQVVxE@kista>
In-Reply-To: <20210510130119.6534-1-andre.przywara@arm.com>
References: <20210510130119.6534-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andre!

Dne ponedeljek, 10. maj 2021 ob 15:01:19 CEST je Andre Przywara napisal(a):
> The Pine H64 board features an USB 3.0 type A port, which works just
> fine.
> 
> Enable the controller and USB PHY in the .dts to make it usable.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/
arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> index 1ffd68f43f87..9061c9913f4c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> @@ -89,6 +89,10 @@
>  	status = "okay";
>  };
>  
> +&dwc3 {
> +	status = "okay";
> +};
> +
>  &ehci0 {
>  	status = "okay";
>  };
> @@ -332,3 +336,8 @@
>  	usb3_vbus-supply = <&reg_usb_vbus>;
>  	status = "okay";
>  };
> +
> +&usb3phy {
> +	phy-supply = <&reg_usb_vbus>;
> +	status = "okay";
> +};
> -- 
> 2.17.5
> 

Exactly the same patch was already proposed by Icenowy. In short, PHY is 
powered by internal power and doesn't need phy-supply property. It's connector 
that needs power supply. One of her latest attempts can be found here: 
https://lore.kernel.org/patchwork/cover/1058917/

Best regards,
Jernej


