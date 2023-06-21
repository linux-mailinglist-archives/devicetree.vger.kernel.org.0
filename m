Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EACF738632
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 16:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232546AbjFUOGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 10:06:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232742AbjFUOGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 10:06:19 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45AEE1FE8
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 07:05:45 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-340b7da7e3aso23988675ab.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 07:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1687356344; x=1689948344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z5AalVhVAkcY8u+ARguWnEnoZBNM5Jd8Zq9nh6uKa70=;
        b=W+Zccgtks5e4H1TrJ3aAuQ3OeYMbSGc7SowPG/W8UkwKN1s8lq2YxtMUHKrU1f3Kgo
         pq7dxCq73UjKRRGPUEQCGwgg92utACrdmsIv84HlGFgpgHr5mXBncrgFDtGCVxpEhYuf
         4TH/mhVL4pstvwVrX8PbWgpdYFDBeTfR33rEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687356344; x=1689948344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5AalVhVAkcY8u+ARguWnEnoZBNM5Jd8Zq9nh6uKa70=;
        b=OuxQug/2V+5hk9kSqYuLB8nucq3Da4JlU/6ONcxcnOF5HPZ6kKzBAhOoFAYYEvW3Uc
         S5CTubSkMR1aRhfMrhZM9P5bVirsXAui4asND9POFojCcQylhmyMJ9DbL5nD0aWN49W4
         kuwrTCdEs0qNnx8NG+X8S/DqXPoRmGJB11ZvMUzcC80xcnDKIFZvRWChQ9Xhix3QVmby
         RYRQ5YgtZgwJorEPEFJLcEEdkft3A/IlgOu4Ze+48Lx2tMIB91XqT2WJ2ypEMotGVgIQ
         iQvUtWtrfjsBWQVKXvS4bXC/Ew/rl9VcnHknbQSw/+OICSoXCWMT1EsG8PY3Hax7bufM
         rARw==
X-Gm-Message-State: AC+VfDxoNxflGfFOyb7HTE/+oXO/9TN82kQm1GU/421IF509Ikd2Z96K
        FLEDS6uL8Zqyl+G2TmPtcaUZnQ==
X-Google-Smtp-Source: ACHHUZ5Vu61iA7SPw/gLzPZDcbzEbubQhd7YEEk/p6Fxmn97NSJyBnLw/66MgMV3yKx5yiqwQdUZKA==
X-Received: by 2002:a92:c8c5:0:b0:339:f9d:9f6b with SMTP id c5-20020a92c8c5000000b003390f9d9f6bmr13491567ilq.1.1687356344575;
        Wed, 21 Jun 2023 07:05:44 -0700 (PDT)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id p6-20020a92d286000000b0034269982ac7sm1339298ilp.59.2023.06.21.07.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 07:05:44 -0700 (PDT)
Date:   Wed, 21 Jun 2023 14:05:43 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Benjamin Bara <bbara93@gmail.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Benjamin Bara <benjamin.bara@skidata.com>,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] usb: misc: onboard-hub: resort by VID and PID
Message-ID: <ZJMDt+M6GH2AFxzK@google.com>
References: <20230620-hx3-v1-0-3a649b34c85b@skidata.com>
 <20230620-hx3-v1-1-3a649b34c85b@skidata.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230620-hx3-v1-1-3a649b34c85b@skidata.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 21, 2023 at 12:38:00PM +0200, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
> 
> Resort the existing entries by VID and then by PID to be able to find
> entries easier.

I don't think it actually makes it easier. In both the 'onboard_hub_id_table'
and the list of 'onboard_hub_pdata' the numerical VID isn't even visible
because the 'VENDOR_ID_*' constant is used, so the ordering becomes arbitrary
for a human reader, at least for the 99.9% who doesn't know all the VIDs by
heart.

