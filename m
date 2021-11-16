Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21BA3452F34
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 11:35:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234269AbhKPKid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 05:38:33 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41670
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234202AbhKPKiJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 05:38:09 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E248D3F199
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 10:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637058911;
        bh=RiDE8XXvbEJD12cizRsQR7WHmOv+p0GSx9+K53KWmuU=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=Y3QosOexUuwJ0z0/DXeWJZboAdakiNBRKF1+WOeyqcam+Ag9rKp/DRQZfExgPWOkK
         IQ0m+gFtWioS9G0uiZEMZJtqB9hUDtcoZaGs3B0i/stYoDNm9pH9UWkbMs6nR90GY/
         bGPFTpzrKATNi0VeLtr+nzlC+REv7uHgbUxjE9E/qi7ykNRCQIx1CdJeM0r3JSCTbw
         ha7AE8oOOw5sOqn02W+o1qTK1wjlxUssw2NUIMo8vCWsd6JMsqcZL9pN8rbX0muaim
         HtWVYHJR3WGisuMPlZQ3uNKfU8YdTR4QNX3SzjkeHMH0X9Lytou3ursrEQyWMVO1oT
         f3YzPgk5YZAbQ==
Received: by mail-lf1-f72.google.com with SMTP id i1-20020a056512318100b003ffd4e89eb9so7968452lfe.19
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 02:35:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RiDE8XXvbEJD12cizRsQR7WHmOv+p0GSx9+K53KWmuU=;
        b=yC93GhYXGQ+0FvC2Z8JAv52Ji6s8GRS9Q3otDJrYsLLjjzK8w4ffJczhcA5lrnCPZe
         89/ZI2i+mlWPJuPcSF933HKRe6Ka8amImHiZUExG95sllA5FKGb7TAK7xSa8Eh0q7aL2
         BBRLMLD/EwYmF3eRwZ48fS3o3zJmzP7Tz4sEeNJTry75Umzlky+kb1HthDbCtWwJ6tiJ
         hkbQsnWTNIqAJHi4c+wSw8hyntIc1Wb9aYKybQLW7pxoJpBWGk+pFyqfcIWf5V+l3C9w
         mKb01ecA0JDDIW+QbNikCciOziYF0Fek31CU63BGOI6BasusvAhn1ODZVDi/BAZnop6Y
         DO6g==
X-Gm-Message-State: AOAM532DFpyNugfNmnIIy+oBMLPbZZvvIGiF0BcDNlqeFejuz5kac0zy
        MGsnBQ7xSZf0aWe2JNn2b3c8C0KKobB+Qk+BfG/IgiBVfAEDKDqeOWnwpnFqFcbveeSsz485+Z/
        q70R2X+FSJ/bMNWrfvEuJYNkZK8S5IyrbGywcR3U=
X-Received: by 2002:ac2:4ad0:: with SMTP id m16mr5736889lfp.29.1637058911334;
        Tue, 16 Nov 2021 02:35:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwwSo0x9s6yBf2L1c3SFhk3EKtwdZI+SJJfsF8Gjd3qbkGSH9A8xJa+C2h3zY2e+7KIvujJHA==
X-Received: by 2002:ac2:4ad0:: with SMTP id m16mr5736873lfp.29.1637058911184;
        Tue, 16 Nov 2021 02:35:11 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id z12sm1719295lfs.101.2021.11.16.02.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Nov 2021 02:35:10 -0800 (PST)
Message-ID: <65f0586d-ac95-3907-9458-3e17f600ca09@canonical.com>
Date:   Tue, 16 Nov 2021 11:35:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v2 2/2] memory: fsl_ifc: populate child devices without
 relying on simple-bus
Content-Language: en-US
To:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211015005707.1996-1-leoyang.li@nxp.com>
 <20211015005707.1996-3-leoyang.li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211015005707.1996-3-leoyang.li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/10/2021 02:57, Li Yang wrote:
> After we update the binding to not use simple-bus compatible for the
> controller, we need the driver to populate the child devices explicitly.
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>
> ---
>  drivers/memory/fsl_ifc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/memory/fsl_ifc.c b/drivers/memory/fsl_ifc.c
> index d062c2f8250f..ef2092fa90d9 100644
> --- a/drivers/memory/fsl_ifc.c
> +++ b/drivers/memory/fsl_ifc.c
> @@ -88,6 +88,7 @@ static int fsl_ifc_ctrl_remove(struct platform_device *dev)
>  {
>  	struct fsl_ifc_ctrl *ctrl = dev_get_drvdata(&dev->dev);
>  
> +	of_platform_depopulate(&dev->dev);
>  	free_irq(ctrl->nand_irq, ctrl);
>  	free_irq(ctrl->irq, ctrl);
>  
> @@ -285,6 +286,12 @@ static int fsl_ifc_ctrl_probe(struct platform_device *dev)
>  		}
>  	}
>  
> +	/* legacy dts may still use "simple-bus" compatible */
> +	ret = of_platform_populate(dev->dev.of_node, NULL, NULL,
> +					&dev->dev);
> +	if (ret)
> +		goto err_nandirq;
> +

This one does not apply. Please rebase.

Best regards,
Krzysztof
