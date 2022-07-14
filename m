Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDA8257455C
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 08:56:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234488AbiGNG4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 02:56:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234281AbiGNG4T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 02:56:19 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A85E2A97D
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 23:56:17 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id bn33so1038718ljb.13
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 23:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ygGDwyimlIf6c05yh3mozG3M0LF6/sjmmvfiI7zgyuU=;
        b=d8DEnAboI1y3aR3jhMI4/YzqBvZ9o9rjL4KyTI7+7E25Yr5BaIYHmgBDBLi3n2sH12
         MSZmpn6S1WEVuE9A+UlpxHTuzdZI+9Rjp1/JWGd+9or1PyTRaEY068QBl/qwNYXjZG29
         PJLGB8XR+gHnX+OmANqWCTJNHBkCxcbufkWL9s3a8LikGP5d9FxFk2vv8jEIXxP24dgE
         s2lZBW0H/NO9Ahf+DHtnPnyolDJBgH2QJD1yX4VvJPAybDQ7lPUMWg/FHA+rTv1ajTP2
         W4oWsHA/z/RsLXl27xHxbl8f8jMEryw9/aXWEXnaOhBGfB8t7p9IZ/MPr7dlq2W7tS3t
         K8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ygGDwyimlIf6c05yh3mozG3M0LF6/sjmmvfiI7zgyuU=;
        b=1cA6TxAHMkcW3YybKjeC1PwJuk/EIrpXY0AyhQCfxas4ENaDQBQGhxTPBObDNdKc01
         GzGodv/w5F92o8NyHh58R33CaRhlZ93hcj5V2j8CwJ4msyloAkgSZOnKQXp1RMZ3SSXm
         Esr+ow5q+6eVLyaAEccEMqvonwnBQiTvDBl6ePcMBau/cIen711aEZxGJqw2RYC0C3lN
         guCu6EPU5rMDORQvazC+IP69AKCecurlxuIwBVyfwAZIK/NcyewR/MHzuNrfIGGdlDNz
         VaWSpHUPK6bZ8sZWfZfhTiSQ7vg1jrvAhPRTxjxrqN6s/jg32eFzAf3D7RGXQIq7CWK/
         IIzA==
X-Gm-Message-State: AJIora9q4N5okCQjjNCG9mzJ+raGlAcJBKvPZ99iivn4ePqy9bsv6s6b
        Rgt3084Sn7yZdws68kobG44+iw==
X-Google-Smtp-Source: AGRyM1u9SaJfjTEEpazUdRmvnE17TWyJfAUNVJCvIoNGh9kZrSYvFpaFiEtk2B03nsKGZXM2OuktKA==
X-Received: by 2002:a2e:92c6:0:b0:255:84cb:4eea with SMTP id k6-20020a2e92c6000000b0025584cb4eeamr3703749ljh.204.1657781775995;
        Wed, 13 Jul 2022 23:56:15 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id k6-20020ac257c6000000b00489cd8ee61asm194547lfo.275.2022.07.13.23.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 23:56:14 -0700 (PDT)
Message-ID: <7a4fba17-9c71-a4e6-643a-62aa0dfd4774@linaro.org>
Date:   Thu, 14 Jul 2022 08:56:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: marvell: Fix compatible strings for Armada
 3720 boards
Content-Language: en-US
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220713125644.3117-1-pali@kernel.org>
 <a9e1ccb7-6caa-2f7c-b879-b3ff4945794c@linaro.org>
 <20220713200336.addvyfjhakrx72am@pali>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220713200336.addvyfjhakrx72am@pali>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2022 22:03, Pali Rohár wrote:
> On Wednesday 13 July 2022 21:42:43 Krzysztof Kozlowski wrote:
>> On 13/07/2022 14:56, Pali Rohár wrote:
>>> All Armada 3720 boards have Armada 3720 processor which is of Armada 3700
>>> family and do not have Armada 3710 processor. So none of them should have
>>> compatible string for Armada 3710 processor.
>>>
>>> Fix compatible string for all these boards by removing wrong processor
>>> string "marvell,armada3710" and adding family string "marvell,armada3700"
>>> as the last one. (Note that this is same way how are defined Armada 3710
>>> DTS files).
>>
>> Please do not introduce some changes just in DTS, but start from the
>> bindings. Someone wrote the bindings like that and expected to be that
>> way, so first change the bindings with proper rationale. Then change the
>> DTS files.
>>
>>
>> Best regards,
>> Krzysztof
> 
> Ok, I tried to update bindings and fix example in it, see patch:
> https://lore.kernel.org/linux-devicetree/20220713200123.22612-1-pali@kernel.org/

The reason you used here should be expressed in that commit as well
because you change the ABI and affect other users (projects, systems).

Best regards,
Krzysztof
