Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97D373F697F
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 21:05:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234082AbhHXTF4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 15:05:56 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58316
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234259AbhHXTFw (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 24 Aug 2021 15:05:52 -0400
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5158D4076C
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 19:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629831905;
        bh=imZyE0myVr/4RzrKTOaKGpxnnbHBTwOKB1lVbc5Dymc=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=bq1pawkCnzq6FnEts/2voBGUB9IkW5mm/KLXfdnp0cSRj4eewGNv6C6K728HZQ3SL
         OtVYDNzAp2fYdSXp1bilXEK2kBfFiWfzoi5dexhCco0x2SxZK4a4qHCtnyZVYdBGD6
         Eij0kPRZUcBjUwp5B0+1hP+yJJrMDFOMIxUWe5i5vu3YsPtrn5/ZdkBmPzQAgEFnBX
         8sS+GaRUDJD4AXbbc9fCCvyWwROH6sRmCfReP8d9raVWS2nfF+R1hU6eIm90gdZxcT
         2HWO6MjmOrx1OTy9otZJJlzubqALak4EEb8kWlQdpq7+9cA3mGrAtzHlX/PXdHXbcF
         5Q7SNrsRhgFLA==
Received: by mail-wm1-f71.google.com with SMTP id m20-20020a7bce14000000b002e6fd85b6dfso4409480wmc.7
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 12:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=imZyE0myVr/4RzrKTOaKGpxnnbHBTwOKB1lVbc5Dymc=;
        b=MjbYyiDn65/D4gWsSRTsbHZODTQcPmG5B2zTALpQZ1Slu+B0ZS6W/usH9LhmgRB6/9
         +XevpE1CS527w0iWCa/cErGkCsXD3wHDxZ4VIx1YFgyF83n8J/FeySOnZgGQjYbX69av
         wJ8HDTTiTD4UnDa1vnVCIrs8oAbFbMmDQcY8Ecjcr5H6oSvsjdFinokrrbV+nHy6lQQI
         Y/8FkZxRsNTQtlQPcUnWAYjNKybfj9Ikw6jTfcr40H0GYEIaytXshBuhn/BpZ4MkAut9
         NkItn/QesUk9kNpOniIMVF9VT1H0g+O/RtoPcAQMZrZRjTY/OVEULC9gTk1eOBVGLOpD
         bFpQ==
X-Gm-Message-State: AOAM532yhn+xwveHq+bBMXkJQF7epk/Axca97drCsd2vJLM0805PM3/t
        mPswjMOoBh26xVvv+e5TVUCqkWpzHlBNQTIrqYeNfjH0/fIBGwa1RDeSlZDci6URAHBvWvhB/Mt
        37by0WXeXUF0e97EKXk2aMbT2Du8TFZtv8LLA7Kg=
X-Received: by 2002:a1c:7413:: with SMTP id p19mr5591078wmc.30.1629831904758;
        Tue, 24 Aug 2021 12:05:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJza/ERSPVmnyN7SqaIwhIMDqCYelq2Xjc/rr4UPcc2KdmL1ksd3r2LvJdQvXH7L1vDQ5Ur3vw==
X-Received: by 2002:a1c:7413:: with SMTP id p19mr5591045wmc.30.1629831904577;
        Tue, 24 Aug 2021 12:05:04 -0700 (PDT)
Received: from [192.168.0.103] ([79.98.113.188])
        by smtp.gmail.com with ESMTPSA id n14sm14742395wrr.28.2021.08.24.12.05.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 12:05:04 -0700 (PDT)
Subject: Re: [PATCH 4/6] riscv: microchip: mpfs: fix board compatible
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Atish Patra <atish.patra@wdc.com>,
        Yash Shah <yash.shah@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
 <20210819154436.117798-4-krzysztof.kozlowski@canonical.com>
 <CAMuHMdX8dBiYadAN8OQpds_bMbLReJy+u6apGe=RZzfEE=BJbw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <c9c9d21f-e820-de1e-b5a6-cd6054dda3ec@canonical.com>
Date:   Tue, 24 Aug 2021 21:05:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdX8dBiYadAN8OQpds_bMbLReJy+u6apGe=RZzfEE=BJbw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2021 17:29, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Thu, Aug 19, 2021 at 5:45 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>> According to bindings, the compatible must include microchip,mpfs.  This
>> fixes dtbs_check warning:
>>
>>   arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: /: compatible: ['microchip,mpfs-icicle-kit'] is too short
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
>> +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
>> @@ -10,7 +10,7 @@
>>
>>  / {
>>         model = "Microchip PolarFire-SoC Icicle Kit";
>> -       compatible = "microchip,mpfs-icicle-kit";
>> +       compatible = "microchip,mpfs-icicle-kit", "microchip,mpfs";
> 
> I have the same change in my local tree, but didn't get to submit it
> yet, so this part is fine ;-)
> 
>>
>>         chosen {
>>                 stdout-path = &serial0;
>> diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>> index b9819570a7d1..cb54da0cc3c4 100644
>> --- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>> +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>> @@ -7,7 +7,7 @@ / {
>>         #address-cells = <2>;
>>         #size-cells = <2>;
>>         model = "Microchip MPFS Icicle Kit";
>> -       compatible = "microchip,mpfs-icicle-kit";
>> +       compatible = "microchip,mpfs-icicle-kit", "microchip,mpfs";
> 
> As this file is the SoC .dtsi, not the board DTS for the full
> Icicle Kit, the compatible value should be just "microchip,mpfs"
> (to be augmented by the board DTS).
> And "model" should be "Microchip PolarFire SoC".


Sounds good, I'll fix it in v2.


Best regards,
Krzysztof
