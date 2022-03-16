Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17694DAC5E
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 09:23:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238004AbiCPIZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 04:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354509AbiCPIZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 04:25:04 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AEDBDF49
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 01:23:49 -0700 (PDT)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 523E63F043
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 08:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647419028;
        bh=e/AyH+eSm9JJq0EMKXs0iqv4SiUNyVLwcorNLctNODk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=eaS5JUAvXWO4siS/hF+lovbPrJvfvYuYS+kxD0Bvz+7v2geOxnTSW9VBA0+S+FUdF
         9oeB6i8Xhn5bFu6er7IrO2yLiXwirBx4mT8eyhGpnwIvzpVRFfOLNtDEXJDAX2opIa
         Zi8oParKqZKuZUNiv85Hcglz2lpP1bUZ91YheyT5ePIeEBHS+XiIuz+MhH/ECtmbW2
         yqhix/f6D8yJhFI0YyOI+KcfEvk0PNJqtBNlCjZsLAaPmdc4aeTElYcon1c75dsdvs
         ildWr0vv1oHcJsDS5CFSVmGctigernhu3HFwyn8Ky7608lt9EDnjc/n1OG2rQfk+Id
         9UraqWTJ7VaOw==
Received: by mail-ed1-f72.google.com with SMTP id b71-20020a509f4d000000b00418d658e9d1so864488edf.19
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 01:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=e/AyH+eSm9JJq0EMKXs0iqv4SiUNyVLwcorNLctNODk=;
        b=tVvIy4JsZys3Y5DW4YBOpFX9KelPmCmIXXhudLG6LJKgRdXf/lxb36TSbYo0HNjYQU
         7bIummrwm3aS6tVYb1ee3ECJu1skXaDqzKjZO7FJOMWNjUIisMfdCjzq6sKELDezs8tj
         cC0YSzsZW6ry6/7hDp7Gj7g6R7eJFEGG974uxyPPsGf6SJpOGCTeA+2eY3RlBTsu6p3x
         v+HIHCFjnVLXkTUdaizB/B5gmnmX/NvQpK2we9kBkDTH/62/2tfdSQ2j1bgNFWh0HnB8
         I8i+MqRPHefR1jb1w2E4oINV/cgzhzjC//e3plPHdOknMQKEK41gX/SipUMwUcGeJGe4
         Etvg==
X-Gm-Message-State: AOAM531I/1lktN3upw90t811W0P0Emj7PFB0/YQqpMkgImSDW1MgrnnL
        Yec56br8eKgNPqjZq6+lgpAbLNYYFKjQG/fI3B8Id0d1e+CUwC0Ujpp6yDkpHPeVRKC/IqRJkwK
        MhzdMxbBes+YuhwVbGPI+yIz6UE1pgJfOeORqkoo=
X-Received: by 2002:a05:6402:221b:b0:418:eb30:47ff with SMTP id cq27-20020a056402221b00b00418eb3047ffmr971814edb.68.1647419028011;
        Wed, 16 Mar 2022 01:23:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXRJ2sxr1qa3Bn1UHN+BhsIianpdP+sELsNQc0NOKzWCLlZEItJaFvmiepEfFL2WU9WcOh2g==
X-Received: by 2002:a05:6402:221b:b0:418:eb30:47ff with SMTP id cq27-20020a056402221b00b00418eb3047ffmr971796edb.68.1647419027800;
        Wed, 16 Mar 2022 01:23:47 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id r29-20020a50c01d000000b00415fb0dc793sm613738edb.47.2022.03.16.01.23.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 01:23:47 -0700 (PDT)
Message-ID: <deed2e82-0d93-38d9-f7a2-4137fa0180e6@canonical.com>
Date:   Wed, 16 Mar 2022 09:23:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH net-next] dt-bindings: net: convert sff,sfp to dtschema
Content-Language: en-US
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     "davem@davemloft.net" <davem@davemloft.net>,
        "kuba@kernel.org" <kuba@kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220315123315.233963-1-ioana.ciornei@nxp.com>
 <6f4f2e6f-3aee-3424-43bc-c60ef7c0218c@canonical.com>
 <20220315190733.lal7c2xkaez6fz2v@skbuf>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220315190733.lal7c2xkaez6fz2v@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 20:07, Ioana Ciornei wrote:
