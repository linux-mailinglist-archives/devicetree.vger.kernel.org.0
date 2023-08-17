Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9B0877F036
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 07:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348056AbjHQFc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 01:32:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347999AbjHQFbz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 01:31:55 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F6F198E
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 22:31:53 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bf1f632b8so1013489566b.1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 22:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1692250312; x=1692855112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sxtLgJIa1RLbTpPePXFhmwlCNeczWbrDyc8vA8a49A8=;
        b=Dwcb9tErmXCvVjYBoYcW3kHNCygFeA3lzAmCwd+kfkN+5pjVwMguvij4dluYqYB79X
         dH5yN+OosG5FF8OXqVyYc01ub1PSQyySQ/ufAp/3VwAb0yTkTX3sizw5t/6EJH0fd809
         64AzcIZuAVTQmUpvlCpVmWpbaQHqARn1Oa3M4TidP/ycZ/s4jj8cyc1bMSzHYI6RGS2d
         qr9WZfCvjtsloy5r5s/IDAUwy5rshfJJYVsSPdCFBpbmUqnbh6wl1kfGyYLMixiALZsh
         FdbrOeJrcohdvwkrm8kiGARC3DvArBdnnxjfMgo0vyo0spm9t5CB3ynkiWT6Iok/Agbb
         m6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692250312; x=1692855112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sxtLgJIa1RLbTpPePXFhmwlCNeczWbrDyc8vA8a49A8=;
        b=VIgB827as/McUclycCriKT39qMZlTTTKRvOzYuLcFBgwgSy3w0818u8sctSQSwu6qe
         t7cl/RV8DHHUTXg0AgtBnOoxfgImAB5uSZ9GO1+FgMU08ySB/AbT5eV9AgSuU7NzpHdH
         b73lsvwnyfO/DfAWhZA6QunSPmMeVXGnrg0ry9E5uZ7cEdFxNwOrMCRxtalHWDAulE5B
         2PElcbyEAwsmldTY7KzK7cj3F60LNblX5oJijfStLF5ZBQx/f8ocWPjps0Q6hLHevlZR
         LdqE5WFwSZ7XYSk/NbsGiP2Hjv9XSS0WpJ+fIss+sfE90d2yyqF8H1U8ku6OS5FxhxRq
         SkRA==
X-Gm-Message-State: AOJu0YxKtd8jZvpz7iwVodCnP7cYYSkDgtfwUaPdQAh34lYjtVjfZ39G
        zQ+B2m+BIgBntCxQdRos/tuBJw==
X-Google-Smtp-Source: AGHT+IGd2XE7EL4DOlllWQeJM9YR/hImZD2DS4HJs5yBVB5vQwAT9kfmUKJR71ROmgg0YDXHetdscQ==
X-Received: by 2002:a17:906:698a:b0:99c:444c:e4bb with SMTP id i10-20020a170906698a00b0099c444ce4bbmr2686161ejr.42.1692250312013;
        Wed, 16 Aug 2023 22:31:52 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id n13-20020a170906b30d00b0099b4d86fbccsm9697520ejz.141.2023.08.16.22.31.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Aug 2023 22:31:51 -0700 (PDT)
Message-ID: <43796724-4926-c7e0-9532-92b863550780@tuxon.dev>
Date:   Thu, 17 Aug 2023 08:31:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] ARM: dts: at91: sama5d29_curiosity: Add device tree for
 sama5d29_curiosity board
To:     Mihai.Sain@microchip.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        Nicolas.Ferre@microchip.com, Cristian.Birsan@microchip.com,
        alexandre.belloni@bootlin.com, andre.przywara@arm.com,
        Jerry.Ray@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Andrei.Simion@microchip.com,
        Varshini Rajendran <varshini.rajendran@microchip.com>
References: <20230804101043.4063-1-mihai.sain@microchip.com>
 <127fc712-d924-f27f-5449-33385e89d6c3@tuxon.dev>
 <PH8PR11MB6804E49B5946F4A9D60837E18213A@PH8PR11MB6804.namprd11.prod.outlook.com>
 <98d01db3-3eba-0731-0dd9-4310ed293bd6@tuxon.dev>
 <PH8PR11MB6804B1C6466C7A450A180D1D8215A@PH8PR11MB6804.namprd11.prod.outlook.com>
Content-Language: en-US
From:   claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <PH8PR11MB6804B1C6466C7A450A180D1D8215A@PH8PR11MB6804.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/16/23 12:05, Mihai.Sain@microchip.com wrote:
> Hi Claudiu,
> 
> ----------------------
> 
> Hi, Mihai,
> 
> On 8/10/23 09:47, Mihai.Sain@microchip.com wrote:
>>> +&i2s0 {
>>> +     pinctrl-names = "default";
>>> +     pinctrl-0 = <&pinctrl_i2s0_default>;
>>> +     status = "okay";
>> I see no sound bindings on DT. Is there any reason for having this here?
>> # i2s0 bus is wired to RPi 40-pin connector. I want to have this node and its pinctrl here.
>> # i2c1, flx4-spi, pwm0, uart1 are also wired to Rpi connector, and are defined here.
>> # The same logic we apply also for mikroBUS sockets: i2c, pwm, spi and uart nodes are defined here.
>>
> 
> Can you use it (either with user space tools or other kernel consumers) w/o additional device tree bindings?
> # Yes. We have added in dt-overlay the codec which uses the i2s0 and i2c1 nodes and pinctrls.

overlay means additional DT bindings to me. So, I suggest to move the i2s
node there, too. It is the same approach that you've taken for ethernet node.
