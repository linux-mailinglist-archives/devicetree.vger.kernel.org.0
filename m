Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DAAD786C83
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 12:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbjHXKB1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 06:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238666AbjHXKA4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 06:00:56 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B3331BC3
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 03:00:29 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c4923195dso853373566b.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 03:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1692871227; x=1693476027;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jKnkFU4cj38+MIuwqAfBBskvg69vCe9QhbSaiCRs2HU=;
        b=h0qusRSUEEBdiAvR19pmhPN+SinHeiZYOO2HIusQEtVd79XJFkjK+KZeFVIk9vOtdE
         hlC/04bo/wXq3/zz0iXhkz0YzS0CWf3K8hRrwsfbHkZKCDlPEhcFM0x3LG7ziq9hf320
         06jSMwrsJNKwEdEBPqGp2i0iELy+/E5MZCjw/VZz7SsV/INm0vJ1fIjEqMaNxvi2kVTU
         QqxnpYVw9G9Z6f5q5vbFXfCPAxYjBYVF/pODRbI93uqkzQDohL26YZLjojQB7SEypJpj
         eHIKwOPrVHJtjrMZYvH8zBA1PvgWWq/FgeZHnhWqO8hST4hHY/dSVWXVarU+eYAyPV66
         muHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692871227; x=1693476027;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jKnkFU4cj38+MIuwqAfBBskvg69vCe9QhbSaiCRs2HU=;
        b=AXJ6DnKuBgzYohsAXGMcOUUqlY/U36ONdsVdrlTPIFUxLnDqnGF0pxOEFF691Rq+Fs
         kkdFcM9/UFkFOkfgcOSoV6+srjJ2t0WAXwSnWhbAZiQYhSRgCskEQGEkPGVmOKJX0Tec
         7rs8ohO7I1QJ2NwW8GMU1hAMjH7YSRCrvwrIX9gSY2CxT6QvYzxX22IHxJ1O6m2VH+FP
         1K5rsAoIBjGq7wUHZq/MvGvRWwWwd/nfmgOnFLMSBDcgVvG2pL7K+MoCqSTEDr6mxPlW
         iFWEgaVe+tdZtep760m2bcXsQowD5gCOVeyCs1uMClrKon3GVIHWVjQA5nXzeI9XSNVu
         YrcA==
X-Gm-Message-State: AOJu0YwFHOXC9hSg/ZNM87DsZXpLSeD+bYx5w1luDtVIW78LSSDxmsPr
        dg1pnPYgCZZ/wLerYrxxK6jxZQ==
X-Google-Smtp-Source: AGHT+IHic+3v6nUdmcVlrJmXtfk1We8CUWU7iAskZC7w3ZUBrxa0tjb2FB9LW8Wm7Y5LO8bBnF9xyA==
X-Received: by 2002:a17:907:7617:b0:9a1:d79a:4193 with SMTP id jx23-20020a170907761700b009a1d79a4193mr3425473ejc.23.1692871227483;
        Thu, 24 Aug 2023 03:00:27 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.1])
        by smtp.gmail.com with ESMTPSA id jw11-20020a17090776ab00b0099d0a8ccb5fsm10754605ejc.152.2023.08.24.03.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 03:00:27 -0700 (PDT)
Message-ID: <e7136b58-f48b-ff9a-8831-57a905bc0465@tuxon.dev>
Date:   Thu, 24 Aug 2023 13:00:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] ARM: dts: at91: ksz9477_evb: Add tx-internal-delay-ps
 property for port5
Content-Language: en-US
To:     Lukasz Majewski <lukma@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Claudiu Beznea <claudiu.beznea@microchip.com>
Cc:     devicetree@vger.kernel.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230727080656.3828397-1-lukma@denx.de>
 <20230824111702.1a034801@wsk>
From:   claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230824111702.1a034801@wsk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Lukasz,

On 8/24/23 12:17, Lukasz Majewski wrote:
> Dear Community,
> 
>> Without this change the KSZ9477 Evaluation board's Linux (v6.5-rc1)
>> shows following device warning:
>>
>> 'ksz-switch spi1.0: Port 5 interpreting RGMII delay settings based on
>> "phy-mode" property, please update device tree to specify
>> "rx-internal-delay-ps" and "tx-internal-delay-ps"'
>>
>> This is not critical, as KSZ driver by itself assigns default value of
>> tx delay to 2000 ps (as 'rgmii-txid' is set as PHY mode).
>>
>> However, to avoid extra warnings in logs - the missing
>> 'tx-internal-delay-ps' has been specified with the default value of
>> 2000 ps.
>>
> 
> Gentle ping on this patch.
> 
> Claudiu, could you pick it as well?

It's already in arm-soc:

https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/log/arch/arm/boot/dts/microchip?h=for-next
