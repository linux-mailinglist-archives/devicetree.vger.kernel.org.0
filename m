Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9C97490567
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 10:49:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236027AbiAQJte (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 04:49:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237756AbiAQJte (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 04:49:34 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8C6C061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 01:49:33 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id d18-20020a05600c251200b0034974323cfaso22917696wma.4
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 01:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Vg9TQPfiwbzin51QOtdaT0yqFESMK7CEa0TiWv9naqQ=;
        b=d4zwYR0mg1HNL3eDMrDhGWAmrf+whJSONyPNxNFozfoSK+yh8VDwuaMhmV6cKtxGVj
         9zuNDNmHGxJJ9pQ9tresNEg3axwDF1wJUf8f/W2gAcF4HftJKcXPd4gcWdfraOD/CLXT
         D8TXdPwaX8bc3NehAtHStdQZxh0n2AsAcAYv/FzA5aE+Q8nuXfUhXd7K8+m3zbaCzShk
         IbyCoXL8PcWNFHsxPL945AApzUJUpg/U9Aau8jiR+Oa81Fnq8ViWbcP6ouHKUAUUqgGx
         kD2VVFv+FDgq8ytTb6blBx/doDbBo7Inw0BgM2TLqRUdvmnVDp5pX/ujYHxnNyVmst1G
         v3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Vg9TQPfiwbzin51QOtdaT0yqFESMK7CEa0TiWv9naqQ=;
        b=8GnWQX64UeyzLERXzoqwjaZ31ekzVYP5CFQeNIiuATgwzG97H+S1+E3NCL6LAj9COt
         b6hLOTKrT3tRWs1usK6lNpSboB3omWI/RNqe+JjK9INGlsmhOQuzGFEUnnrTg7PWc4je
         Ocm26yY6L3gE2sBbuUo8YCS78tgQwm1KMPgCRyh0wMKDyTfuL+diX7IXtSppbUcMJa59
         Oh03/Aiq5VdBCwESm4VikD0sL+Zs9a5AlXqMRdJBtrzjYsf0BqamkvprHSKgYV+Ng9+L
         MBbkWMaSL6QsIuORrka5/worZmE9Hs4L+rBritujdMmjmg3rLtzJg32zK1pioLxXuRlk
         FH4A==
X-Gm-Message-State: AOAM533FDDJtU8Mdcm+Lzww5GZGvUodKtjWBs+ZacTrHlpTQMHmPmej3
        IEUevT4xrCX40L+eEucRWiYwjQ==
X-Google-Smtp-Source: ABdhPJyh1eh2BLJBzybhLeS09xCjVxSfDHho2HHQ50Xo+VKxFruVkfSCg0deONBUrva77Q2BwgC7Zg==
X-Received: by 2002:a5d:64c1:: with SMTP id f1mr3716254wri.87.1642412972276;
        Mon, 17 Jan 2022 01:49:32 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:c004:9fe1:fbda:2d0c? ([2001:861:44c0:66c0:c004:9fe1:fbda:2d0c])
        by smtp.gmail.com with ESMTPSA id 1sm11396338wry.46.2022.01.17.01.49.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 01:49:31 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: dts: meson-axg: add missing reset-names
 property
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
References: <20220115093557.30498-1-alexander.stein@mailbox.org>
 <1jilulav4u.fsf@starbuckisacylon.baylibre.com> <4732096.GXAFRqVoOG@kongar>
 <1jfspnpoxh.fsf@starbuckisacylon.baylibre.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <0a51873b-429f-5905-5bf2-9406f578223b@baylibre.com>
Date:   Mon, 17 Jan 2022 10:49:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1jfspnpoxh.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 16/01/2022 18:30, Jerome Brunet wrote:
> 
> On Sun 16 Jan 2022 at 10:49, Alexander Stein <alexander.stein@mailbox.org> wrote:
> 
>> Am Samstag, 15. Januar 2022, 16:04:10 CET schrieb Jerome Brunet:
>>>
>>> On Sat 15 Jan 2022 at 10:35, Alexander Stein <alexander.stein@mailbox.org> 
>> wrote:
>>>
>>>> Bindings amlogic,axg-fifo.txt mandates that reset-names is a required
>>>> property. Add it.
>>>
>>> Binginds *mandates* ?? the bindings you are adding mandates that, not the
>>> previous doc, nor the driver.
>>
>> Well, under required properties 'reset-names' is listed as well as 'arb' is 
>> required, only 'rst' is optional.
> 
> I think there is a misunderstanding then.
> The arb reset is required, the "reset-names" is not - as long as there
> is single reset.

To be fair, it's not explicit in the .txt bindings at all:

-- reset-names: should contain the following:
-  * "arb" : memory ARB line (required)
-  * "rst" : dedicated device reset line (optional)

Anyway, this should be solved, it's pretty common to have reset-names mandatory even
for a single reset if a second one is optional.

> 
>> So when creating the .yaml accordingly this leads to warnings this patch is 
>> about to fix.
>>
>>> Modifying drivers and DT to accomodate made-up bindings requirement is
>>> disturbing.
>>>
>>> The bindings should not require that because the driver does not, as it
>>> stands. The driver requires the arb reset to be provided, not the name.
>>> Please fix the bindings.
>>
>> Nothing is made up. When creating the .yaml file I took the .txt documentation 
>> for granted. How should I know the bindings documentation is apparently wrong?
>>
>> When using your older bindings conversion [1] I'm fine with dropping this one.
>>
>> Best regards,
>> Alexander
>>
>> [1] https://patchwork.kernel.org/project/linux-amlogic/list/?
>> series=246453&state=%2A&archive=both
> 

