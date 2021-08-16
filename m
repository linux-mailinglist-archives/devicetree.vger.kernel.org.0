Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3DE3ED076
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 10:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234904AbhHPImg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 04:42:36 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:45199 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234896AbhHPImg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Aug 2021 04:42:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1629103324;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=4EFm6gVEreXk1Z8T6prMck0p8oHnL3WE32KdZ7f5jjo=;
        b=WM8BMIxu13avenlRsUaKF9KhIVfdlb2WJBfIWKJrpOk6uhCQy05bxYm+MykVVPu4LEGkMo
        raQK1NjBXDrDHQS6OEOgD1RWpdjJTxkUTum3Y/+diYztgTsN3FFH70shkcsIm53jDQVfvr
        7+J5gI7HnjoVY/Es2197B80Wd96eT2U=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-utcWi-GsMWSClHuf6MR6xw-1; Mon, 16 Aug 2021 04:42:03 -0400
X-MC-Unique: utcWi-GsMWSClHuf6MR6xw-1
Received: by mail-ej1-f69.google.com with SMTP id v19-20020a170906b013b02905b2f1bbf8f3so4400891ejy.6
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 01:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4EFm6gVEreXk1Z8T6prMck0p8oHnL3WE32KdZ7f5jjo=;
        b=JBAh798ph/3ZMUHF10GLTdPrHmGi32o/phf+j/DXBjlzKFtKm6wikGW23yYpTqzIZ5
         alYfvIuWCHQZpXxTScdJFZca47rT4xO92sk67PmF/sDq9Rq68lQbZtD5JRXHeZa9DyC0
         0RyETltB5wfmKC4e8zVtlO25yxwxwHepHkrNoaZfjYU0CeR5bIwUwfHcPJKYAW9Nhh/f
         yEQPtRc3lSIeYwbQJb/STtUSw+4VJpDKNgrV2ieF99KhTajHdN6zEILMexq8mR77Cagx
         ROmiazsyGfhYxrOTJw2IB9vU15RNX7Ic2N7vO9NabRTV2tUC2R5sQeGDGSu+WXFPFNSn
         Pmrg==
X-Gm-Message-State: AOAM5308a66brveCW51xhVOmy4eLVUS3yjzJDZUtbS9cUdoFQaKGb+9Q
        vgB53YpdIkC25SGniSXy15rugopsBqFCfZYcRN3K3lhKcs4dBB8RZ2aikFa1y6nYUIIH5VKvGRw
        Yh1fXseeodH3SVEp8tugpYg==
X-Received: by 2002:a17:907:6089:: with SMTP id ht9mr14319197ejc.422.1629103322111;
        Mon, 16 Aug 2021 01:42:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhMOzUyKSIFJf2ZL/Rg4zpaV6lNxzUjZedt8/SufJLv342AisfKH/2GBGZYRWCOz9DFVAUbQ==
X-Received: by 2002:a17:907:6089:: with SMTP id ht9mr14319179ejc.422.1629103321911;
        Mon, 16 Aug 2021 01:42:01 -0700 (PDT)
Received: from x1.localdomain ([81.30.35.201])
        by smtp.gmail.com with ESMTPSA id d22sm3453388ejj.47.2021.08.16.01.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 01:42:01 -0700 (PDT)
Subject: Re: [PATCH 1/3] power: supply: max17042: handle fails of reading
 status register
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        stable@vger.kernel.org
References: <20210816082716.21193-1-krzysztof.kozlowski@canonical.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <820c80fa-c412-dd71-62a4-0ba1e1a97820@redhat.com>
Date:   Mon, 16 Aug 2021 10:42:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210816082716.21193-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 8/16/21 10:27 AM, Krzysztof Kozlowski wrote:
> Reading status register can fail in the interrupt handler.  In such
> case, the regmap_read() will not store anything useful under passed
> 'val' variable and random stack value will be used to determine type of
> interrupt.
> 
> Handle the regmap_read() failure to avoid handling interrupt type and
> triggering changed power supply event based on random stack value.
> 
> Fixes: 39e7213edc4f ("max17042_battery: Support regmap to access device's registers")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Thanks, the entire series looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

For the series.

Regards,

Hans

> ---
>  drivers/power/supply/max17042_battery.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
> index ce2041b30a06..858ae97600d4 100644
> --- a/drivers/power/supply/max17042_battery.c
> +++ b/drivers/power/supply/max17042_battery.c
> @@ -869,8 +869,12 @@ static irqreturn_t max17042_thread_handler(int id, void *dev)
>  {
>  	struct max17042_chip *chip = dev;
>  	u32 val;
> +	int ret;
> +
> +	ret = regmap_read(chip->regmap, MAX17042_STATUS, &val);
> +	if (ret)
> +		return IRQ_HANDLED;
>  
> -	regmap_read(chip->regmap, MAX17042_STATUS, &val);
>  	if ((val & STATUS_INTR_SOCMIN_BIT) ||
>  		(val & STATUS_INTR_SOCMAX_BIT)) {
>  		dev_info(&chip->client->dev, "SOC threshold INTR\n");
> 