> On Tue, Mar 15, 2022 at 07:21:59PM +0100, Krzysztof Kozlowski wrote:
>> On 15/03/2022 13:33, Ioana Ciornei wrote:
>>> Convert the sff,sfp.txt bindings to the DT schema format.
>>>
>>> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
>>> ---
> 
> (..)
> 
>>> +maintainers:
>>> +  - Russell King <linux@armlinux.org.uk>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - sff,sfp  # for SFP modules
>>> +      - sff,sff  # for soldered down SFF modules
>>> +
>>> +  i2c-bus:
>>
>> Thanks for the conversion.
>>
>> You need here a type because this does not look like standard property.
> 
> Ok.
> 
>>
>>> +    description:
>>> +      phandle of an I2C bus controller for the SFP two wire serial
>>> +
>>> +  maximum-power-milliwatt:
>>> +    maxItems: 1
>>> +    description:
>>> +      Maximum module power consumption Specifies the maximum power consumption
>>> +      allowable by a module in the slot, in milli-Watts. Presently, modules can
>>> +      be up to 1W, 1.5W or 2W.
>>> +
>>> +patternProperties:
>>> +  "mod-def0-gpio(s)?":
>>
>> This should be just "mod-def0-gpios", no need for pattern. The same in
>> all other places.
>>
> 
> The GPIO subsystem accepts both suffixes: "gpio" and "gpios", see
> gpio_suffixes[]. If I just use "mod-def0-gpios" multiple DT files will
> fail the check because they are using the "gpio" suffix.
> 
> Why isn't this pattern acceptable?

Because original bindings required gpios, so DTS are wrong, and the
pattern makes it difficult to grep and read such simple property.

The DTSes which do not follow bindings should be corrected.

> 
>>> +
>>> +  "rate-select1-gpio(s)?":
>>> +    maxItems: 1
>>> +    description:
>>> +      GPIO phandle and a specifier of the Tx Signaling Rate Select (AKA RS1)
>>> +      output gpio signal (SFP+ only), low - low Tx rate, high - high Tx rate. Must
>>> +      not be present for SFF modules
>>
>> This and other cases should have a "allOf: if: ...." with a
>> "rate-select1-gpios: false", to disallow this property on SFF modules.
>>
> 
> Ok, didn't know that's possible.
> 
>>> +
>>> +required:
>>> +  - compatible
>>> +  - i2c-bus
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - | # Direct serdes to SFP connection
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +
>>> +    sfp_eth3: sfp-eth3 {
>>
>> Generic node name please, so maybe "transceiver"? or just "sfp"?
>>
> 
> Ok, I can do just "sfp".
> 
>>> +      compatible = "sff,sfp";
>>> +      i2c-bus = <&sfp_1g_i2c>;
>>> +      los-gpios = <&cpm_gpio2 22 GPIO_ACTIVE_HIGH>;
>>> +      mod-def0-gpios = <&cpm_gpio2 21 GPIO_ACTIVE_LOW>;
>>> +      maximum-power-milliwatt = <1000>;
>>> +      pinctrl-names = "default";
>>> +      pinctrl-0 = <&cpm_sfp_1g_pins &cps_sfp_1g_pins>;
>>> +      tx-disable-gpios = <&cps_gpio1 24 GPIO_ACTIVE_HIGH>;
>>> +      tx-fault-gpios = <&cpm_gpio2 19 GPIO_ACTIVE_HIGH>;
>>> +    };
>>> +
>>> +    cps_emac3 {
>>
>> This is not related, so please remove.
> 
> It's related since it shows a generic usage pattern of the sfp node.
> I wouldn't just remove it since it's just adds context to the example
> not doing any harm.

Usage (consumer) is not related to these bindings. The bindings for this
phy/mac should show the usage of sfp, but not the provider bindings.

The bindings of each clock provider do not contain examples for clock
consumer. Same for regulator, pinctrl, power domains, interconnect and
every other component. It would be a lot of code duplication to include
consumers in each provider. Instead, we out the example of consumer in
the consumer bindings.

The harm is - duplicated code and one more example which can be done
wrong (like here node name not conforming to DT spec).

If you insist to keep it, please share why these bindings are special,
different than all other bindings I mentioned above.

> 
>>
>>> +      phy-names = "comphy";
>>> +      phys = <&cps_comphy5 0>;
>>> +      sfp = <&sfp_eth3>;
>>> +    };
>>> +
>>> +  - | # Serdes to PHY to SFP connection
>>> +    #include <dt-bindings/gpio/gpio.h>
>>
>> Are you sure it works fine? Double define?
> 
> You mean that I added a second example? I don't understand the question.

You have second same include so you will have doubled defines. Usually
it was an error...

Best regards,
Krzysztof
