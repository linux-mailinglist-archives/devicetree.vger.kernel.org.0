Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74D1427E6F0
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 12:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbgI3Kok (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 06:44:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725776AbgI3Kok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 06:44:40 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FF13C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 03:44:40 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so1219100wrl.12
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 03:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gE5J/D8JAGLzVHsrJSkWdUcZiiDO6Svi3j33Jox2T0Y=;
        b=IW1HI5JBd0SNcNWY0VRPDg3wvz6YRS7i/Epy4NA+v1C7BchXomntvyJXsGUu2pTO98
         6i/V2L7rkRHBXjXfT649zNzAQ4x9Nd2zo4hO5tbW9Y3oAYDdvLFhTgHyj1G85vv/Eu/C
         K87uMUsfcrTzLn/0cm0hJCjZvcoutHvyPy9zv4rbV/u1jizmrJYhXl5N2Nhop/df7Sk3
         9uDgQTSU5zROPPmPeTfg1GxqO/D0KXHTzFqzIN9/q+XHmqcfzYPJ2Q3b9e39TxbLzCC/
         13afZDYXJnCfowIJpJI0EufTAs/vfGaM9I91lAUxUiT+/lXYH4ChwwFt3un921ozASfO
         oZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gE5J/D8JAGLzVHsrJSkWdUcZiiDO6Svi3j33Jox2T0Y=;
        b=YWeXoeAbl2BH3SacYH3HWQ98JENph6WqscvvYgzXfOIDWggcd+m+Xyy9/0NMvPwr38
         mkGq1UvvOwEB6HomHCiOjmnSo2oR8uNV74KNV32+xiUj5KRLNTb+h9sWqH/R7htzW33S
         AVK1WMwBRpNx7f49uLVXILaF+F361AsNRtzKWcwDjdFQq79I2BuXLEnaHUSXSfE10ulo
         dnhKKfjWr5vuPth9buEu+nyvCjFHhpdFXDMNGuNEWK6gX/tHD5u3bCTGbohd/1HQvQSi
         9yKN9TjAEG7EsxL0Z/Gyo1YPx/XlpEFfEePyagKKgpk9c94vKz1OFnZyoQ5WVuapcMIR
         7qmA==
X-Gm-Message-State: AOAM533qHFSAYhMR4xrIM78azGMMEUrTuujRR27DVdlDQGB1L+MtvmXP
        u1M+lyFFMZlo+qUOSK0m0ShMtNjP3QcXJQ==
X-Google-Smtp-Source: ABdhPJydMLctE33a7b/ilEY3c85QFTQcQsQP/4exWaLX0TdpAPUZHCPjCjDNuN7CKxrAkA4qGRkP5A==
X-Received: by 2002:adf:e4cf:: with SMTP id v15mr2408611wrm.174.1601462676416;
        Wed, 30 Sep 2020 03:44:36 -0700 (PDT)
Received: from ziggy.stardust ([37.223.143.170])
        by smtp.gmail.com with ESMTPSA id 91sm2358812wrq.9.2020.09.30.03.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 03:44:35 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: cros-ec-keyboard: Add alternate keymap for
 KEY_LEFTMETA
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Benson Leung <bleung@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Douglas Anderson <dianders@chromium.org>
References: <20200925162604.2311841-1-swboyd@chromium.org>
 <16ec2003-462e-326b-8b3c-51d8b9ae9829@collabora.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <dffd01f9-9c81-080a-9470-4bdd5a857408@gmail.com>
Date:   Wed, 30 Sep 2020 12:44:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <16ec2003-462e-326b-8b3c-51d8b9ae9829@collabora.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/09/2020 10:04, Enric Balletbo i Serra wrote:
> Hi Stephen,
> 
> Thank you for your patch.
> 
> cc'ing Heiko and Matthias
> 
> On 25/9/20 18:26, Stephen Boyd wrote:
>> On newer keyboards this key is in a different place. Add both options to
>> the keymap so that both new and old keyboards work.
>>
>> Cc: Douglas Anderson <dianders@chromium.org>
>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> 
> Usually the DT changes go through the Rockchip dts or Mediatek dts tree, this is
> not a specific Rockchip/Mediatek change but for both. Are you fine If I pick the
> patch through the chrome-platform tree? I don't think there is any conflict.
> 

Please go ahead and take the patch through your tree.

Regards,
Matthias

> Thanks,
>   Enric
> 
>> ---
>>   arch/arm/boot/dts/cros-ec-keyboard.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/boot/dts/cros-ec-keyboard.dtsi b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
>> index 4a0c1037fbc0..165c5bcd510e 100644
>> --- a/arch/arm/boot/dts/cros-ec-keyboard.dtsi
>> +++ b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
>> @@ -46,6 +46,7 @@ MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)
>>   			MATRIX_KEY(0x02, 0x09, KEY_F8)
>>   			MATRIX_KEY(0x02, 0x0a, KEY_YEN)
>>   
>> +			MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)
>>   			MATRIX_KEY(0x03, 0x01, KEY_GRAVE)
>>   			MATRIX_KEY(0x03, 0x02, KEY_F2)
>>   			MATRIX_KEY(0x03, 0x03, KEY_5)
>>
