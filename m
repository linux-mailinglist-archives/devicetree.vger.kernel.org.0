Return-Path: <devicetree+bounces-1076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9230C7A4932
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:07:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E872281EF2
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36CF1CAAA;
	Mon, 18 Sep 2023 12:07:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F171CA88
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:07:01 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD84C196
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:06:25 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9936b3d0286so592455866b.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695038784; x=1695643584; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aumliCM8GUMBUS2SEdLGQ85Th+kHvEeQ+AEeZe5dib8=;
        b=N20TjYg6asMzJuXiW6gamB2XeFvdb38cr8PLB4IXFLK9kTyL4QdPwLoACockk3UdIE
         N9JTtJPAhD6TGRDN31oUFh6QcE12Us7ieciLtBJzElTOQQTDPob177iH4wg0vj170fg8
         jCHxUvF9BF/HIFLYFXNJgSkosoL0EB/U8I9BPJjyCRtP7X1kn8iw5Jlk6adjgJCgUysT
         J/3Zqg5dYfeZ7cgevvkRwgNV0wHhheIAnqHjATCslaj9ILZ9YhAdJha/OO6nN29LOAQc
         PjldruwmgbGSI+J/MmD9qPyC63wqPWI9PBDQfJvUlni9G8iSssYEIEF9pyg0WcPe2FPq
         0vKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695038784; x=1695643584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aumliCM8GUMBUS2SEdLGQ85Th+kHvEeQ+AEeZe5dib8=;
        b=aRlH11r7hNnK+4FayhtyUkhKbuBETOVunVDwtDidHIj4ZFj7GBvGc8Ve+oSY0dPf9v
         RywbYdVop7EHhgNeEiAt7yMBwJpVGKDWmNdi3auGLTYlIHfpkCuavSpQvVz4Lkc6y1i/
         kOfc9F48y1SYPbc5Yw/dLC7KWYvBBUaPNJwEtMwq9lsV7Wbr2NEHfbpiC2fc8mT3aBVR
         T9P1Ur/VbRrJVKGllM1aKGhAr7VeKDBvMxeaG0M1aICJ+Ub8VGKv0Qy5u3M5+ZcP2t5J
         87jtmCdXkJhZOcCSzWfiTc0oouF2wbPsLliLzzXR4DAzldUomKhYRwHgA1CfP9T9aSEW
         c/MA==
X-Gm-Message-State: AOJu0YwaimWVDj84YQEUNuEkyng9Hg0SdscOtdby38YYpYzR/HeGB9Z7
	SFMYCq0WR+CuaiAIf4tvjVcFjA==
X-Google-Smtp-Source: AGHT+IF5uZI+RrO4UyOx4conpZwE0U5Px/QCIg8MSJ51Cyg3pLAceDda5BuKxe/6jm0PrW80qcEXBg==
X-Received: by 2002:a17:906:2255:b0:9a5:d972:af43 with SMTP id 21-20020a170906225500b009a5d972af43mr7668013ejr.65.1695038784221;
        Mon, 18 Sep 2023 05:06:24 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id sb4-20020a170906edc400b00992b8d56f3asm6357088ejb.105.2023.09.18.05.06.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:06:23 -0700 (PDT)
Message-ID: <837865e5-739e-72c2-140f-2299e9ae03ae@linaro.org>
Date: Mon, 18 Sep 2023 14:06:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RFC PATCH 8/8] dt-bindings: display: panel: add Fascontek
 FS035VG158 panel
Content-Language: en-US
To: John Watts <contact@jookia.org>
Cc: dri-devel@lists.freedesktop.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230911090206.3121440-1-contact@jookia.org>
 <20230911090206.3121440-9-contact@jookia.org>
 <e22e61e7-02b1-8127-888d-e470838f4a18@linaro.org> <ZQdgeA5tQA4xK5qL@titan>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZQdgeA5tQA4xK5qL@titan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 17/09/2023 22:24, John Watts wrote:
> On Mon, Sep 11, 2023 at 11:41:12AM +0200, Krzysztof Kozlowski wrote:
>> Missing reg. Probably also port.
> 
> Hello again,
> 
> I've been working on v2 of this series and done some initial cleanup.
> 
> Right now it looks a bit like this:
> 
>> allOf:
>>   - $ref: panel-common.yaml#
>>   - $ref: /schemas/spi/spi-peripheral-props.yaml#
>>
>> properties:
>>   compatible:
>>     const: fascontek,fs035vg158
>>
>>   spi-3wire: true
>>
>> required:
>>   - compatible
>>   - reg
>>   - port
>>   - power-supply
>>   - reset-gpios
> 
> Does this seem correct?
> - reg is required by spi-controller
> - port is listed in panel-common
> - power-supply is listed in panel-common
> 
> I'm guessing that the required section just lists the minimal
> properties needed for this specific device tree yaml?
> There's nothing implied by allOf?

Ah, then it is fine.

Best regards,
Krzysztof


