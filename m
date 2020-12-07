Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13A242D1025
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 13:12:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726254AbgLGMLN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 07:11:13 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:38653 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727018AbgLGMLN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 07:11:13 -0500
Received: by mail-wm1-f66.google.com with SMTP id g185so13439732wmf.3
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 04:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lXHmOCRDiY9IOVB92TcGbhMUbJlNjEuHiqudf4WFsZg=;
        b=Z990eOZXvBisZmUVUFZTjfVdC9L+9wUxgcf1AJqUn0mUojGUK7Se865HCINm8NRec/
         O4TolQO0ma/oEt0g98GC5a3wQhOLYD9Q4PlkYOj+c11f+dyEe4ocw6o9kUwfoqCWsugn
         k4obnuLjZlvUa9l4qAYXy7oDF5kyFxOjAppu/S96fLU73E2f4EbNlcwzx0WD9I0N0Z5J
         hYIYB5+IWujGuo3cPtDFTAJJLdNbvnC0zzDVUaAfpz0CyWGTBNBUVd9JX1IHWpwMKPll
         pMdJeEUfLvGoF71JAwvCEfjn8SSH/hGoJZ1V40H5DSR/mw792wm6rh6jvJL1kgiDYgFS
         D6BQ==
X-Gm-Message-State: AOAM531Cyep8+7XgSoqzii0JwqsAgJDTBcWxlm5WQjzAQPOzeRYWQic1
        i571n4kES75lYT9kQnuLJ/A=
X-Google-Smtp-Source: ABdhPJyfdg3dXI+drVXV/4kl0n8SrgddISHxNGPu/H33xynoZvudTPm/6SDl8hJu/8Ejq1gfnPvecQ==
X-Received: by 2002:a7b:c2e8:: with SMTP id e8mr17866852wmk.103.1607343031325;
        Mon, 07 Dec 2020 04:10:31 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id h15sm9868050wru.4.2020.12.07.04.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 04:10:30 -0800 (PST)
Date:   Mon, 7 Dec 2020 13:10:29 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/4] arm64: defconfig: Enable rv3028 i2c rtc driver
Message-ID: <20201207121029.GC27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
 <1607113982-109524-2-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607113982-109524-2-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 04, 2020 at 09:32:59PM +0100, Teresa Remmet wrote:
> Enable rv3028 i2c rtc driver populated on phyBOARD-Pollux-i.MX8M Plus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 5cfe3cf6f2ac..2034fefb3f44 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -818,6 +818,7 @@ CONFIG_RTC_DRV_MAX77686=y
>  CONFIG_RTC_DRV_RK808=m
>  CONFIG_RTC_DRV_PCF85363=m
>  CONFIG_RTC_DRV_RX8581=m
> +CONFIG_RTC_DRV_RV3028=y

This should be a module.

Best regards,
Krzysztof


>  CONFIG_RTC_DRV_RV8803=m
>  CONFIG_RTC_DRV_S5M=y
>  CONFIG_RTC_DRV_DS3232=y
> -- 
> 2.7.4
> 
