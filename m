Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA5346532A4
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 15:48:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiLUOsA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 09:48:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229844AbiLUOsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 09:48:00 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0756AA45E
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 06:47:56 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2BLElmVs003165;
        Wed, 21 Dec 2022 08:47:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1671634068;
        bh=0SV7rckhRHv0WBtu/IDbv415PqTSdn2P6qJM5WCHvX4=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=Yskd+gfJAp0pGHq+Al9avZRoaQWfPpyr910dBCF8koSfLWFflrRgY2PQzmoxxcZzA
         GvHhYt3O2AlWwIg8JjpLwiyak7RK/HOBk7R9BLThScufVCLCPzb5jeD7sAXAdnC254
         Zdwm9RpID7OzCiay5QHBe+3BL61MhsdlJkDUPewg=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2BLElmge015618
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 21 Dec 2022 08:47:48 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Wed, 21
 Dec 2022 08:47:48 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Wed, 21 Dec 2022 08:47:48 -0600
Received: from [172.24.145.60] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2BLElj2C067434;
        Wed, 21 Dec 2022 08:47:46 -0600
Message-ID: <a45e09ad-41e3-7e09-bab1-5f8c42417b9a@ti.com>
Date:   Wed, 21 Dec 2022 20:17:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v3] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>
References: <20221220123951.29959-1-j-luthra@ti.com>
 <aa8a2251-b7e7-9c03-fcd4-9875302981e4@linaro.org>
From:   Jai Luthra <j-luthra@ti.com>
In-Reply-To: <aa8a2251-b7e7-9c03-fcd4-9875302981e4@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/22 14:03, Krzysztof Kozlowski wrote:
> On 20/12/2022 13:39, Jai Luthra wrote:
>> Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.
>>
>> The following properties are still found in some old dts files, but will
>> be ignored by the driver:
>> - adc-settle-ms
>> - assigned-clock-paranets, assigned-clock-rates, assigned-clocks
>> - port
>>
>> Signed-off-by: Jai Luthra <j-luthra@ti.com>
>> ---
> 
> Thank you for your patch. There is something to discuss/improve.
> 
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/gpio/gpio.h>
>> +    i2c {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +
>> +      tlv320aic3x_i2c: tlv320aic3x@1b {
> 
> Node names should be generic.
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 

Thanks Krzysztof, will fix in v4.

>> +        compatible = "ti,tlv320aic3x";
>> +        reg = <0x1b>;
>> +
>> +        reset-gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
>> +
>> +        AVDD-supply = <&regulator>;
>> +        IOVDD-supply = <&regulator>;
>> +        DRVDD-supply = <&regulator>;
>> +        DVDD-supply = <&regulator>;
>> +      };
>> +    };
>> +
>> +  - |
>> +    #include <dt-bindings/gpio/gpio.h>
>> +    spi {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +
>> +      tlv320aic3x_spi: codec@0 {
>> +        compatible = "ti,tlv320aic3x";
>> +        reg = <0>; /* CS number */
>> +        #sound-dai-cells = <0>;
>> +
>> +        AVDD-supply = <&regulator>;
>> +        IOVDD-supply = <&regulator>;
>> +        DRVDD-supply = <&regulator>;
>> +        DVDD-supply = <&regulator>;
>> +        ai3x-ocmv = <0>;
>> +      };
>> +    };
>> +
>> +...
> 
> Best regards,
> Krzysztof
> 
