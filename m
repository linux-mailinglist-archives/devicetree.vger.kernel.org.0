Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 830EC65A589
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 16:30:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231738AbiLaPan (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 10:30:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231665AbiLaPam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 10:30:42 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 628D12DE3
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672500598;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ioTWK7xKnjeiXWvIiaopMDUCl0bx2ByRbNdpJnCkz08=;
        b=UnrRG5tSefji+7/Ion4ygUR65VBboEadlu5lwoSRJQ+QFVq3uKPmRmUJIyoRn0daUkzRh6
        GJcoc52IcnqQdbZKwdSxqsuNNi7jLDL02CD3TCH2yXiF4OBjXQwAm/R01IkuHTCLO7EOKk
        IICizXTbYFNyWjZ7f2mOIeDJC5ilLuM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-478-lE79GPqZOvKBO98XnFSe9g-1; Sat, 31 Dec 2022 10:29:52 -0500
X-MC-Unique: lE79GPqZOvKBO98XnFSe9g-1
Received: by mail-wm1-f70.google.com with SMTP id m8-20020a05600c3b0800b003d96bdce12fso11053825wms.9
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:29:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ioTWK7xKnjeiXWvIiaopMDUCl0bx2ByRbNdpJnCkz08=;
        b=AyLSEOZDWuvrBpSeoEVx4b9kRsfRhR9MR2+fktJ48nMNukmIgcE9IlHPUUen9NfbRk
         XIzQ5cYnJ9SVaYAGg2qDvJ0H+gUxKTeVB4NcE2SOWDnGJJvjmsunS1afnMALDdjURT8n
         bNKRp04smMWtT36920QJWw5txccQTiw56B4sx6RNerLegzvOgYaOck+53mRttfcmxFR5
         /Es6hZ4apA/pu5yaiV+tV9h97Nkm8ea4uoIHgx5KDesU3i2ap2y1Dzj8yo8KhqlRjs+0
         CaPXkjX3GtS+PgOS4PZntYb6/tCuaDvymfpsXWzAAkH7CjKufpyaZy8cqa+gApYXql1C
         UNUg==
X-Gm-Message-State: AFqh2kqBcXKrhEN02CG8PHK5haxLStiOsiJ1Wj5M0w2mowQyyd8/aGWX
        uj8Q8LEMBnjFvK7BmNfYuIg5hKzsPTV1o8v4QsdZ2PBym6a9BU5v4awTdQCT6W4FK0Lf/RgfTQX
        pdXfCIKtgI6ZhbC0ECBm48Q==
X-Received: by 2002:adf:f54a:0:b0:242:73d5:d8cf with SMTP id j10-20020adff54a000000b0024273d5d8cfmr22054928wrp.32.1672500591432;
        Sat, 31 Dec 2022 07:29:51 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsI4kSzJ3dpbAZwpiBrPu3lrGFl0XL17c/4Epgs9kKSScUH5YrWEp2AzMmrpLu3nOWNFJp6MA==
X-Received: by 2002:adf:f54a:0:b0:242:73d5:d8cf with SMTP id j10-20020adff54a000000b0024273d5d8cfmr22054909wrp.32.1672500591182;
        Sat, 31 Dec 2022 07:29:51 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j6-20020a056000124600b0029100e8dedasm3736327wrx.28.2022.12.31.07.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Dec 2022 07:29:50 -0800 (PST)
Message-ID: <e21b5c12-0cc0-5ec0-b2c6-9dde633d5e10@redhat.com>
Date:   Sat, 31 Dec 2022 16:29:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Content-Language: en-US
To:     =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megi@xff.cz>,
        linux-kernel@vger.kernel.org,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Sam Ravnborg <sam@ravnborg.org>,
        Robert Mader <robert.mader@posteo.de>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Peter Robinson <pbrobinson@gmail.com>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        dri-devel@lists.freedesktop.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Neal Gompa <ngompa13@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
References: <20221230113155.3430142-1-javierm@redhat.com>
 <20221230113155.3430142-5-javierm@redhat.com>
 <20221230153745.tfs6n4zy4xfwugbw@core>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221230153745.tfs6n4zy4xfwugbw@core>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Ondřej,

Thanks a lot for your feedback.

On 12/30/22 16:37, Ondřej Jirman wrote:

[...]

>>  &i2c0 {
>>  	clock-frequency = <400000>;
>>  	i2c-scl-rising-time-ns = <168>;
>> @@ -214,6 +251,9 @@ vcc3v0_touch: LDO_REG2 {
>>  				regulator-name = "vcc3v0_touch";
>>  				regulator-min-microvolt = <3000000>;
>>  				regulator-max-microvolt = <3000000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
> 
> You're instructing RK818 to shut down the regulator for touch controller during
> suspend, but I think Goodix driver expects touch controller to be kept powered on
> during suspend. Am I missing something?
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/input/touchscreen/goodix.c#L1405
>

You tell me, it is your patch :) I just cherry-picked this from your tree:

https://github.com/megous/linux/commit/11f8da60d6a5

But if that is not correct, then I can drop the regulator-off-in-suspend.
 
[...]

>> +
>> +	touchscreen@14 {
>> +		compatible = "goodix,gt917s";
> 
> This is not the correct compatible. Pinephone Pro uses Goodix GT1158:
> 
> Goodix-TS 3-0014: ID 1158, version: 0100
> Goodix-TS 3-0014: Direct firmware load for goodix_1158_cfg.bin failed with error -2
> 
>

Same thing. I wasn't aware of this since your patch was using this compatible
string. If "goodix,gt1158" is the correct compatible string, then I agree we
should have that instead even when the firmware is missing. Because the DT is
supposed to describe the hardware. The FW issue can be tackled as a follow-up.

[...] 

>> +
>> +&vopb {
>> +	status = "okay";
>> +	assigned-clocks = <&cru DCLK_VOP0_DIV>, <&cru DCLK_VOP0>,
>> +			  <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
>> +	assigned-clock-rates = <0>, <0>, <400000000>, <100000000>;
>> +	assigned-clock-parents = <&cru PLL_CPLL>, <&cru DCLK_VOP0_FRAC>;
>> +};
> 
> So here you're putting a fractional clock into path between CPLL -> VOP0_DIV
> -> DCLK_VOP0_FRAC -> DCLK_VOP0.
> 
> Fractional clocks require 20x difference between input and output rates, and
> CPLL is 800Mhz IIRC, while you require 74.25MHz DCLK, so this will not work
> correctly.
> 
> Even if this somehow works by fractional clock being bypassed, I did not design
> the panel mode to be used with CPLL's 800 MHz, but with GPLL frequecy of 594 MHz.
> 
> GPLL 594/74.25 = 8  (integral divider without the need for fractional clock)
> CPLL 800/74.25 = ~10.77441077441077441077
> 
> If you really want to use fractional clock, you'd need to parent it to VPLL
> and set VPLL really high, like close to 2GHz.
>

Thanks for the explanation. Then I just need to squash on top of this, the
following patch. Is that correct?

https://github.com/megous/linux/commit/f19ce7bb7d72

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

