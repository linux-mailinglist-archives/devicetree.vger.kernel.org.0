Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D0434BDD9E
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:45:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358964AbiBUNVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 08:21:09 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358877AbiBUNUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 08:20:39 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45E901EEDF
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 05:20:16 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 01F043F4B4
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 13:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645449615;
        bh=khb30gE+RkFEqmWXwauRdw21yNeM7x8VXwtb7dTjxrk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=nUYcJiemPRb0WmIkg0mjckL/Lw9vaznpERcjCSD3fMviAHLAZhQNCT+XHBON578+y
         uavLi8+ncazYdDmdrLmea99d1g0rE7dMnAinOgmqeYBVpo+qnqdT8ulpKydRNq+cCH
         JsRNq85O3SkxvsCDMuthwntTGIOIiNxMnsYM7lWKC/JNXC5x+yYR5V2ArFuNcau1FX
         mhmJgAK/UsDuOENmc0rIcvpbsMG/LK/wFQ9YH22z0snEhRTh2csg0mG/4S+Iytg4Id
         hH9VuOZ4ewU9WsxFq+yOpL4mxeYyx4Vm7BCKHCfNNVj3kAZJWL0ezna5y9GP3IkOc+
         nr/9XTn3Axg8w==
Received: by mail-ed1-f72.google.com with SMTP id eg48-20020a05640228b000b00413041cd917so1440152edb.12
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 05:20:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=khb30gE+RkFEqmWXwauRdw21yNeM7x8VXwtb7dTjxrk=;
        b=ZPEY1Wb2VU2sC23wUpAVGx8oZ5TEPzsRCdKytd6P6bXrmq52caWgNGWOIXS6RDCsLV
         pPizm8rPKUR4YTtHxF1bs3H+qbeETjWD+pv01izum4D+knY4zwQrfq+PRYplO/5r8Anm
         wrkDJ5c+5HKkRJFlEQoT8kqDXPxWXLogvmPIGedBcSh4YSwSjt/nn9f7YHTPXg5Oq9xH
         aFdXT/33lXW5qJfM93k8gpGIIxVKolYlOjyJF29CgF85FQMCUKPRhQY1EAcER8Mtz6OY
         Bw/QLUTaPJhsr5uPGIwKOA+xsY+KkUccxGkZnvaz03bvmCKRVD8agS1aYM+y0AX319Pz
         7B9A==
X-Gm-Message-State: AOAM531kJwz/LvGiSmX7/gjkWm7ShMQ6h84YRQq3YuUbkmFCwYJidwag
        3JvnzjRFdxId27QsnLi6ytbCKcAntjwg71T0Sf2mOSsZm5ccEnFm4DCNGxu4J+85BkKj6SxgoQu
        ADX5Xbw+rmAqvQ0sebDe/12vq42vd3hIQuXmxXHg=
X-Received: by 2002:a50:aa87:0:b0:40f:28a0:d0d6 with SMTP id q7-20020a50aa87000000b0040f28a0d0d6mr21735609edc.368.1645449614307;
        Mon, 21 Feb 2022 05:20:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyn8wRl+WsEMmydGs9g9zLLhKIDtqHUJiepwJxzF0w7Uxxo57NBO0zLCpmBeBDH0NoWgBQ/Vw==
X-Received: by 2002:a50:aa87:0:b0:40f:28a0:d0d6 with SMTP id q7-20020a50aa87000000b0040f28a0d0d6mr21735589edc.368.1645449614162;
        Mon, 21 Feb 2022 05:20:14 -0800 (PST)
Received: from [192.168.0.122] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id 18sm5084626ejj.1.2022.02.21.05.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Feb 2022 05:20:13 -0800 (PST)
Message-ID: <19705501-2391-14a4-0eac-4b2b647a9735@canonical.com>
Date:   Mon, 21 Feb 2022 14:20:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [RFC PATCH 8/8] arm64: dts: ti: use 'freq-table' in UFS node
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Jan Kotas <jank@cadence.com>, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20220219184224.44339-1-krzysztof.kozlowski@canonical.com>
 <20220219184554.44887-1-krzysztof.kozlowski@canonical.com>
 <20220221131340.q3hjpjevqrfvhggv@specimen>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220221131340.q3hjpjevqrfvhggv@specimen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2022 14:13, Nishanth Menon wrote:
> On 19:45-20220219, Krzysztof Kozlowski wrote:
>> The 'freq-table-hz' property is deprecated by UFS bindings.
>> The uint32-array requires also element to be passed within one <> block.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index 599861259a30..c3afef0321ae 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -1257,7 +1257,9 @@ ufs@4e84000 {
>>  			compatible = "cdns,ufshc-m31-16nm", "jedec,ufs-2.0";
>>  			reg = <0x0 0x4e84000 0x0 0x10000>;
>>  			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
>> -			freq-table-hz = <250000000 250000000>, <19200000 19200000>, <19200000 19200000>;
>> +			freq-table = <250000000 250000000
> 
> <min max> is much more readable and less error prone in case of a large
> set.

Pairs are easily visible if split per line, so readability is similar.
Not much is lost.

> 
>> +				      19200000 19200000
>> +				      19200000 19200000>;
> 
> are you sure the removal of the tuple adds value?

DT schema requires it, or rather: I do not know how to express uint32
tuples in DT schema. All my tries failed.


Best regards,
Krzysztof
