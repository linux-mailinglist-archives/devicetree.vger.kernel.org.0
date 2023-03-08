Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D3BA6B01E1
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 09:45:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjCHIpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 03:45:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230263AbjCHIov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 03:44:51 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39402A5916
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 00:44:47 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id x3so62515407edb.10
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 00:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678265086;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8X8oossssHZ/mYv0HHxeiQFRMY1H8SzjxfV4O0bYpxc=;
        b=eOZ30U3mjKF/Cw9QM6xyMeQcI4S12Jzpe/WsVPpZSKlo9hSirDtP0v25PuRMKwY9SJ
         F6Vxp/LKWQGTJF2re07vLGRbI/qR7axk59dnlw0TPiKhT1P/eMQfSGK5xPjN5t8boyKO
         QNuMJR1NmoDaIkoaz+Fewxz3E6ilRLy3SF2qGOlobFHGNyoaWsOPTAAcOyXn8Fqvxz6+
         ISpFkJxLz5zYNs1+n6uQmPdYkF8NX4ilxEoyILSYMTBCgLa2wlTgdquO3QW/dmwtyMBt
         F6QBhj4MFNoAtQp3X2ZmNaHWJz9P8yN9NY3Cleu/L8jXGxkSAavgNzM8QJfuHg4TsyGg
         GetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678265086;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8X8oossssHZ/mYv0HHxeiQFRMY1H8SzjxfV4O0bYpxc=;
        b=j/lU//FAEgHeQVuwieft0DC7li1JTgP/G7cbpcrnsY9TmhvvLV8Xa7kBnMJ58U9bzi
         U4rUybmFOaKt3ctqQuKMynNALQkvur8R5KOmbUEknjWO1azoKtCGHVibsVM6Y/wuL/tl
         ytl1arLuY6Cv+2oKEJp/OQooN1xYznfFaMebqM06HP0Qpsv+Io1CK4IrQ3wU/dmuFMY3
         ZjPFmwmS4tYP+ODEA8oaChNIDKhH4JBC0C+mkE0IQ5RRZflnknYjyU0imz7S1gX+EJ8e
         3MqX1agz/AAffDQ3JsnycppQgCfHps9lKxWBFYU//qYl4brY0j21KxHcKv2hiH0sApmH
         k8aA==
X-Gm-Message-State: AO0yUKXZyftP6BAfQLd1mesGt3qjzgz0GCS9btuD3IAhbUloIkEP/Zlj
        ZBhdbRtidcfD628qX2oE+XnV7Q==
X-Google-Smtp-Source: AK7set8/wsFI8ZE50pH5OXcMjKAp1LL2QuSi7azOjwKIJIm0TYE9nRCHhZVDF5Boa+jt+w5u3dpdIA==
X-Received: by 2002:a17:906:948f:b0:8f6:c7cc:92ad with SMTP id t15-20020a170906948f00b008f6c7cc92admr19206592ejx.43.1678265086658;
        Wed, 08 Mar 2023 00:44:46 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:bba:fbfa:8aec:a133? ([2a02:810d:15c0:828:bba:fbfa:8aec:a133])
        by smtp.gmail.com with ESMTPSA id h9-20020a1709060f4900b008d2683e24c4sm7237416ejj.69.2023.03.08.00.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 00:44:46 -0800 (PST)
Message-ID: <d4405379-04dd-1bdb-b1a9-56a4621727d1@linaro.org>
Date:   Wed, 8 Mar 2023 09:44:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 7/8] ARM: dts: imx6ull: Add chargebyte Tarragon support
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, Li Yang <leoyang.li@nxp.com>,
        Denis Ciocca <denis.ciocca@st.com>, soc@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@chargebyte.com>
References: <20230306172249.74003-1-stefan.wahren@i2se.com>
 <20230306172249.74003-8-stefan.wahren@i2se.com>
 <d77c2938-bcef-4586-77b5-1cb93b113eb5@linaro.org>
 <a2a39419-86e9-2dff-644a-391248b51a0e@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a2a39419-86e9-2dff-644a-391248b51a0e@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 18:25, Stefan Wahren wrote:
> Hi Krzysztof,
> 

>      From schema: 
> /home/stefanw/mainline/Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> arch/arm/boot/dts/imx6ull-tarragon-master.dtb: 
> /soc/bus@2200000/iomuxc-snvs@2290000: failed to match any schema with 
> compatible: ['fsl,imx6ull-iomuxc-snvs']
> arch/arm/boot/dts/imx6ull-tarragon-master.dtb: /pwm-fan: failed to match 
> any schema with compatible: ['pwm-fan']
> 
> Can you please point me, what is wrong or did you refer just to the 
> deprecated "label" property which doesn't throw a warning in my case?
> 
> Did i missed a parameter?

No, you are right, this will pass the tests. I was pretty sure the regex
for leds will fail here but it turns out it is very flexible and led can
appear anywhere. Anyway the doc states that first form is preferred,
(because it is preferred for all other cases) so: led-1, led-2, led-3



Best regards,
Krzysztof

