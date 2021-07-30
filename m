Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72AC13DBE50
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 20:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230475AbhG3SZI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 14:25:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230428AbhG3SZH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 14:25:07 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CFCFC06175F
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 11:25:01 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id f13so14363174edq.13
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 11:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pzI86rNh8ZMI5ilKFct9RcjfJPHXxZUoC6TTsdSAAf0=;
        b=E7DImHiABX2tUHVyggKzsG7GXVMJwrM4PXd9jD1SqhNxoaXIt5DHoVvoUFNEiD+qpH
         tKhQEvZDr4h74mL3jORlycQ4xhkAFFXhuULrp489811hhZqHXw7P/Ho/JzZYQkdDPq9R
         iveD4lwLmzWpBgQgtS22VCHGOlzC3Ck198OBQACyHjH71enEA3+4ZLbnAyLvsmvFuIZw
         O/qhEBXCRiQsD0RLleLbgaq7GopFzMkW+2FKNG6TkSanr4zNszLiRlKEaoSjAnMxUCqH
         lqEQ/GuBkVwJrLIf/M9wKVQWH1USpWpDkYSVXfZlfGhYjZgrweja92JeJ3oq8f52uEX3
         nLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pzI86rNh8ZMI5ilKFct9RcjfJPHXxZUoC6TTsdSAAf0=;
        b=dKDtXNU2BzvG+8GpJxcO2eBFNG967W76Ki1hs8agTwW/Qz6W3lo4GUtfiOSrDWkPFL
         JL7vep03Wr5s0Ip56RZl4Z3h3k4GkpHek/LUa5+KIB1xmKx4g50OmM0vMamLkoT+78TQ
         BDIgSTfWGI8aW25utHFs53C1JHDatN0tdK/Y6ugjL6+8ZHqGd9vwGvWYvbsJO/03lJIC
         Dhz61sidyPraB2G+8/lJpTt/xVLCgnp/UvcR4Rj8+m5KhVPcKJbtR8K2rfbIeDwZmUSr
         6NtpZcNUdgrUhblXOw+0HyTIzNCrnWoWeiGYVnxeFqCFe2r3ZbsLhFk4oknUpGyTr6ee
         Ke3w==
X-Gm-Message-State: AOAM530xASdeIHkcU+pihvis1IeBeAaPMo6+TfORBDHlWM8rXEQaVpFx
        MjicYN9vYb5ftgtIf81Orkc=
X-Google-Smtp-Source: ABdhPJwyFm2ZVh8LGtuVfipbeFUzlbsnGzOuzCIi2aPFgBxVPBgC6HlrL9HsCQejXPYLfidvpa2wvw==
X-Received: by 2002:a05:6402:6cb:: with SMTP id n11mr4541177edy.112.1627669500084;
        Fri, 30 Jul 2021 11:25:00 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id u9sm821567eje.31.2021.07.30.11.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:24:59 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64
 Model A
To:     Ezequiel Garcia <ezequiel@collabora.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
 <20210730164515.83044-5-ezequiel@collabora.com>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <4dede4af-a57b-fd95-efba-017731695bc5@gmail.com>
Date:   Fri, 30 Jul 2021 20:24:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730164515.83044-5-ezequiel@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ezequiel,

On 7/30/21 6:45 PM, Ezequiel Garcia wrote:
> Enable the GPU core on the Pine64 Quartz64 Model A.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index b239f314b38a..1e6153b52594 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -462,3 +462,8 @@ bluetooth {
>  &uart2 {
>  	status = "okay";
>  };
> +

> +&gpu {

Nodes without "reg" are sort in alphabetical order.

> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> 
