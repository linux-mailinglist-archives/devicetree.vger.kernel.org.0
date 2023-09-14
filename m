Return-Path: <devicetree+bounces-124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1A079FD26
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 364F7B20930
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EED76FB9;
	Thu, 14 Sep 2023 07:19:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F70B6135
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 07:19:34 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E2CBCF3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 00:19:34 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-317c3ac7339so523814f8f.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 00:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694675972; x=1695280772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EuhVNGrFW68jxe2JJJtLZHWfPCfJOHNfdRCfgAWkxb8=;
        b=v5wSoZSu1jJd8OnF4/bmqv7oaCKoSLtlHLYvOFmwd8AL7+aiwlmtL/2xBSfr+GnFTc
         5Tz80xFJJtUO7PZSoFDzqaozXWyl4drdG+zhPVxtF1+J2tIX3SxtzuyRHtoQQtnsZwpa
         XFy7b+Poo9CO/eK7RQIRfirKRDgiC6RoBdlOjYFmYDNku1gE1JHV1fFCeQZPsLjDAIW2
         06IU04I1KaSv6HUU5PVjwhBmWGzsTwq5LmcXtxsmXOod3qOLxbM9Y82Aiv9j5N8ttDW2
         GcoLUsvhV70QofjI8j8WBctBnPpC5q72MimW9774QsLotPdKB5lfZ3sH5Ef909OYGQqs
         RMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694675972; x=1695280772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EuhVNGrFW68jxe2JJJtLZHWfPCfJOHNfdRCfgAWkxb8=;
        b=jyEJdVml3XE3zEZkNBV+Kx9jf79VhWBH09q9E0+nQb8LoYO2yyBF3wlEbFhf+HvnD9
         r4g9aexIUch9V31kjmzR+pdhlhidr7fcUlNEZSPEU8Hah2RmDdrMEoRsqcHC1taNGTJ8
         W5NcJ6uYZGaQqknttSxk8fswvnrKXgi3WaT09D3p06s0N0hSrwhY/YIlVUUCrMl+TCtt
         RCBmYnCZvXgeBB0Smmlt7sIbqSwtzqBSMCtRla+voEjqcYnWVNdd+xN9YLDgGTXm31zm
         hunw/4SW3riqJ7gQlYoqcNNgiMd8SsU1A6n+J4C1gFm1x9aJO/Dj7LzdKNFxngoRHu+b
         TbaQ==
X-Gm-Message-State: AOJu0Yy1wCCh9toa+RJW4Y9Z+9BBhHEYTTw5c7sIyZWVrjHb8Hx3JPfR
	uHkOAkgCxElgznD+SRKwRbnFyA==
X-Google-Smtp-Source: AGHT+IH3nxwuXTTFge+SiA2fbG0x1vjEZPiN16+NTWzo1snCwvJ/WSzxrpwYFfBLDjDyKeinWZOfNA==
X-Received: by 2002:a5d:4944:0:b0:31a:d6cb:7f9d with SMTP id r4-20020a5d4944000000b0031ad6cb7f9dmr4216926wrs.24.1694675972548;
        Thu, 14 Sep 2023 00:19:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d484b000000b00317ddccb0d1sm935246wrs.24.2023.09.14.00.19.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 00:19:32 -0700 (PDT)
Message-ID: <ff4f2b93-7e22-8b15-aaad-b7d6f8b5517d@linaro.org>
Date: Thu, 14 Sep 2023 09:19:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add compatibles for Amlogic T7
 SoCs
Content-Language: en-US
To: Huqiang Qin <huqiang.qin@amlogic.com>, linus.walleij@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230914054525.1180595-1-huqiang.qin@amlogic.com>
 <20230914054525.1180595-2-huqiang.qin@amlogic.com>
 <45637012-0972-fc7b-1276-163da363b962@linaro.org>
 <cde944c4-acfe-b3fb-32b8-072740475e35@amlogic.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cde944c4-acfe-b3fb-32b8-072740475e35@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 09:00, Huqiang Qin wrote:
> Hi Krzysztof,
> 
> On 2023/9/14 14:16, Krzysztof Kozlowski wrote:
> ...
>>> diff --git a/include/dt-bindings/gpio/amlogic-t7-gpio.h b/include/dt-bindings/gpio/amlogic-t7-gpio.h
>>> new file mode 100644
>>> index 000000000000..2bab9a99501a
>>> --- /dev/null
>>> +++ b/include/dt-bindings/gpio/amlogic-t7-gpio.h
>>
>> Use compatible syntax.
> 
> The amlogic-t7-gpio.h is not a file in the dt-bindings/pinctrl/ directory.
> Does it also need to be named according to the compatible name of pinctrl?

The convention, which we introduced since ~1-2 years, is to use the
device compatible or binding filename as the headers filename. Now,
where you put what does not affect it.



Best regards,
Krzysztof


