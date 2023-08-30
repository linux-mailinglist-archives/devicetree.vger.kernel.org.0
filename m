Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F63E78DA31
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:36:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236305AbjH3Sfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242252AbjH3Hh1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 03:37:27 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5032CCB
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 00:37:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso560197266b.2
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 00:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693381043; x=1693985843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dI4A/LJ5CPUPqgrmlxjkYM3azOWl8VDK3Ynlh4qOx60=;
        b=zWlJtl2eoHaeWUqGVtLTNDdXmKEun9MyyiX3muxfy+GqxAPqeEly7lLIR2sP14CVze
         Un3c7q0ST07sL9rS3F3NI5ekPOl/zxX89q9cHnTmSGWBulotvZnB9VP2o45Qm82HA2n+
         NI9y4dxDvCSgzgJ8PdwoDVTrXRQZ4hOzQH1obH+pUcdBlpd0W6WcKUZj802wB/M/xcs5
         Vl0kuZASxuuIokyyjGHirNovptk0wNT9h0CDe27ggC21hq7iTwY0K1iZChVdctEisLYT
         IWya56pNiqQu+Slh4IFvYMkX5BpPRlgFaQuS7+7DHeY4RWWMcl9s5b+IiJAR8bKWdPr6
         SANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693381043; x=1693985843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dI4A/LJ5CPUPqgrmlxjkYM3azOWl8VDK3Ynlh4qOx60=;
        b=dxK3Edi7p8qR9Bif3o5JE3Wvk0gY1qdj809tbB9Itv4l6iY7kRh9v85R2PaVwIrTVv
         wsDLQ2PKflQGCEnzEjWUNrBjz9oio9N/oOaWIDAUlIzafcqSWawTllDz31wge1SnTvbz
         9R83GhTDrArSSX5Af853ledNgQnlxVvbIoIvg+ydAgnv4lamPN8BL5FOK7WG8r5Z7eAg
         nAY+eOjFZHKq4busYigm1Mb68rPLTLOmjleFlfsHCamRODHb80eSF4uORmLPysH90+4R
         0dp22elgni8jSS7DZ0KCQHoTcEOpAcaqdl5ER6TiIaH8p073LnYQInAt1Waj07vUazhx
         A3sw==
X-Gm-Message-State: AOJu0YzyMoIeaMdVWK20VrnN1uBe2j+NvdkG0m/PXQZw4hlCD7gRaPEw
        Y4vXQz1Hryk+LjUzAD/x3s362A==
X-Google-Smtp-Source: AGHT+IHHseqSIYDyYCCBn/VAKv4UCnFrrchbQ1N+qxFAnLcwPR12xvv0D7ujmXk9q665pvyjenLi0Q==
X-Received: by 2002:a17:907:2bf2:b0:9a2:eb6e:2cf3 with SMTP id gv50-20020a1709072bf200b009a2eb6e2cf3mr1093908ejc.0.1693381043227;
        Wed, 30 Aug 2023 00:37:23 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id b8-20020a170906194800b009920e9a3a73sm6878604eje.115.2023.08.30.00.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 00:37:22 -0700 (PDT)
Message-ID: <3baa61b5-e915-88a5-8e8d-717072ce6f2d@linaro.org>
Date:   Wed, 30 Aug 2023 09:37:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 1/3] dt-bindings: phy: Add i.MX8QM PCIe PHY binding
Content-Language: en-US
To:     Hongxing Zhu <hongxing.zhu@nxp.com>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "kishon@kernel.org" <kishon@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>,
        "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>
Cc:     "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>
References: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
 <1693291534-32092-2-git-send-email-hongxing.zhu@nxp.com>
 <7c083976-81cc-96e3-af76-43944ce571ac@linaro.org>
 <AS8PR04MB8676B511250439EF71D0E3488CE6A@AS8PR04MB8676.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AS8PR04MB8676B511250439EF71D0E3488CE6A@AS8PR04MB8676.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 09:31, Hongxing Zhu wrote:
>>
>>> +    description: |
>>> +      Specifies the different usecases supported by the HSIO(High
>>> + Speed IO)
>>
>> I don't know what are the usecases...
> Sorry, miss one space between "use" and "cases".

I did not mean language typo, but in general - what are you describing here?

> i.MX8QM HSIO module can be controlled by DSC/software in these three
>  different modes. So I add this property (fsl,hsio-cfg) here to specify the
>  work mode of HSIO.

So modes of work? Or different device attached to the PHY? Or what?
There is no use case in hardware and you should describe hardware.

>>
>>> +      module. PCIEAX2SATA means two lanes PCIea and a single lane SATA.
>>> +      PCIEAX1PCIEBX1SATA represents a single lane PCIea, a single lane
>>> +      PCIeb and a single lane SATA. PCIEAX2PCIEBX1 on behalf of a two
>>> +      lanes PCIea, a single lane PCIeb.
>>> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants to
>>> +      be used (optional).
>>
>> None of all this helped me to understand what part of hardware this is responsible
>> for. It seems you just want to program a register, but instead you should use one
>> of existing properties like phy-modes etc.
> It's my bad. Didn't describe the HW clearly above.
> The fsl,hsio-cfg is used to specify the work mode of HSIO subsystem, not only
>  the PHY mode. Since the PHYs are contained in the HSIO subsystem, can't be
> used by PCIe or SATA controller freely. The usage of these PHYs are limited
>  by the HSIO work modes. BTW, up to now, I still don't have a good idea to
>  describe the HSIO by phy-modes property although I prefer this way in my mind.

What is HSIO and why does it appear in context of this phy?
Specifically, if this is separate subsystem, why do you put HSIO
property in the phy? No, that does not seem right.

>>
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    enum: [ 1, 2, 3 ]
>>> +
>>> +  ctrl-csr:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      phandle to the ctrl-csr region containing the HSIO control and
>>> +      status registers for PCIe or SATA controller (optional).
>>
>> Please try some internal review before posting to patches. Community is not cheap
>> reviewers taking this duty from NXP. I am pretty sure NXP can afford someone
>> looking at the code.
>>
>> This misses vendor prefix, as explained many times for every syscon phandle. Also
>> optional is redundant.
> Sorry about the missing prefix. The prefix would be added later.
> And the optional would be removed. Thanks.
>>
>> But anyway status of PCIe or SATA controller is not a property of the phy, so it
>> looks to me you stuff here some properties belonging to some other missing
>> devices.
> I see. You're right the status of PCIe or SATA controller is not a property
>  of the PHY. Some bits contained in the ctrl-csr region, are used to kick
> off resets through the internal glue logic. So, this property is added
>  for phy driver.

Sorry, I am really fed up with the syscons. See here:
https://lore.kernel.org/all/20230830031846.127957-2-william.qiu@starfivetech.com/

I cannot trust you on this anymore. Describe hardware properly. If you
have resets, you have reset controller. If you have clocks, then clock
controller.

>>
>>> +
>>> +  misc-csr:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      phandle to the misc-csr region containing the HSIO control and
>>> +      status registers for misc (optional).
>>
>> Same problems.
>>
> "fsl,hsio-" prefix would be added later.


If you have some HSIO block, why do you reference it via phandle and why
do you put its properties (mode) here? What is the relation between HSIO
and this? So many questions... from your commit description all this
looks entirely wrong. You messed description of HSIO and now try to
bandage it with such properties. No.

NAK.



Best regards,
Krzysztof

