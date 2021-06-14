Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DBEE3A6790
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 15:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232894AbhFNNTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 09:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232825AbhFNNTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 09:19:43 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86DD5C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 06:17:30 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id f2so14513877wri.11
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 06:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XFmTmIPfKkU5RhaamFAr4BhwN+bI45kmR+Vj5S8aLqU=;
        b=MI23UFo2gw40h05XL7Pjtm04CvcZuvV3D76vFSblYhKAqMRSwGee6QT2SOz5MWEC5p
         wPEYoGXmtBbJp25N/LLJKUBrNpgzIc0BeeTZOAABDlQ7+Kg1DvWf+hXvrhCxYFDizznS
         VyWrPvoU1K+x+qtLSBXxlAILt8Gh5ueBIqmYycf+a5XsBThzzzh+7/w6T8yxakKT5hUv
         4UfqScr2UVlMZ6xnhJmZ4gsN/GTjCTHk+V3Onk3Idn4h3ufVKvVR12QJclD+k8LHYlwb
         VeB6yNchqkFxqKmchayU8ty8HDq7xFYh4rpVSWJplvrZzJf7blR5ZAVZoJ7iLaHnpo2o
         EUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=XFmTmIPfKkU5RhaamFAr4BhwN+bI45kmR+Vj5S8aLqU=;
        b=RHxvsFxVcovf0vsY3d8pXQrok262kwOHgcJOl2aTYyLIaCBc5fGqLrURPaXBuoFGXC
         GAwkCHHzJrIPTTtXZts/1ajeZ1/WtHon5JLdMBnWT6Umk4Fn9YhFvThoZsxXgw8hKyw3
         tOvX9KPxtcEImjoXWrZi4KObDjbAyyqdO5w2vL1yQEwEpWI1bus4w8TAqAoHbns3vtpl
         vUrdX3vQX3XI3U9CHyhZy+jlWoDzK+Td6JwMiaageSf0o15zNAg/GD1Ih/ZBMDBnmy9j
         QArivWMAUtD6MnSXwFClv9YEvmMJgJSHnv68WxRNrslNuMobGji2M2fU5YwipXx1GwdP
         0ZHQ==
X-Gm-Message-State: AOAM5335xfnTF0vMxY7MxlQN7M7Lz5geapHdUwQ+noOJMCG3Qcjs6o1u
        FV+V6/xsMGNx1MV/NtY893cB/g==
X-Google-Smtp-Source: ABdhPJxjXjeRZW524D+N0JUBk4ULOtEQmBImEKhaFK8PHTuHPrQ61s0G80mnJlVwIQRwoR4b6kWf8g==
X-Received: by 2002:a05:6000:18f:: with SMTP id p15mr18683034wrx.102.1623676649106;
        Mon, 14 Jun 2021 06:17:29 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:f0d4:3c02:f06a:77bb? ([2a01:e0a:90c:e290:f0d4:3c02:f06a:77bb])
        by smtp.gmail.com with ESMTPSA id f13sm16372661wmg.7.2021.06.14.06.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 06:17:28 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: vim3: reduce cpu thermal fan trigger
 temperature
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Nick Xie <xieqinick@gmail.com>
Cc:     robh+dt@kernel.org, khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Nick <nick@khadas.com>, artem@khadas.com
References: <20210609012849.797576-1-xieqinick@gmail.com>
 <11da3ae4-91d4-1e51-c652-e4ad518f13bd@baylibre.com>
 <CAP4nuTVMZV7pz8NrM2MHcZzBdueRXjS+KYsU4=cQ1CB67gr_Hg@mail.gmail.com>
 <ee3341d9-350e-a84d-6836-3401be679b2a@baylibre.com>
 <CAP4nuTUt1vQjVP=3_NYaeu+m47f78ru6-MgGBiAqLeU9fJAsNg@mail.gmail.com>
 <09c65310-9441-9b97-d9ae-4695f0dd16af@linaro.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <259e150c-f25a-86cf-1109-b7370b5d7c10@baylibre.com>
Date:   Mon, 14 Jun 2021 15:17:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <09c65310-9441-9b97-d9ae-4695f0dd16af@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
On 11/06/2021 09:45, Daniel Lezcano wrote:
> On 11/06/2021 09:30, Nick Xie wrote:
>> Hello Neil,
>>
>>
>> Neil Armstrong <narmstrong@baylibre.com> 于2021年6月11日周五 下午3:15写道：
>>>
>>> Hi,
>>>
>>> On 11/06/2021 08:54, Nick Xie wrote:
>>>> Hello Neil,
>>>>
>>>> The MCU FAN won't work until the temperature reach to 80 degree centigrade,
>>>> Do you think the temperature is too high?
>>>
>>> I think 80 is tool high, but I fear 50 is way too low, but if you think 50 is OK after you ran some tests, just add it to the commit log and it's ok for me.
>>
>> I think it is OK, we use it for a long time.
> 
> 50°C sounds like normal temperature with regular load. That means the
> fan will be switched on most of the time when the board is used.
> 
> And this change may be put in regard with the other trip points in the
> common DT. For instance, enable the fan when reaching 80°C but set the
> passive trip point to 75°C instead of 85°C.
> 
> All that depends on the hardware characteristics and TDP which are in
> the TRM normally.
> 

I don't think such data exist in the datasheet or other public document, but the vendor source tree
sets:
- passive: 75°C
- hot 85°C
- critical 110°C

we set upstream:
- passive: 85°C
- hot 95°C
- critical 110°C

so maybe we should lower the passive & hot trip points, then the FAN 80°C trip point would be ok now according to Daniel's explanation.

Neil
