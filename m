Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 731B25959B3
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 13:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbiHPLSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 07:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234462AbiHPLRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 07:17:45 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D381C2BB21
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 02:42:42 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id e15so14218905lfs.0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 02:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Y58LopX3Xau62EqFhAJuU29XSrAjPOJKcpX9ia/1x/U=;
        b=vtoZdSOhjarg/GSUa+9qG6BMrKkJOe83PvRmhRhyuCerPbGiIrm8pgH0PekReyxXJ6
         br5da1shUHmmP98ueTSt3G69sK9FhXyVW3WshnsnkN5Zd9pD4/lLqoMERKRF+w7swXkM
         AeIbHzMZsV28B9ebYLbsaCZ0jduwrq/sNPO2NVsFmvFtUPUZJWcrl8zjdGivtVPbCski
         3t3C/SRG3X5doYfn+nTF8cJUl3g/YvK7CVLwOZJws/ZpTvhaiUyGafpkHX0KACEFk68A
         QHr4Aga2v7Ah2M9FdDI0/vgxJtgzrZnGZ7q/NfLu5futbWVzkQ+nzoQuKEwZv1YoRTFV
         zsjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Y58LopX3Xau62EqFhAJuU29XSrAjPOJKcpX9ia/1x/U=;
        b=xQZ8RmRntJ26E4SQTElmbBaGxCJqxOgiQeO/tH0GlNPgRXxHSZB6DWx08+ED7I06Iy
         2bX3aSOYL1DjhJCWc/Lre0Fj6bit0i2YN06uDVJdfFk+y6VjNYQhobLpd5l1wyEpxxpZ
         A6TtuZSPVijHkfGCulnSvLkicIb1Mi3U1wXwvhuyoMEZk5j8tBuTKhC1GovON4XoZLNl
         /jbiDIUzfcst7VWzpEEz2mJcFG5XtjV3nEdVPE8D4BWyD7ZWYY+DMsWXgyNQkKDJHznw
         2mTFZ8aBH8rrX9lZFXIlZISgLLYAz/pXvX1Y2BFqi0fbdgEcFAP5z1mLfYoY8u/BsyZz
         y8og==
X-Gm-Message-State: ACgBeo0k62rxKXMK3AZC1fKfYx72tUtdaSi7inHXres3EP/Cm6UQ7LXu
        reoqChOsOg7d/92v+DlqPvAcDw==
X-Google-Smtp-Source: AA6agR5AgFW8i1G8KDg24W4ut+/FzCr3UMJzFdeE8sWqRtObktk+u4BKs7+LO+EgAtH4db4A3D91Jg==
X-Received: by 2002:a05:6512:1052:b0:491:f371:ad44 with SMTP id c18-20020a056512105200b00491f371ad44mr4099234lfb.416.1660642961195;
        Tue, 16 Aug 2022 02:42:41 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id k12-20020ac24f0c000000b0048b03b4b018sm1325108lfr.283.2022.08.16.02.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 02:42:40 -0700 (PDT)
Message-ID: <b5401052-e803-9788-64d6-82b2737533ce@linaro.org>
Date:   Tue, 16 Aug 2022 12:42:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 06/12] riscv: dts: allwinner: Add the D1 SoC base
 devicetree
Content-Language: en-US
To:     =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220815050815.22340-1-samuel@sholland.org>
 <5593349.DvuYhMxLoT@jernej-laptop> <3881930.ZaRXLXkqSa@diego>
 <2249129.ElGaqSPkdT@jernej-laptop>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2249129.ElGaqSPkdT@jernej-laptop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/08/2022 12:25, Jernej Škrabec wrote:
> Dne torek, 16. avgust 2022 ob 11:12:05 CEST je Heiko Stübner napisal(a):
>> Am Dienstag, 16. August 2022, 09:49:58 CEST schrieb Jernej Škrabec:
>>> Dne torek, 16. avgust 2022 ob 09:41:45 CEST je Krzysztof Kozlowski 
> napisal(a):
>>>> On 15/08/2022 08:08, Samuel Holland wrote:
>>>>> +
>>>>> +	de: display-engine {
>>>>> +		compatible = "allwinner,sun20i-d1-display-engine";
>>>>> +		allwinner,pipelines = <&mixer0>, <&mixer1>;
>>>>> +		status = "disabled";
>>>>> +	};
>>>>> +
>>>>> +	osc24M: osc24M-clk {
>>>>
>>>> lowercase
>>>>
>>>>> +		compatible = "fixed-clock";
>>>>> +		clock-frequency = <24000000>;
>>>>
>>>> This is a property of the board, not SoC.
>>>
>>> SoC needs 24 MHz oscillator for correct operation, so each and every board
>>> has it. Having it here simplifies board DT files.
>>
>> I guess the oscillator is a separate component on each board, right?
> 
> Correct.
> 
>> And DT obvious is meant to describe the hardware - independently from
>> implementation-specific choices.
> 
> There is no choice in this case. 24 MHz crystal has to be present.
> 
> FWIW, including crystal node in SoC specific DTSI is already common pattern in 
> Allwinner ARM SoC DTSI files.
> 
>>
>> Starting to discuss which exceptions to allow then might lead to even more
>> exceptions.
>>
>> Also having to look for a board-component in the soc dtsi also is surprising
>> if one gets to the party later on :-) .
> 
> As I said, if one is accustomed to Allwinner ARM DT development, it would be 
> more surprising to include 24 MHz crystal node in each and every board DT.

It's same everywhere. Allwinner, Exynos, iMX, Qualcomm. Everywhere this
is a part of the board, so even if oscillator frequency is fixed (as in
99% of cases although some SoCs I think might just allow to implement
one of few), still this is a property of the board. Because:
1. DTSI describes the SoC part, not board.
2. So the DTS developer is a bit more conscious about his design.

Keeping things in SoC DTSI just because it simplifies DTS is not correct
IMHO. So again - like in several other cases - minimum the frequency is
property of the board, not the SoC DTSI.

Everywhere. Allwinner is not special to receive exceptions.

Best regards,
Krzysztof
