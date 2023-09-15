Return-Path: <devicetree+bounces-484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C29857A1BC5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:09:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1D311C2159A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F420DF67;
	Fri, 15 Sep 2023 10:09:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53FADDD3
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:09:10 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 314BD35AD
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:07:18 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99357737980so256084466b.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694772436; x=1695377236; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tIOsoLWZh5rJG/1YfIOAx2GIO6JUFBkc7NqnYEd6i84=;
        b=GoX7555YFEk+k3lGjsD4PFykqWC8MhjqbLtrmX8p+6zQQXOlDJNfYBY0Szu2J/pfs4
         1uxBvjGnIlY4jEs6S6OtTFKxojcG1zRfOJQZT6mrxaglp7GtQLCOxXfivN/fKX4QPML8
         pbCJwRwdHfhA5YMdm65Zaype/frdkoh15nrUDkZ6+/gxMnjtUGwqxa/yaS4ir0P0vr5F
         qfrZ+idSVo8t5sfK6YV05a/q5i2nbmAVnhTTrr5ABEMgtzR0Dinwa9b+CeVE1l5bX3ZK
         JagcDJw16vCFOaMte32wneHCLXh3I8iBX0yJYevEQZJgOPg7deDwUgNLs0ssbCPNGtQR
         H7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694772436; x=1695377236;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIOsoLWZh5rJG/1YfIOAx2GIO6JUFBkc7NqnYEd6i84=;
        b=X5WGLRg5TA74Di/rMvUEgtnhkCdycIglalsJ9WvCXhRuPZo5YOZrhEkX+JZavFSgR4
         zgHcOKOfaxfex+j9J7iD/Za+w7jHVG3cnL04t1cs58zv5PCpEYxfviglhRG2bN4PU17v
         vWyhEm3/p0Wl/XNT3ZUNteuNeex/qbzZQFxCG6+oX+mhgrpJuLZ9sIbAODaZT2zRaIWn
         oHGF0ZHv5FKD7fG/kkyHr9YQ4pvwkGvdj/gyZ/wNIwanLMXfXmyrYk8dEgcTgz+EkWRa
         OItQ8ZFzhjttpsORjkVIkXX3pIV4qAyMt/lL52lAHDTzHXJxBIBCXklrGIA79kYVnnGS
         Rq0Q==
X-Gm-Message-State: AOJu0Yz2Lr/8QmuIjoxyGZQ0varZ86P4ow8o3B0tqLVaN/afT1T3pKHA
	g5qTpvYFbaC39vrT4COKrezsNw==
X-Google-Smtp-Source: AGHT+IHVDXtlJMX8pYFZuW54VGTOuf0bTZVgZR6yMV40BZzJvKHWbNORMLTbJ3Zb0tHHlGkaQajY2A==
X-Received: by 2002:a17:907:2cc9:b0:9aa:1e43:d0b9 with SMTP id hg9-20020a1709072cc900b009aa1e43d0b9mr886782ejc.5.1694772436590;
        Fri, 15 Sep 2023 03:07:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id ay21-20020a170906d29500b00992e14af9b9sm2192760ejb.134.2023.09.15.03.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 03:07:16 -0700 (PDT)
Message-ID: <862905cc-48c3-2dc9-6032-6ee189a629e6@linaro.org>
Date: Fri, 15 Sep 2023 12:07:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 10/12] serial: 8250_dw: Add Sophgo SG2042 support
Content-Language: en-US
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com
References: <20230915072558.118325-1-wangchen20@iscas.ac.cn>
 <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org>
 <CAJM55Z-GMm5Hmk7-QWt8Prvp7qyFzOrQVjOjB7jfoX-oiT_C1A@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAJM55Z-GMm5Hmk7-QWt8Prvp7qyFzOrQVjOjB7jfoX-oiT_C1A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 12:02, Emil Renner Berthing wrote:
> Krzysztof Kozlowski wrote:
>> On 15/09/2023 09:25, Wang Chen wrote:
>>> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>>>
>>> Add quirk to skip setting the input clock rate for the uarts on the
>>> Sophgo SG2042 SoC similar to the StarFive JH7100.
>>>
>>> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>>
>> Missing SoB.
>>
>>> ---
>>>  drivers/tty/serial/8250/8250_dw.c | 5 +++--
>>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
>>> index f4cafca1a7da..6c344877a07f 100644
>>> --- a/drivers/tty/serial/8250/8250_dw.c
>>> +++ b/drivers/tty/serial/8250/8250_dw.c
>>> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
>>>  	.quirks = DW_UART_QUIRK_IS_DMA_FC,
>>>  };
>>>
>>> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
>>> +static const struct dw8250_platform_data dw8250_skip_set_rate_data = {
>>
>> Why? What is wrong with old name?
>>
>>>  	.usr_reg = DW_UART_USR,
>>>  	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
>>>  };
>>> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
>>>  	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
>>>  	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
>>>  	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
>>> -	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
>>> +	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
>>> +	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
>>
>> So devices are fully compatible? Then use compatibility and drop this
>> patch entirely.
> 
> I'm fine with this, but these are two different companies and SoCs that just
> happens to have both implemented the Designware UART with an inflexible input
> clock. So if fx. a real quirk is found on the JH7110 then we'd need to either
> change the compatible on an unrelated SoC or change compatible on the JH7110 to

Wait, why? The compatible is still there, so you just add here proper
entry, if ever needed.

> something like "starfive,jh7100-uart-with-quirk" and "starfive,jh7100-uart" will
> forever be a quirky way to spell "dw8250 with inflexible input clock".
> Is that how device trees are supposed to work?

I don't get this part. But anyway if the blocks are really designed or
done independently and there is no shared part, except the DWC block,
then indeed the compatibility might be just a coincidence...



Best regards,
Krzysztof


