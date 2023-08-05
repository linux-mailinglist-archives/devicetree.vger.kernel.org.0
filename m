Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A627E77125E
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 23:30:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjHEVaa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 17:30:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjHEVa3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 17:30:29 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947581732
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 14:30:25 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fe4762173bso5452204e87.3
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 14:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691271024; x=1691875824;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Udedw+f7sx05Q6DqlAhOSPpIuk4HuNrRk0FviM5bJCg=;
        b=Cu+OQzJCl9FU2+XLRN5mS+hfTTB/Cwtwf6ChMAsI4j4vULW5wnrmGo+IGNjXVTtElh
         xQQbMf7r7JckgYGmn5sAA8+Q5CaMfq4bwSg0BOz2bUj3xpNceBbddVaFHkRW9xXprTUC
         7+kPWAVEfXiX1kiItHQxc8Atx9BIgOPUP+ExAXASrHvwhFZuEXKAzVTGyZQ9/KFnWsW0
         4HKR7Klaoiu8fkrDAsRkSh2pWQl9KoZiwyt5zJr9tcoTeZlbj0W83R2Hk+5OqJUiKDMX
         prRj/BYVb7a8Bx/0QElXm+tLn3QzSZ8li4qERuI7qTN6fz25vt3veGpZe5O5/m+mFnay
         7gDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691271024; x=1691875824;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Udedw+f7sx05Q6DqlAhOSPpIuk4HuNrRk0FviM5bJCg=;
        b=Sp20EaDpCrZJ8y35UbKkaduCtIWyW4mT7AZJxTRTQm0Dqn3R3locR7laNWbYtMtCfE
         /tvtmTLTqqFaAunL8Qyl6vVfbPeuSiB6JyTImeMHPPFMB4MFG7qhkybF35NIvdaC4Kvq
         05o3f2ohuMF8aAVtvfcmvb7vnDtVEikBjFqVEc1g+YN5HKpfg8loJNL9HjjETgiwY3fo
         CJL6rAYN/51ZP0p+UAlRuoMWec/bxnKW4OWnxJVUPUViiWOQhx94AsZ+ZAqDw6TUeGd8
         QwPUDTwufBywD2V4nD13d+LnOfGqde2UgoItKg4brtXWFvlnS55StKaK2NpR9AAjoCiH
         06Mg==
X-Gm-Message-State: AOJu0YwuVi3GEl4NGQTFLA9+W537hLqLaO/zC4KaGQzrr2SGFQxjmt0g
        AQ/aCG6Rqriq2hmJP6Fw5APBR6agq4H51GSE710=
X-Google-Smtp-Source: AGHT+IEhTQgOjVXcX2K7FMOId42YhEmbOgLrWHIWvScZnVOdAcuePZAlBztMGO2G54UZgxWLjf8Udg==
X-Received: by 2002:ac2:5f98:0:b0:4fd:d481:ff35 with SMTP id r24-20020ac25f98000000b004fdd481ff35mr3526879lfe.42.1691271023831;
        Sat, 05 Aug 2023 14:30:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id g17-20020a056402115100b005230f2a12b9sm3073310edw.43.2023.08.05.14.30.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Aug 2023 14:30:23 -0700 (PDT)
Message-ID: <45d25fd5-465f-347b-448b-ce171626f34e@linaro.org>
Date:   Sat, 5 Aug 2023 23:30:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 3/9] arm64: dts: amlogic: Used onboard usb hub reset on
 odroid c2
Content-Language: en-US
To:     Ben Wolsieffer <benwolsieffer@gmail.com>,
        Anand Moon <linux.amoon@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org,
        Matthias Kaehlcke <mka@chromium.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Johan Hovold <johan@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230121175639.12818-1-linux.amoon@gmail.com>
 <20230121175639.12818-4-linux.amoon@gmail.com>
 <ZMrFb7H1ynwwBSCA@Dell-Inspiron-15>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZMrFb7H1ynwwBSCA@Dell-Inspiron-15>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/08/2023 23:06, Ben Wolsieffer wrote:
> On Sat, Jan 21, 2023 at 05:56:31PM +0000, Anand Moon wrote:
>> On Odroid c2 previously use gpio-hog to reset the usb hub,
>> switch to used on-board usb hub reset to enable the usb hub
>> and enable power to hub.
>>

...

>> +	hub@1 {
>> +		/* Genesys Logic GL852G USB 2.0 hub */
>> +		compatible = "usb5e3,610";
>> +		reg = <1>;
>> +		vdd-supply = <&p5v0>;
>> +		reset-gpio = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
>> +	};
>>  };
>> -- 
>> 2.38.1
>>
> 
> Hello,
> 
> This patch breaks USB support on the ODROID-C2. As soon as the
> onboard_usb_hub module is loaded, all USB devices disconnect.
> Blacklisting onboard_usb_hub makes USB work as expected.
> 
> I tried to reproduce the problem by manually toggling the reset line,
> but the problem seems to be specific to this driver. When reset is
> asserted manually, the devices disconnect, but they all enumerate again
> as soon as reset is released.
> 
> Also, I have been unable to make USB work again (until the next reboot)
> even after unloading onboard_usb_hub.

Wasn't this patch made exactly to fix USB support, not break it? I might
be missing something but maybe this was not tested at all?

Best regards,
Krzysztof

