Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28D2C580BEA
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 08:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231589AbiGZGsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 02:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237774AbiGZGsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 02:48:51 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13263220C2
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 23:48:49 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id e11so15502953ljl.4
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 23:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YQAX1nHFxjgbPeWSF5HcitnTzR9QJkqmNB7ys8ahImk=;
        b=ZAQg6RBStU2emVYsrxY8SB+/iLgCdCdZppEZKCGHFcxK1B9TaEM9cGtzToIUJzmgXG
         jqm/pS2AIkbr70qUJtwGqOycsbSyLmGMZY+zpkotF+FSw7GmcqhIlrfofQbcVnVymSC2
         VxPFBg5JwJLNJPPdmylHpHT5vH1SmKsSeRH4VVcDs3MgrK6+AiyfC+cshQ1DMC047/KL
         MxbyGITrMZKRQvZLik7XvFGdoIpR/EvPBnugXEnea3HwkOBart/qpUagxM2BkKb0Yn07
         HWxYBXCu009+/uaz2rvV3j3DzLfHgHtLJhAevpB6t9ZgL+0+uNTQ8QuAkdE2e6zQXJLe
         iw5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YQAX1nHFxjgbPeWSF5HcitnTzR9QJkqmNB7ys8ahImk=;
        b=nUqMWhg4M1J7+PbXcIyyKgFGwWuwNi620uYwjCcpRxn6r6Ay73elzVZxby+5jyI+qy
         nIixELHeG6410wLEAh1TeJ6B7LBg4DhzH+krRIlbr2MPOhEnsGFWw55B0lkZMy01kZaT
         PipkkPxPUbSm3u5NFtCOjvhyRYGRwmhHNz3w9OMEuNkVE8JxMuiuPtof1xYkui+bAGjZ
         BJz3uex47KX3O2Klv2SGCf4PWnM6gikHVL18/ZH2SHZyQA+vxlQn/T57DCKW1QywHPaj
         VZg0jBy5Jv24fSsErZBkwYxAdVQOucRhP1GIFg32oye1P/yJ/BuYxcwIGX0BpUysNPJl
         rf+Q==
X-Gm-Message-State: AJIora9uvWwb6i9GkD/aPBTyNVdMSLoXFyYzGoNh96ZnJ9A9wnHUJ3+b
        yhkvjUGMR45WS3VryG2AuXm4Fw==
X-Google-Smtp-Source: AGRyM1v50oF7j0YPM0N9tEZsNCmSS9smoq4lDxi2jLcRE6+q/pABRsU6NY2KTXRoxfo1f4c5dXAvnA==
X-Received: by 2002:a2e:b947:0:b0:25d:d6f6:adaf with SMTP id 7-20020a2eb947000000b0025dd6f6adafmr5720547ljs.230.1658818127437;
        Mon, 25 Jul 2022 23:48:47 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id j7-20020a2e6e07000000b0025d53e34fe7sm3136020ljc.56.2022.07.25.23.48.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 23:48:46 -0700 (PDT)
Message-ID: <62334f55-df8a-936a-ec88-2db469aede21@linaro.org>
Date:   Tue, 26 Jul 2022 08:48:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [v5 4/4] arm64: dts: meson: Add MagicBox M16S support
Content-Language: en-US
To:     Zhang Ning <zhangn1985@qq.com>
Cc:     martin.blumenstingl@googlemail.com, narmstrong@baylibre.com,
        linux-amlogic@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sean@mess.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org
References: <20220724231704.132472-1-zhangn1985@qq.com>
 <tencent_9D885D188E51B537DB904A774CEC35E4180A@qq.com>
 <677c9314-593e-3512-539a-fd74f634c470@linaro.org>
 <tencent_1B5B069917D86370ED4136BDD2C413240D08@qq.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <tencent_1B5B069917D86370ED4136BDD2C413240D08@qq.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 02:04, Zhang Ning wrote:

>>> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
>>> @@ -0,0 +1,40 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2022 Zhang Ning <zhangn1985@qq.com>
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "meson-gxm.dtsi"
>>> +#include "meson-gx-p23x-q20x.dtsi"
>>> +#include <dt-bindings/input/input.h>
>>> +
>>> +/ {
>>> +	compatible = "magicbox,m16s", "amlogic,s912", "amlogic,meson-gxm";
>>> +	model = "MagicBox M16S";
>>> +
>>> +	gpio-keys-polled {
>>
>> Just gpio-keys (or even "keys").
> I see all dts for amlogic platform are using gpio-keys-polled, could I
> keep current name?

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof
