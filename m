Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FBCC6562C7
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 14:06:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231830AbiLZNGb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 08:06:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiLZNGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 08:06:31 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E3322B
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 05:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672059947;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=5HwcZaA2sM/B/lkvzfdRvvoZ71F34zcgGLsOqes2MUk=;
        b=JLRsAifTEc5NSa5xfoN3q+vW8DS4RgZMCmWsZ2SKi0OAngK+x4nAhVYauLkQVNTDbKKmNK
        f/sSg+TfiRpVZCu+ta1KV/rvbXMMvF2h0cXnYvFKQy5UBuyw6pJi0XZetbuM4fiBuuOT6l
        lPSS/0DaEmu/J3Tz3i4fzknuASmlLAs=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-447-DUtSaZkoOeueqhPf9VSeGA-1; Mon, 26 Dec 2022 08:05:46 -0500
X-MC-Unique: DUtSaZkoOeueqhPf9VSeGA-1
Received: by mail-wm1-f72.google.com with SMTP id b47-20020a05600c4aaf00b003d031aeb1b6so8051950wmp.9
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 05:05:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5HwcZaA2sM/B/lkvzfdRvvoZ71F34zcgGLsOqes2MUk=;
        b=bRD4BahJMlvHdF6eKj9KXfoG1fX8GkIhTX1xVq6uzCWfYHdIpjDCciG2AvwTmVZZsm
         4qjWN0RPtIPNMHfHBsH7qdfZajfVx6nD3bfFyn+Waiu3N5eb0wDKugJuZyeUVrTXOjbL
         8ju4N7b3LfZgOjaj+Pe16w1hAjvNdc18CqkVwbDpBH4rOVrP7Lel1qmK0Do8acdbg+aY
         LYvtFf9HBoipRyP9zJf3XE+OCE7IOPwqJapvttN3kupQlWK35s/Qu+QtqryBFtGqbn9l
         xIZ/O9CPlO9SSI8Hqa/lyZjq84WIwGxuti8n7HVPbkZpvkAYa6kGIMfOkii2IdZy+nxz
         EXMw==
X-Gm-Message-State: AFqh2kqNxe2WEwfA4GYB2PvzYupC8syxl5btiPZ8ZH8EDzAFxom3h6cU
        5h0thq0L6DlWxNgoEd1OPzI2n5tooD8PG4XoYEqc9dJXZ4rZJv5dMaTskYWq7vSYc6z8W+/2CAV
        NGH7ASN9ww0DOTFsLtGg6ng==
X-Received: by 2002:a05:600c:34d0:b0:3d6:b691:b80d with SMTP id d16-20020a05600c34d000b003d6b691b80dmr12927825wmq.21.1672059945409;
        Mon, 26 Dec 2022 05:05:45 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuB8uWC1YkrMzvSoNX2/+CoR/kzQ1LiWZ0PSZdafOK0oPqeMekB++8piVRthVz4KooVG2Xcdg==
X-Received: by 2002:a05:600c:34d0:b0:3d6:b691:b80d with SMTP id d16-20020a05600c34d000b003d6b691b80dmr12927789wmq.21.1672059945137;
        Mon, 26 Dec 2022 05:05:45 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b003c6f8d30e40sm20234587wms.31.2022.12.26.05.05.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 05:05:44 -0800 (PST)
Message-ID: <e575579e-3db3-6f67-1351-614f752234bf@redhat.com>
Date:   Mon, 26 Dec 2022 14:05:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Content-Language: en-US
To:     Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
        Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
 <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Maya,

I'm going through this now and addressing your comments.

On 12/22/22 23:57, Maya Matuszczyk wrote:

[...]

>> +       /* MIPI DSI panel 1.8v supply */
>> +       vcc1v8_lcd: vcc1v8-lcd {
> Node names should be generic, for example "vcc1v8-lcd-regulator".
>

Fixed.
 
>> +               compatible = "regulator-fixed";
>> +               enable-active-high;
> Is this really needed?
> You can set the polarity in "gpios" property.
>

I understand that it is needed. The regulator-fixing binding says:

  enable-active-high:
    description:
      Polarity of GPIO is Active high. If this property is missing,
      the default assumed is Active low.
    type: boolean

and indeed by looking at the source in drivers/gpio/gpiolib-of.c, there is
a check for this property in the of_gpio_flags_quirks() function:

static void of_gpio_flags_quirks(const struct device_node *np,
				 const char *propname,
				 enum of_gpio_flags *flags,
				 int index)
{
	/*
	 * Some GPIO fixed regulator quirks.
	 * Note that active low is the default.
	 */
	if (IS_ENABLED(CONFIG_REGULATOR) &&
	    (of_device_is_compatible(np, "regulator-fixed") ||
	     of_device_is_compatible(np, "reg-fixed-voltage") ||
	     (!(strcmp(propname, "enable-gpio") &&
		strcmp(propname, "enable-gpios")) &&
	      of_device_is_compatible(np, "regulator-gpio")))) {
		bool active_low = !of_property_read_bool(np,
							 "enable-active-high");
		/*
		 * The regulator GPIO handles are specified such that the
		 * presence or absence of "enable-active-high" solely controls
		 * the polarity of the GPIO line. Any phandle flags must
		 * be actively ignored.
		 */
		if ((*flags & OF_GPIO_ACTIVE_LOW) && !active_low) {
			pr_warn("%s GPIO handle specifies active low - ignored\n",
				of_node_full_name(np));
			*flags &= ~OF_GPIO_ACTIVE_LOW;
		}
		if (active_low)
			*flags |= OF_GPIO_ACTIVE_LOW;
	}
...
}

So I'll keep those.
 
>> +               regulator-name = "vcc1v8_lcd";
>> +               regulator-min-microvolt = <1800000>;
>> +               regulator-max-microvolt = <1800000>;
>> +               vin-supply = <&vcc3v3_sys>;
>> +               gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> Is this a typo? Documentation says "gpios"
>

Documentation/devicetree/bindings/gpio/gpio.txt indeed says "gpios" but "gpio"
is also supported for older DT that are using bindings that got it wrong. See
commits e7ae65ced7dd ("gpio: mention in DT binding doc that <name>-gpio is
deprecated") and dd34c37aa3e8 ("gpio: of: Allow -gpio suffix for property names").

The regulator-fixed bindings is such an example. See that its bindings schema
Documentation/devicetree/bindings/regulator/regulator.yaml mentions "gpio" and
not "gpios", also in the example.

So until that is fixed, I would prefer to stick with that's documented in the
regulator-fixed bindings doc.
 
[...]

>> +       touchscreen@14 {
>> +               compatible = "goodix,gt917s";
>> +               reg = <0x14>;
>> +               interrupt-parent = <&gpio3>;
>> +               interrupts = <RK_PB5 IRQ_TYPE_EDGE_RISING>;
>> +               irq-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
>> +               reset-gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_HIGH>;
>> +               AVDD28-supply = <&vcc3v0_touch>;
>> +               VDDIO-supply = <&vcc3v0_touch>;
>> +               touchscreen-size-x = <720>;
>> +               touchscreen-size-y = <1440>;
>> +               poweroff-in-suspend;
> Are you really sure this property exists in touchscreen driver's dt bindings?
>

It's not indeed. I've dropped that now.

[...]

>> +               vcc-supply = <&vcc2v8_lcd>; // 2v8
> What is the purpose of that comment?
> 
>> +               iovcc-supply = <&vcc1v8_lcd>; // 1v8

Yeah, not that useful. I've removed those two now.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

