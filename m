Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE25165E984
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 12:06:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232027AbjAELGE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 06:06:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232744AbjAELFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 06:05:43 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C6FC574C6
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 03:05:41 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id z16so19257251wrw.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 03:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ad2eMKfo4aVouTchNTqrNM57SYFi0G9ncYilM9MgLJY=;
        b=ox9+7F1oaH+SXA9okqyI6rucJ/fhgMQUB9DokB5LD3YrzNcbDBRtJI+ENeiwGKUyl0
         dtmIXsyODgk9x5/VJ5w/OWyDiiAbBg21hga43hv6rUMP0MHvW+X9jGK37p86zt5CmGsG
         hetdyzRfBnIUGlcD073uBrLkxUeenYC+AmGU8pbn+XZ9Aya0fUDx7QA9PVz73QTJLd2S
         stZvTUOmLJsdAn2v+cpNlDcz5TQt9IJJ8RAV26ax63axzbYpfJpxElgriMTUtWj1H81o
         wYMS7mKKPbLrH1eNzCUHM4eg+CJlJOMnr2PB6siipiRty11baterJYWE/0DPqDowTDKe
         7QmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ad2eMKfo4aVouTchNTqrNM57SYFi0G9ncYilM9MgLJY=;
        b=AQAy0W6kA2RzrwE/tQ0DArmN6LcwM7DGpYiAMMbpe5QWCJJ6UQUDmIaWRXRviH5UpH
         IEuMu2opZOQWL5s/1uofcNj4R+4ZBTArFt9/yDtVsc/OI9NX3unFGO8kNi1/OM8gvWkW
         4VaI7l+tNs5v+NcoFdQypDzP1e5mid1iLnTsABrgDeAvWwS1yy8hkStEUcTo4ha1ucdx
         3X0772CwZziQA/MKpgDi6Zks+64OE9LNh5msevLKimkWoxYo6SozcNdqNthz50D9yWeR
         y2nu/qSr2IzY97f23zDF6kIgnB6HZwpbiR7sYlM6ET1QsrzbX/rawwJ5aLbvA/8DQ45M
         Yf4Q==
X-Gm-Message-State: AFqh2kqSi3K17vvA1g39EK6a4zRMNim9yn52xkuWf0ej9Us+LQFZxN5j
        FPiryVaQ9lO0FazLS12hm9j1yw==
X-Google-Smtp-Source: AMrXdXu2cRIjayDpNovx6pMQG7YEiUaaG+p1t/OGi8A6sjdq6GwamYYemek3l5xW3afNe8V7BYw8Dg==
X-Received: by 2002:adf:eed0:0:b0:2b5:47ab:6fa0 with SMTP id a16-20020adfeed0000000b002b547ab6fa0mr653421wrp.38.1672916739969;
        Thu, 05 Jan 2023 03:05:39 -0800 (PST)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o2-20020adfcf02000000b00241d21d4652sm36401243wrj.21.2023.01.05.03.05.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 03:05:39 -0800 (PST)
Message-ID: <d0191001-d31e-1e65-0594-12dbb789392e@linaro.org>
Date:   Thu, 5 Jan 2023 11:05:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/2] usb: typec: tipd: Support wakeup
Content-Language: en-US
To:     Jun Nie <jun.nie@linaro.org>, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Cc:     sven@svenpeter.dev, shawn.guo@linaro.org
References: <20230105075058.924680-1-jun.nie@linaro.org>
 <20230105075058.924680-2-jun.nie@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230105075058.924680-2-jun.nie@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/01/2023 07:50, Jun Nie wrote:
> Enable wakeup when pluging or unpluging USB cable. It is up to other
> components to hold system in active mode, such as display, so that
> user can receive the notification.
> 
> Signed-off-by: Jun Nie <jun.nie@linaro.org>
> ---
>   drivers/usb/typec/tipd/core.c | 38 +++++++++++++++++++++++++++++++++++
>   1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index 46a4d8b128f0..485b90c13078 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -95,6 +95,7 @@ struct tps6598x {
>   	struct power_supply_desc psy_desc;
>   	enum power_supply_usb_type usb_type;
>   
> +	int wakeup;
>   	u16 pwr_status;
>   };
>   
> @@ -846,6 +847,12 @@ static int tps6598x_probe(struct i2c_client *client)
>   	i2c_set_clientdata(client, tps);
>   	fwnode_handle_put(fwnode);
>   
> +	tps->wakeup = device_property_read_bool(tps->dev, "wakeup-source");
> +	if (tps->wakeup) {
> +		device_init_wakeup(&client->dev, true);
> +		enable_irq_wake(client->irq);
> +	}

Does the ordering of device_init_wakeup() and enable_irq_wake() matter ?

The sequence in drivers/usb/typec/tcpm/tcpci_maxim.c is 
enable_irq_wake() and then device_init_wakeup() ?

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
