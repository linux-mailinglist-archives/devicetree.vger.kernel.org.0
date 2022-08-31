Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1673E5A7632
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 08:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbiHaGG2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 02:06:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbiHaGG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 02:06:26 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B936BBA7B
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 23:06:24 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id k18so7136236lji.13
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 23:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ANWBqxWkat4oQFVKGRhdNPZ9ZiKYZ296HDF9WbmQQ+8=;
        b=TbZpycTA3AqHS1/7eFvv9gYFRLluNX0H7KoZ9Yoy3jmt09xOepWw774eJiYL7WS7uw
         7LVC5U8tnfxTbUNXoVCdBLSf3Ao4ByC6cEs+tbmBSq9MJuBUV7rrvZJtrUGjYwKjwQxC
         G2a/4fk+EwasMBZU8VBFamTdQ9qcK0GvR9ZxK5uVMvEW4vVFixcS6tzpRI2dyvX2Xad0
         MCNDp8I797KzzZP0DAPZvCA7PdWJb/7o+Dj/G9lKMWi6jxk0+++iBNGVsp+JYzHn6r4x
         YEok1Pkf0QRmH8VgbIaulRZT+V05dFyjB4nTVLuDVSzwCmxRVEivjFs2G3feZVANrufc
         F8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ANWBqxWkat4oQFVKGRhdNPZ9ZiKYZ296HDF9WbmQQ+8=;
        b=X/8RympY8taej/YrHWXTu/0qACODHRYw9ccCXWOgyKqkohQtnRLBjg6f0SeB7Xm/5Q
         3zuo3IMSRXa0naoJ0OstfJTrlUBX7rJX0vSZ4xL2MFW2572PHK2vkgvpNZVrDHyHJOYd
         RpeJb2Q0elfw6+9GWzachbliZr6reeWwHj45VFZPzgRuj/bYhzyFytjazXme0Jv8bQEQ
         k1NPmxXSfw/Vwmy2tJ6Q8WOQPGem0jtjadBifAevwkNWNVlJ87gJxG0T2DwikD36eS5+
         7rSfPJj2jEQ3fa+QHQaO5D/lbQ6ejjwqAAQCswRmVLu4RQDu6wfAvGOY+0kRK5TE0Xdw
         +s+g==
X-Gm-Message-State: ACgBeo0dB86M3/aDhvV2ltE1lIaLVPq6XWaqm7leOM0vgsEvSEXb07w0
        GaRf5RpI6b1D0aM4pp9YFGtREg==
X-Google-Smtp-Source: AA6agR4QWoZyhAAEzosHUW29HjdzdM6WXVR3nCVWVK7p9w1Z5PugZ8sseAxrpNPkz7l7u4HkxqZT7g==
X-Received: by 2002:a2e:b987:0:b0:268:4772:8e41 with SMTP id p7-20020a2eb987000000b0026847728e41mr1034144ljp.458.1661925982704;
        Tue, 30 Aug 2022 23:06:22 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id e15-20020a05651c038f00b00264bb2351e8sm569511ljp.7.2022.08.30.23.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 23:06:22 -0700 (PDT)
Message-ID: <daf497c5-4422-b8ce-1bbe-f2722962715c@linaro.org>
Date:   Wed, 31 Aug 2022 09:06:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 2/2] dts: arm: at91: Add SAMA5D3-EDS board
Content-Language: en-US
To:     Jerry.Ray@microchip.com, robh+dt@kernel.org,
        Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
        Ludovic.Desroches@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220830152428.12625-1-jerry.ray@microchip.com>
 <20220830152428.12625-2-jerry.ray@microchip.com>
 <92c213de-872c-bc0b-382c-c9940309f272@linaro.org>
 <MWHPR11MB169397E1C572642536803951EF799@MWHPR11MB1693.namprd11.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MWHPR11MB169397E1C572642536803951EF799@MWHPR11MB1693.namprd11.prod.outlook.com>
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

On 30/08/2022 23:16, Jerry.Ray@microchip.com wrote:
>>
>>> +
>>> +     chosen {
>>> +             stdout-path = "serial0:115200n8";
>>> +     };
>>> +
>>> +     clocks {
>>> +             slow_xtal {
>>
>> No underscores in node names. Generic node names, so at least add some generic prefix or suffix, e.g.: "slow-xtal-clock"
>>
> 
> I'm not at liberty to change these names.  Pre-existing drivers are counting on them.
> The hardware leverages the SAMA5D3-xplained board.
> I'm leveraging the at91-sama5d3_xplained.dts.
> The board will not boot up if I modify the names.

For custom names you have clock-output-names... But anyway it seems you
override existing nodes, so this should be override by label, not by
entire path.

Best regards,
Krzysztof
