Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C8D5416F40
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 11:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244969AbhIXJn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 05:43:58 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:53044 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237056AbhIXJn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 05:43:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1632476544;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=vUzbfgFGJbRculgCpmjQ3O2nASXZHD9opxu8ZTgKln0=;
        b=fFGmzmgeQU7s3qsk09P989YFssjB2RKhqHz/TcrKgstNpusaLbaVoc9c2B1jgfjdXHz4E6
        SY6pkIK502bBw5XNllBgfaVAdiDcmGzy6OeClgO2ZjNDpM+U68WzW8nlTQLeC+cXzOmdw+
        g3fVq7aak6wuhVXSwMHIfJYNOsUuWvw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-9QasIcoyMs-dr_SS6bmOlw-1; Fri, 24 Sep 2021 05:42:23 -0400
X-MC-Unique: 9QasIcoyMs-dr_SS6bmOlw-1
Received: by mail-ed1-f70.google.com with SMTP id h24-20020a50cdd8000000b003d8005fe2f8so9683672edj.6
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 02:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vUzbfgFGJbRculgCpmjQ3O2nASXZHD9opxu8ZTgKln0=;
        b=Ov8c+gQhVq9SouG8G09SppDzOaiwjEa0P8zS0Mkj68Vrm4+ovqrlulwt4cPi+E90PP
         ZqujFPkedxVEzc8MDdkMVZm7XQnuJ2K/ChwmCbCZNPNsoO5qZdMmdgr3KYhyTH4RFirn
         g+kvZtw47gtpVv1yFjeFupZcA5ACkIVWmI8w54sE9/+heOl4gVohFw+Kmvf7go3RExYV
         c2QBf60dQwMrDVLjKPh35+IaalIEXJUVnIIMPTWLEPq14gZU3zZ0/ge3VBwpTZ/fJWuI
         Y1NzXBR3qfEbBUU/0O9gmjx9Vv2EIKIm9x7CWZv37pI2U86piuJmvybIYfHoag8P6K96
         3Nvw==
X-Gm-Message-State: AOAM533TKI8DeIINovXggarNvkwEl2L4HiMYcXqx97IuLgmfYt5Dd4ui
        8fhz0s1GvPQVc4Mrv2h43u+ax4u5c0gCj7quppVnMuYArQUOP/LeMm1pArfO1KdA/5MStdxc+Ji
        Pz8b7u4azDhcjquse6ngtMA==
X-Received: by 2002:a50:da04:: with SMTP id z4mr3832724edj.52.1632476541969;
        Fri, 24 Sep 2021 02:42:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxFFhNM8FfK4gtsIcdAkmK8mGUfUqWHYmObz+E0lrT+5SszURHPGisRhUgqH9Ohz2HYrtAytA==
X-Received: by 2002:a50:da04:: with SMTP id z4mr3832706edj.52.1632476541798;
        Fri, 24 Sep 2021 02:42:21 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id k16sm5468306edr.33.2021.09.24.02.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 02:42:21 -0700 (PDT)
Subject: Re: [PATCH] Bluetooth: hci_h5: directly return
 hci_uart_register_device() ret-val
To:     Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc:     devicetree@vger.kernel.org, Archie Pusaka <apusaka@google.com>
References: <20210924094106.32505-1-hdegoede@redhat.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <654f45da-d03a-019b-3d54-1f18360283f6@redhat.com>
Date:   Fri, 24 Sep 2021 11:42:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210924094106.32505-1-hdegoede@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I accidentally send this to the device-tree list instead of to the
bluetooth list. So I'm going to resend this now to the right list.

Note the second copy you will receive is unchanged, I'm just fixing the
Cc.

Regards,

Hans


On 9/24/21 11:41 AM, Hans de Goede wrote:
> Since the hci_uart_register_device() call is the last thing we do in
> h5_serdev_probe() we can simply directly return its return-value.
> 
> Cc: Archie Pusaka <apusaka@google.com>
> Suggested-by: Archie Pusaka <apusaka@google.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/bluetooth/hci_h5.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
> index 59b712742d33..3e067c7cabff 100644
> --- a/drivers/bluetooth/hci_h5.c
> +++ b/drivers/bluetooth/hci_h5.c
> @@ -814,7 +814,6 @@ static int h5_serdev_probe(struct serdev_device *serdev)
>  	struct device *dev = &serdev->dev;
>  	struct h5 *h5;
>  	const struct h5_device_data *data;
> -	int err;
>  
>  	h5 = devm_kzalloc(dev, sizeof(*h5), GFP_KERNEL);
>  	if (!h5)
> @@ -858,11 +857,7 @@ static int h5_serdev_probe(struct serdev_device *serdev)
>  	if (IS_ERR(h5->device_wake_gpio))
>  		return PTR_ERR(h5->device_wake_gpio);
>  
> -	err = hci_uart_register_device(&h5->serdev_hu, &h5p);
> -	if (err)
> -		return err;
> -
> -	return 0;
> +	return hci_uart_register_device(&h5->serdev_hu, &h5p);
>  }
>  
>  static void h5_serdev_remove(struct serdev_device *serdev)
> 