For the 'VENDOR_ID_*' list one can argue in either way. My POV is that a
reader sees the name of the constant first, therefore the list should be
ordered by name. For the occasional case that a new hub model is added it
shouldn't be too hard to search the file for the VID to check if it already
exists.

> Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>
> ---
>  drivers/usb/misc/onboard_usb_hub.c | 12 ++++++------
>  drivers/usb/misc/onboard_usb_hub.h |  8 ++++----
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
> index 12fc6eb67c3b..94006714c273 100644
> --- a/drivers/usb/misc/onboard_usb_hub.c
> +++ b/drivers/usb/misc/onboard_usb_hub.c
> @@ -329,10 +329,10 @@ static struct platform_driver onboard_hub_driver = {
>  
>  /************************** USB driver **************************/
>  
> -#define VENDOR_ID_GENESYS	0x05e3
>  #define VENDOR_ID_MICROCHIP	0x0424
> -#define VENDOR_ID_REALTEK	0x0bda
>  #define VENDOR_ID_TI		0x0451
> +#define VENDOR_ID_GENESYS	0x05e3
> +#define VENDOR_ID_REALTEK	0x0bda
>  #define VENDOR_ID_VIA		0x2109
>  
>  /*
> @@ -407,16 +407,16 @@ static void onboard_hub_usbdev_disconnect(struct usb_device *udev)
>  }
>  
>  static const struct usb_device_id onboard_hub_id_table[] = {
> -	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0608) }, /* Genesys Logic GL850G USB 2.0 */
> -	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0610) }, /* Genesys Logic GL852G USB 2.0 */
>  	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2514) }, /* USB2514B USB 2.0 */
>  	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2517) }, /* USB2517 USB 2.0 */
> +	{ USB_DEVICE(VENDOR_ID_TI, 0x8140) }, /* TI USB8041 3.0 */
> +	{ USB_DEVICE(VENDOR_ID_TI, 0x8142) }, /* TI USB8041 2.0 */
> +	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0608) }, /* Genesys Logic GL850G USB 2.0 */
> +	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0610) }, /* Genesys Logic GL852G USB 2.0 */
>  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x0411) }, /* RTS5411 USB 3.1 */
>  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x5411) }, /* RTS5411 USB 2.1 */
>  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x0414) }, /* RTS5414 USB 3.2 */
>  	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x5414) }, /* RTS5414 USB 2.1 */
> -	{ USB_DEVICE(VENDOR_ID_TI, 0x8140) }, /* TI USB8041 3.0 */
> -	{ USB_DEVICE(VENDOR_ID_TI, 0x8142) }, /* TI USB8041 2.0 */
>  	{ USB_DEVICE(VENDOR_ID_VIA, 0x0817) }, /* VIA VL817 3.1 */
>  	{ USB_DEVICE(VENDOR_ID_VIA, 0x2817) }, /* VIA VL817 2.0 */
>  	{}
> diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
> index aca5f50eb0da..ff8925aa6d3a 100644
> --- a/drivers/usb/misc/onboard_usb_hub.h
> +++ b/drivers/usb/misc/onboard_usb_hub.h
> @@ -14,10 +14,6 @@ static const struct onboard_hub_pdata microchip_usb424_data = {
>  	.reset_us = 1,
>  };
>  
> -static const struct onboard_hub_pdata realtek_rts5411_data = {
> -	.reset_us = 0,
> -};
> -
>  static const struct onboard_hub_pdata ti_tusb8041_data = {
>  	.reset_us = 3000,
>  };
> @@ -30,6 +26,10 @@ static const struct onboard_hub_pdata genesys_gl852g_data = {
>  	.reset_us = 50,
>  };
>  
> +static const struct onboard_hub_pdata realtek_rts5411_data = {
> +	.reset_us = 0,
> +};
> +
>  static const struct onboard_hub_pdata vialab_vl817_data = {
>  	.reset_us = 10,
>  };
> 
> -- 
> 2.34.1
> 
