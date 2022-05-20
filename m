Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC38652EC99
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349543AbiETMud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349531AbiETMub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:50:31 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A282166D5C
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:50:28 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p4so12747275lfg.4
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rw557JuqqBfkrIeMqm9Q73SdR1LCTiOOmhhgFZlhrWo=;
        b=Nps8png1xqwqaXRARrrO0C+DfZYSf2bntdBhj+6Ri1e5U4zbqewJS2ReLdLXfNseaJ
         +GR6dNvZ9KmcKDqw/yAl8FIa9T7xhwJrHW8hzzaPVmLQCh/qJMZcx7lzHVsCQPn1W+jN
         DY3inZbdl0olc/vIN+nPO2SEXkZ/nAdDnYFkDBVBqn67nzFjwvq7zc4ClLDNHVW/ycJT
         51cR7UgzrqLkUzOO+ME7jdVLz2vTdnOdejHIyBsCsg5Ww6kYnNN7TRp+1SkD80OcTU15
         0qCO24dIDN7iM9RzktkTAHwFacxgYU67R9uEPwvleLP2sejndHkw8Ios1VlFVDa7CZwe
         JN/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rw557JuqqBfkrIeMqm9Q73SdR1LCTiOOmhhgFZlhrWo=;
        b=BF0iIlQB9DSVkLw7zIR6x4QiiLfx7Vxxvq3xvsHxRyiq6dlJ5i+Eynuz1FKK/XQ2C/
         vn+b2xI9Hx0o0/IkNSNtpjm2uY7jj5e47IaOM+qruUOi9xutcIhg1mS1J+uXspQLx01O
         lJeOoaaH58v9yklUTP7yDO0qftQafV9rX2re8RvSOs8d0LU23wQ9zyU3TiCo/VPgv5Ib
         baZKkph4YpdZMcWI7i5cugCKmiGHwy/izchYYEVuZmtxr0QzxXuf/3+0Y7RCVrBeRXNQ
         u1G2DmVsvlSY3c3Wepi07x/JQAV+gcSUs55GQqFypu2cEbFcP3gHVFqiK3lrrqgX4hAb
         zgJw==
X-Gm-Message-State: AOAM533z2przjFaS6SuaJkpxjHBPOQZ0te5C0ePSWtcOOBLqSLMdJss/
        efLCqQnd90PvTm4hAYAsQIr9mQ==
X-Google-Smtp-Source: ABdhPJxEkqrTB396TYyemRowxMKtKjQKYNzjkppAXp92YM0ZAbZjILr9av0gjhay7sjVxpd9D2tQjA==
X-Received: by 2002:a19:5e55:0:b0:477:bae8:e5fc with SMTP id z21-20020a195e55000000b00477bae8e5fcmr6671440lfi.14.1653051026539;
        Fri, 20 May 2022 05:50:26 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v5-20020a2e9605000000b0024f3d1daeaasm309855ljh.50.2022.05.20.05.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 05:50:25 -0700 (PDT)
Message-ID: <01b31a02-523e-10bf-3b46-5b830e456522@linaro.org>
Date:   Fri, 20 May 2022 14:50:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/3] dt-bindings: usb: atmel: Add Microchip LAN966x
 compatible string
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Horatiu Vultur <horatiu.vultur@microchip.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20220513105850.310375-1-herve.codina@bootlin.com>
 <20220513105850.310375-3-herve.codina@bootlin.com>
 <8f0d4127-7e66-cf50-21c9-99680f737e30@linaro.org>
 <20220520133426.3b4728ae@bootlin.com>
 <b087c34f-0e2f-edd0-a738-3ffc2853a41b@linaro.org>
 <20220520142109.57b84da2@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520142109.57b84da2@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 14:21, Herve Codina wrote:
>>> I think it makes sense to keep 'microchip,lan966x-udc' for the USB
>>> device controller (same controller on LAN9662 and LAN9668) and so
>>> keeping the same rules as for other common parts.  
>>
>> Having wildcard was rather a mistake and we already started correcting
>> it, so keeping the "mistake" neither gives you consistency, nor
>> correctness...
>>
> 
> I think that the "family" compatible should be present.
> This one allows to define the common parts in the common
> .dtsi file (lan966x.dtsi in our case).
> 
> What do you think about:
> - microchip,lan9662-udc
> - microchip,lan9668-udc
> - microchip,lan966-udc  <-- Family
> 
> lan966 is defined as the family compatible string since (1) in
> bindings/arm/atmel-at91.yaml and in Documentation/arm/microchip.rst
> 

You can add some family compatible, if it makes sense. I don't get why
do you mention it - we did not discuss family names, but using
wildcards... Just please do not add wildcards.

Best regards,
Krzysztof
