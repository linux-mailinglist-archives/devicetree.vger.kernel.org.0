Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB7136F51EC
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 09:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjECHka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 03:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjECHk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 03:40:29 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697D51731
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 00:40:27 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-956ff2399c9so949661666b.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 00:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683099626; x=1685691626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+B6qBFwYGEdx2I+AJuVx8f7CeJtBz3CE79fX6H+gKfI=;
        b=xShLfHY0es50xrc63DRoABgtmTjJwmiqZjM4+7x7OtkViNpZcTx55XN34AVsNvudlG
         85uyRNZEMXzOXYEvUIGRWfIrNm7E/lJvXjYbiZs0RgY407M6AZOiUe/iXvwYeTUj9dZt
         C8+JfbMBBzPMV+O2avRg1YKOmU0R5WnlZqF1h8zoTXbG/O6DnuwA1Vqu6oYT17aL54z1
         QD+c6MSI4NbStxlhDxssJvOOicMaW0jMSSD2off5ALklBIUMYnwRlr8qOIdu5Se8ZK7p
         qVDdK73lAr3klZ7BiQlfkcIv+yZGk15BLY/+A4ulmB56yFStfVLFUkWO/ojd77aksjTF
         tN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683099626; x=1685691626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+B6qBFwYGEdx2I+AJuVx8f7CeJtBz3CE79fX6H+gKfI=;
        b=VlMbkS95qeLGknC5lCGno/8sWN1ezmcOI7nJbtK5+CyP2ErAHcXf4Wh0A7lv1i2V5v
         JLxhKUbsE/Bl70ls9jHmoDtOBK4Cf4RTGObnSays0GQ2nl9CurgCqtz+as+0NsKreCov
         FOHyLIBCaU+z+grxdM0hBtSvIApFepPWxD8aFVz70d0wwzDXjsdYuaIOeC9mgavaaJv6
         L1RR3/7NL+TZiTqpQ9FskVi2D7kUaOK/JW26XjjblsOLUAqftC7pl/ypv9AqqFJfVBGD
         RZLIFIQ/BBH86LvSBiJF797drtaww9NxIgpv4Lij7at8FgM+ASYQfpyX/w2efOYOjIcZ
         a9lw==
X-Gm-Message-State: AC+VfDwNNBH6AflHg40P+WMBpbSV8VmMiX/y7auewtibapxyO11HwUaK
        WW0qcqto2ppcQPKNZl0AnhVV7ttWX+AixPi8JG+opw==
X-Google-Smtp-Source: ACHHUZ7GYFsin08QNS3ECdYX6FCdM1vCNW99xuijP7899juVk+jO7Vx0Oh3Isj80fqCZbvKbFmhNeQ==
X-Received: by 2002:a17:907:9722:b0:889:5686:486a with SMTP id jg34-20020a170907972200b008895686486amr2268005ejc.30.1683099625870;
        Wed, 03 May 2023 00:40:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id h13-20020a170906718d00b0095386574c81sm17032945ejk.51.2023.05.03.00.40.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 00:40:25 -0700 (PDT)
Message-ID: <89276de5-ded8-2f38-bcea-708fdd35ca6d@linaro.org>
Date:   Wed, 3 May 2023 09:40:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] ARM: zynq: dts: Setting default i2c clock frequency to
 400kHz
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Varalaxmi Bingi <varalaxmi.bingi@amd.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <4dde5d1eb8e4572dae4295a19a4c83002a58e5da.1683035611.git.michal.simek@amd.com>
 <e0b50ae1-b501-cb41-829f-736903e5794f@linaro.org>
 <958f4336-8c38-4cc1-4313-06a54e397d42@amd.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <958f4336-8c38-4cc1-4313-06a54e397d42@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 09:27, Michal Simek wrote:
> 
> 
> On 5/2/23 22:13, Krzysztof Kozlowski wrote:
>> CAUTION: This message has originated from an External Source. Please use proper judgment and caution when opening attachments, clicking links, or responding to this email.
>>
>>
>> On 02/05/2023 15:53, Michal Simek wrote:
>>> From: Varalaxmi Bingi <varalaxmi.bingi@amd.com>
>>>
>>> Setting default i2c clock frequency for Zynq to maximum rate of 400kHz.
>>> Current default value is 100kHz.
>>>
>>> Signed-off-by: Varalaxmi Bingi <varalaxmi.bingi@amd.com>
>>> Signed-off-by: Michal Simek <michal.simek@amd.com>
>>> ---
>>>
>>>   arch/arm/boot/dts/zynq-7000.dtsi | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
>>> index cd9931f6bcbd..a7db3f3009f2 100644
>>> --- a/arch/arm/boot/dts/zynq-7000.dtsi
>>> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
>>> @@ -149,6 +149,7 @@ i2c0: i2c@e0004000 {
>>>                        clocks = <&clkc 38>;
>>>                        interrupt-parent = <&intc>;
>>>                        interrupts = <0 25 4>;
>>> +                     clock-frequency = <400000>;
>>
>> I think this should be rather property of the board, because it depends
>> on I2C devices, right?
> 
> We have 15+ boards with i2c connected and from this count I am aware about only 
> one configuration which is not working on 400k.
> It is a question if make sense to update all boards (except for 1 and not all in 
> kernel yet) to 400k or just say 400k is default and if there is any issue use 
> lower frequency.
> Obviously this patch is setting up 400k as default and let "problematic" boards 
> to setup lower freq.
> The same approach was used for modepin description.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm64/boot/dts/xilinx/zynqmp.dtsi?h=v6.3&id=53ba1b2bdaf7f481fdd878e9c18cd0e54081fac9
> 
> The next point is that 100k is default in Linux but doesn't mean it is default 
> in other projects.
> 
> But if you think that it must be board property I think we should setup 100k as 
> default in this file too to make it clear.

No, if it is conscious choice, it's fine.

Best regards,
Krzysztof

