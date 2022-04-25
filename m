Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038E750E8FD
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 21:02:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234973AbiDYTFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 15:05:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbiDYTFJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 15:05:09 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D3112C42A
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 12:02:04 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id bv19so31467425ejb.6
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 12:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=86eu8C1NuZ5ZbLAvnLJZ3ViXQPmuM5BFpFlvB8h+gSc=;
        b=fFPW7DvdkCdpHTS7fUtcq2xYBdh5xHvCTJyzgV5cpmOsdyVG3UhJWBUEiUiuUkwans
         032ZbK5lINN648OsEjl7qu1JEM3qmXUVKL6zI60Y/bI7IkRGQlg4m+Nv1/J7nF9v20Hd
         JKLcqK3RrHYdu2152oBFgGW5CvtKBPoiRTwCFYfqOY/OW3GHEXXGwYE/45ZYZlVs8EL1
         RTs0LTch9MlETt2HkhDxPCwYOxSKzE0ZaIngdT+iWMtZ6O1NwM/iPxlDzqmNrJO4F3cB
         wL7ieuQHhmLlLbljEWqeMLf0xmQfHuSlzKSAlAqlaEjn77zYJrgaTd640QgtxsEAx6Um
         qqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=86eu8C1NuZ5ZbLAvnLJZ3ViXQPmuM5BFpFlvB8h+gSc=;
        b=4a3uc579EgcA3tBM3fXLOrOHYNBy2T1SxTbzJx1tqy318c/LeNPkWFhVW1sYEx3mrm
         kXnyTmw0xL80m3dyccJ+4LSPgmgj0Tj9ATDUV1P251+QOQSCfuv0YAgqKjPxVgwkWRvD
         8mJmpMot1WN4w20U4+HANb/luAuoDF7dWVLFYyUP59JN3V+WljVtaSr7laVjDFiArVQU
         R3V+2pgsAWKnBlgBf2DRHTsMG8DGXf6XMqXzp7E94y7lcdKRUKa9YA74ziUKS+nQ6yAd
         EVRdUWrE0hhro84WQ/idoajGf0nfPSFj0s4La7kzPkDOrSLfX4y0lu4/1LCDxNKxet5C
         9xuw==
X-Gm-Message-State: AOAM530mXbJmyl4FXmR/muiBjRV+dd7wrU1OUQ3rt9j3tLvl6D1vhWbS
        DYrgav04yxqBEfx74W6bQeKEiw==
X-Google-Smtp-Source: ABdhPJxaB0QLXvOWSeekN6l2rUaWgWsrvGkar5NFKOLM83z0Iv+PAScj8UN8Il0D+RpYARK6sOoasg==
X-Received: by 2002:a17:906:7304:b0:6da:9243:865 with SMTP id di4-20020a170906730400b006da92430865mr17450613ejc.665.1650913322693;
        Mon, 25 Apr 2022 12:02:02 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id dm11-20020a170907948b00b006cf488e72e3sm3909403ejc.25.2022.04.25.12.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 12:02:02 -0700 (PDT)
Message-ID: <c50819cb-8234-670f-c7c0-0507af2f96df@linaro.org>
Date:   Mon, 25 Apr 2022 21:02:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-am625-sk: Enable on board
 peripherals
Content-Language: en-US
To:     Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Aswath Govindraju <a-govindraju@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
References: <20220422065002.387753-1-vigneshr@ti.com>
 <20220422065002.387753-3-vigneshr@ti.com>
 <c40a2dad-c7aa-f778-f1ac-971185691950@linaro.org>
 <8517d504-af9c-53f5-a51b-3bcdbb86d09f@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8517d504-af9c-53f5-a51b-3bcdbb86d09f@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 11:22, Vignesh Raghavendra wrote:
>>> +		/* TPS22918DBVR */
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "vdd_mmc1";
>>> +		regulator-min-microvolt = <3300000>;
>>> +		regulator-max-microvolt = <3300000>;
>>> +		regulator-boot-on;
>>> +		enable-active-high;
>>> +		vin-supply = <&vcc_3v3_sys>;
>>> +		gpio = <&exp1 3 GPIO_ACTIVE_HIGH>;
>>> +	};
>>> +
>>> +	vdd_sd_dv: gpio-regulator-TLV71033 {
>>
>> The same + do not mix cases, so regulator-1 or regulator-tlv71033
> 
> I have fixed this in v3. But had one question though:
> 
> Per DT spec, 2.2.3 Path Names seems to indicate node-name-N when N is
> 1,2,3.. So, is it valid to have regulator-tlv71033 as node-name -> does
> not strictly seem to fit into node-name-N format ?

No, "regulator-tlv71033" does not match DT spec. Indeed better to have
some generic suffix, e.g. regulator-vbatt, but strictly speaking DT spec
asks for just "regulator-[0-9]".

However several people prefer such descriptive suffix instead of
"regulator-[0-9]" because it makes their life easier when extending DTSI
(when both DTSI and DTS provide some of such regulators). Therefore I
don't think it's that important to keep with the spec. Rob for example
does not complain here, so probably I am stricter than him.

In any case it would be good to have only suffix or only prefix, e.g.
"regulator-foo-bar" or "foo-bar-regulator", so DT schema can match
against it. Several other types of devices already require such naming.

Best regards,
Krzysztof
