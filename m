Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B96BB5A5FC2
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 11:48:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbiH3JsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 05:48:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiH3JsG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 05:48:06 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD75C4A83F
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:48:04 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id by6so10741864ljb.11
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=1B8agEvOhcrbh7osNWZ4zacBSoqzKCRV4W/UdfB2Q0k=;
        b=y4kyND4MXnnB0qr7XrN0sOzUe3DRMFz5iSNi01kAX8eTChhO7dm8KjP6hYa/aDDSHG
         xyWMAnUAx0eQejmcLRxCzOQHGNXfRgShtmX5d1DTlYbmpDDiUp21q6GaaX87S0L+vcp2
         z84wRkPbATrjT91LtFZmk7SyyF4E20Vd+SAkswPEZvkmO3W9kBaEKG93ekjxwsydEGdE
         7f53yy9cfziruNxjuM0hHzXGedE1SGTlbMKnvn9aZr3AF5VadfmEoeAY58I6S4Ci94ZG
         B0ng1RFchW6v3ZfgJgfmyNyAkw4/tbv5ozbbuIgASMK66+jK9IjiqOotR3ur2biMp5mz
         TAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=1B8agEvOhcrbh7osNWZ4zacBSoqzKCRV4W/UdfB2Q0k=;
        b=dghN9aci6iTWIBd5yA/cHi9ZigQc5/539iBTSl4B71Qpi4AY1CtqRYjre7Hxa+pkyT
         2khrgJyxO58CDJ410eQmAPbBPRYZGFKYX44Z/Xrk9pGKRovASVT+snVQI4ZUsJtIrDth
         l0avtQc28FujWgd0cKf1/kdOpD8VsULNNx+qx9cKQsIy4gT4heOTUTAk1ExG9F54mlAq
         m1KMDbe8ddPKFKPgR8UwsiVmqqd+305zWASIEw6f1ngKm3d9Vzb9GxgzulOO4jbtmO86
         PQxt6TxZFZzYtWIJMD829NZZTNBaHA+jLyo/Csq5Md0DAwShsvO/vAISkqJJf7+SAIrV
         GUEQ==
X-Gm-Message-State: ACgBeo0cYrI3kKYoH7Xbc7DjcXTfVDXi8HzUGSYam8KBQ96Y3V1VdaI5
        Yl97Sjva8oUqDLT2fOOI1yi2Ug==
X-Google-Smtp-Source: AA6agR6Dq6C7MSOxzfke89FEuTHtENsfk93cm3duATGZNLuyIPGiBBJlh74yTA+qfNkzRcW+RMzytg==
X-Received: by 2002:a2e:9e50:0:b0:261:e3fd:cdc5 with SMTP id g16-20020a2e9e50000000b00261e3fdcdc5mr6731602ljk.56.1661852883220;
        Tue, 30 Aug 2022 02:48:03 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id by6-20020a05651c1a0600b0026181f65600sm1712560ljb.136.2022.08.30.02.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:48:02 -0700 (PDT)
Message-ID: <a04c5c6b-6195-91c6-dd83-4ca04767a441@linaro.org>
Date:   Tue, 30 Aug 2022 12:48:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: mtd: spi-nor: Add reset-gpios property
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>
Cc:     Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-kernel@vger.kernel.org, saikrishna12468@gmail.com,
        git@amd.com
References: <20220829090528.21613-1-sai.krishna.potthuri@amd.com>
 <20220829090528.21613-2-sai.krishna.potthuri@amd.com>
 <9a63271b-48c0-1b31-c450-5abc9eedbced@linaro.org>
 <6619ebc290f12fbb7613f32087aa9200@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6619ebc290f12fbb7613f32087aa9200@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 12:36, Michael Walle wrote:
> Am 2022-08-30 11:21, schrieb Krzysztof Kozlowski:
>> On 29/08/2022 12:05, Sai Krishna Potthuri wrote:
>>> SPI-NOR flashes have RESET pin which can be toggled using GPIO
>>> controller, for those platforms reset-gpios property can be used to
>>> reset the flash device.
>>>
>>> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
>>> ---
>>>  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml 
>>> b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>>> index 7149784a36ac..d2fc8e9c787f 100644
>>> --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>>> +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>>> @@ -70,6 +70,12 @@ properties:
>>>        be used on such systems, to denote the absence of a reliable 
>>> reset
>>>        mechanism.
>>>
>>> +  reset-gpios:
>>> +    description:
>>> +      contains a GPIO specifier.
>>
>> Skip this part - obvious.
>>
>>> The reset GPIO is asserted and then deasserted
>>> +      to perform device reset. If "broken-flash-reset" is present 
>>> then having
>>> +      this property does not make any difference.
>>
>> Isn't then broken-flash-reset conflicting with this one (e.g.
>> disallowing it)?
> 
> Sometimes the spi-nor driver needs to switch modes, which are persistent
> until you either switch em back or do a hardware reset (or software
> reset IIRC) of the flash. If broken-flash-reset is set, we try hard
> to leave the flash in the mode which it is normally in after reset or
> don't switch modes at all.
> Of course we cannot make sure, our shutdown gets called in each case,
> thus there is may be warning during startup.
> 
> So, even if you have a reset-gpio it might be broken I guess. Think
> of it being high active, but someone forgot the pull-up. So, if you
> do an unexpected reset, the flash chip might not be reset
> automatically. So yes, I think, even if there is a dedicated reset
> gpio, it could still be messed up. How likely is it? I don't know,
> probably not very.

OK, so let's keep it and allow both.

Best regards,
Krzysztof
