Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8BC08116D23
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 13:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727492AbfLIMcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 07:32:16 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34241 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727074AbfLIMcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Dec 2019 07:32:15 -0500
Received: by mail-wm1-f67.google.com with SMTP id f4so15334998wmj.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2019 04:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=TcMAms7p1AUqadQqTsVabpfv+HfKMd7JiIn6+0u5b3A=;
        b=DCh5KZu71inkeOQZtpOb6fNnGUXSsbnL7cEiiLU5KddsEMz9ECtfYa3HgYGJe4I7JW
         gUIApCg9rdZQoaigvMt4IKU8b4M6cC39IRPWTfxYUHUl5McOXpozx3+paF8+LbCD1vzy
         WNrLYoSlA0om7Ehyh6EuQ4oy3Ug6AV1pgDMhRDWtd3tiGTDMU39Sz8wpqlDC94oyX7pY
         CafooqdJolIMHiPfgYM0LAFQxplJRM9b59HWhB9uGWzi3e8YdyZMyGd+vFu6mEl0MO6/
         Ke+/MEwe6t0qTGm/UOffRErHeDzu0V4nl2ZeeNsgDGKFhDtLAS3lZefqnuBRUpmQZwv2
         YBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=TcMAms7p1AUqadQqTsVabpfv+HfKMd7JiIn6+0u5b3A=;
        b=LQgLQtpbc1939KCtJON7+mjfEOQ9tGQWEG4LRiiQ43RwkbmFH8FWOdGDAjva75gQ7S
         ojLfB1rHFJAKdOEqNTXd7rIrh1mwbFudZYeHdP5DR3cndxARhPu5bcpRjqSIdejVg2Yk
         oYmw4PZZFZL48B7xzi/8yx1g18a3bYMzAnJMUzIy1byTQHDpSiKZZHV7GG87s7QKf5Xu
         XME28Vy8BXXHp8VzHT2PD9zuhekjjLwUVnBKfLfQafeVrqXoXVG+J4dAa72RzU/Cq9wq
         JMspUA5QJWKvSnL9MqKexqdxD5cQ6bf7ugOY/ii7tZv5i5+WQJEec9ojV08oZeKBquI+
         Y17Q==
X-Gm-Message-State: APjAAAXhG3KFoY00p0WX5ORHNEXj6zbp4kp+1/7Hyr1iYLqPr0HVs49P
        JCQhPgLcD5wA7ZY5eqlQhuL6pg==
X-Google-Smtp-Source: APXvYqwrv2cRs37H9u3Gm+6DMpoyR28B91jn/bI1oNa8G1d5YGlOX8ZuK/J1QqXIrJ7mW3zHuCE32Q==
X-Received: by 2002:a1c:2245:: with SMTP id i66mr24316351wmi.86.1575894733535;
        Mon, 09 Dec 2019 04:32:13 -0800 (PST)
Received: from dell ([2.27.35.145])
        by smtp.gmail.com with ESMTPSA id m10sm27506266wrx.19.2019.12.09.04.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 04:32:12 -0800 (PST)
Date:   Mon, 9 Dec 2019 12:32:06 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Sven Van Asbroeck <thesven73@gmail.com>
Cc:     Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Grigoryev Denis <grigoryev@fastwel.ru>,
        Axel Lin <axel.lin@ingics.com>, Dan Murphy <dmurphy@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org
Subject: Re: [PATCH v4 2/2] dt-bindings: mfd: update TI tps6105x chip bindings
Message-ID: <20191209123206.GI3468@dell>
References: <20191121142726.22856-1-TheSven73@gmail.com>
 <20191121142726.22856-3-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191121142726.22856-3-TheSven73@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Nov 2019, Sven Van Asbroeck wrote:

> The driver has been extended to optionally get its operational
> mode, regulator init data and led naming from the devicetree.

s/led/LED/

> Tree: next-20191118

Why is this in your commit message?

> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  .../devicetree/bindings/mfd/tps6105x.txt      | 47 ++++++++++++++++++-
>  1 file changed, 46 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/tps6105x.txt b/Documentation/devicetree/bindings/mfd/tps6105x.txt
> index 93602c7a19c8..1fc9aa3ed882 100644
> --- a/Documentation/devicetree/bindings/mfd/tps6105x.txt
> +++ b/Documentation/devicetree/bindings/mfd/tps6105x.txt
> @@ -7,11 +7,56 @@ Required properties:
>  - compatible:		"ti,tps61050" or "ti,tps61052"
>  - reg:			Specifies the I2C slave address
>  
> -Example:
> +Optional sub-node:
> +
> +This subnode selects the chip's operational mode.
> +There can be at most one single available subnode.
> +
> +- regulator: presence of this sub-node puts the chip in regulator mode.
> +	see Documentation/devicetree/bindings/regulator/regulator.txt
> +
> +- led: presence of this sub-node puts the chip in led mode.
> +	Optional properties:
> +	- function : see Documentation/devicetree/bindings/leds/common.txt
> +	- color : see Documentation/devicetree/bindings/leds/common.txt
> +	- label : see Documentation/devicetree/bindings/leds/common.txt
> +			(deprecated)

Nit:

Could you please use relative paths here.

If you line up the ':', it would look slightly cleaner.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
