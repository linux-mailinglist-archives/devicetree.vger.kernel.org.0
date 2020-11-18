Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DCDE2B8706
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 22:54:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726163AbgKRVxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 16:53:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgKRVxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 16:53:41 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66015C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:53:39 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id u18so5199724lfd.9
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hbjcjtpfuo83qxWQXnhKmLxHH4qg/3reEM9BzJaRVBc=;
        b=c5snchuUGm8SIyXiRSKEFMAmJogDNnQlEidO0/Sh1GVCpLhpiEDQn0x4HxsSQeE+td
         +dFMG52+5SSaPtgyX/CxgbbnI6r7QqjXhaKGRvYhQIUm09q+C03E8gE5MbC4tHTW1sJa
         1hb/EDYkYkFORRVmAq+jwr1bK/1D89kMtzmMdwfISq1ufvKXpRJcO8nitKG5E8rvtz/M
         VLfjngwR3AR/Y1tEd05kRS8bWyKp5ZmQ45z+6HA3fY84wIiMDK8RBzSpkq4RBj5glRS8
         wQNgA6hBwGl0MTZlwiVLzyN3uznTG90efvsjixqveNm/o2zbJ/w/r92F3WOd4BEavDPq
         19XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hbjcjtpfuo83qxWQXnhKmLxHH4qg/3reEM9BzJaRVBc=;
        b=nhmOVVeWNRF+3/ASr7o5CcZx+tg6rs0+fgwLy15BDmZ54Un2xxZKtFqIWsS03FEUjF
         sYeQuIUW5mtS+Vp9ltMIbtdlcdE/fJQ6WT4pb192RyrMoZwxX6nvQYh3ftJeb1rkFgl7
         /vHj+/1LVp38OcBOfftImbAtcAOklsRQBOQ/gKCm1OZE5XYtMKWXCQ/b1lkYleC2W1Gs
         hpa24VBgsAB/wJMVbLx8+9Mpw9Bl4sn0rYfJOGpNNcwrIgbefdCK8MXuZxcNOLV3agPd
         26OevsWfDG9fFmN5ty/dFb5L6PvmhW1LdwDRJHOUNNUDDjnR/RYWKWUpoOQVb+qeq5cv
         BMaQ==
X-Gm-Message-State: AOAM5323hdv33kesacxnWblMX6mMMKtAewt0op/f8GQz1//JES2qAlh0
        MScU+LUpeB0EHmnvC7lH6R4=
X-Google-Smtp-Source: ABdhPJw6p50J2po6k4+68iZnbk1wsatioxl62114TnWEJalOgWnuM591Hh121s05VNojYvh8dEZkWQ==
X-Received: by 2002:ac2:5195:: with SMTP id u21mr4427527lfi.393.1605736417791;
        Wed, 18 Nov 2020 13:53:37 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id 5sm3767729lfr.197.2020.11.18.13.53.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 13:53:37 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMB binding
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201118132440.15862-1-zajec5@gmail.com>
 <20201118132440.15862-2-zajec5@gmail.com>
 <d09b2767-66df-fee6-cfc8-3eba116e10af@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <1d7629ab-dc2d-523c-0cf4-639d64600097@gmail.com>
Date:   Wed, 18 Nov 2020 22:53:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d09b2767-66df-fee6-cfc8-3eba116e10af@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18.11.2020 22:45, Florian Fainelli wrote:
>> +    pmb: reset-controller@802800e0 {
>> +        compatible = "brcm,bcm4908-pmb";
>> +        reg = <0x802800e0 0x20>;
>> +        #reset-cells = <2>;
>> +    };
>> +
>> +    foo {
>> +        resets = <&pmb BRCM_PMB_USB 17>;
>> +    }
> 
> You are missing a ';' here which is why the binding example did not build.

Ah, the very last minute fix... Thanks!
