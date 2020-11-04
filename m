Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A61102A63E2
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 13:07:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729621AbgKDMHe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 07:07:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729616AbgKDMHd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 07:07:33 -0500
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46721C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 04:07:33 -0800 (PST)
Received: by mail-lj1-x244.google.com with SMTP id m16so22701600ljo.6
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 04:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8tm5i+ZFOagCmVkR6cOI460GL+wvFrcOUroaZkv21uI=;
        b=CL7crx3hVoE5TNjdkBiRjScpXhTyUU4x+Q97B75sFswa9oPM6p3GUR3eZVB27fJisp
         5NHa+VTFzJZfCNhNKpL2hOzWeVSIBnoNQOXW+h0MxF/CmfWWi+Gs5gFP5L32tsEJkfAx
         QzZN/z1AzyBwaAS3QQlQkQ39O/twRzezhDzkDN8WtyBa5+b5BIbTbq0tUgc1pjZDq3TO
         AbB8dm1kVmAbEAC8+FxenoP8+RmVOZYgT9iALcgQ9Ms20be3TOI8xS71ihRzubhlZWjy
         i1wNU0ZKroTOKjqJkcXCu0V8zHF8A7tnlWR/8Gy3o577+mIp4mEHianDYsEIS74ZoVe8
         1dGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8tm5i+ZFOagCmVkR6cOI460GL+wvFrcOUroaZkv21uI=;
        b=pkGjYQvIkpGJrhTTTDVJkrpjavLh/D4NZgapPWl0eNGTw90r6KRv+BnGDr90oBQc6I
         Z9MWwM3k367e3U8QwN+NqD939kfaoQfMdKd+ajMFy3xPLBuY5B/pOM1urtQKkLfXMQJ5
         HVyHFxjPICB10c8TCOQ1KqczTmtVIiTGKEkmmpOH/0UIiqKLyBUhu0GxqcOiRVHMD+sQ
         1Nasze0ZKk/S9CCRSJlRh2FSrpPAT1f8jZSyfOMw9jejC+Ukvl50/BqpYpPb3oTT8Fd1
         qp5EL2ofcd/wQ+x/HAkFN3f9gToPVfo+/0VqGOOpfh4WVjO+xHP4XMEsyXrBMuXpxYgn
         gdkg==
X-Gm-Message-State: AOAM532BUIkUTwN4s9K1Oa4I5e64A4M9T9seaCD3wZPAMOoFclzYXmIO
        0a5HrqqpbBkiopCqBmAXdQo=
X-Google-Smtp-Source: ABdhPJzfQnXMHfPssIsPMJ7YD+9K2E7W/JAafZ0ADLN5mHgstjTYhudI9MNk3lNvBaau2WONuLqfpw==
X-Received: by 2002:a2e:91cd:: with SMTP id u13mr7072713ljg.281.1604491651598;
        Wed, 04 Nov 2020 04:07:31 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id 79sm381863lfa.307.2020.11.04.04.07.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 04:07:30 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300
 early DTS files
To:     Robin Murphy <robin.murphy@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201028101123.6293-1-zajec5@gmail.com>
 <20201028101123.6293-2-zajec5@gmail.com>
 <e0cf2414-453e-4f15-5e4a-1c34aa965cf8@arm.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <10118193-225a-05a8-e73d-7370e1866ea2@gmail.com>
Date:   Wed, 4 Nov 2020 13:07:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e0cf2414-453e-4f15-5e4a-1c34aa965cf8@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04.11.2020 11:35, Robin Murphy wrote:
> On 2020-10-28 10:11, Rafał Miłecki wrote:
> [...]
>> +        cpu0: cpu@0 {
>> +            device_type = "cpu";
>> +            compatible = "brcm,cortex-b53", "arm,cortex-a53";
> 
> Erm, there's no binding for that - did you mean "brcm,brahma-b53"?

I'm not sure if that's the same thing. Unfortunately I don't have access to
any Broadcom documentation.

Florian: could you try to verify that, please?


>> +            reg = <0x0>;
>> +            next-level-cache = <&l2>;
>> +        };
> [...]
>> +    gic: interrupt-controller@81000000 {
>> +        compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> 
> There's really no logical reason for a 64-bit system to pretend to be compatible with Cortex-A9. This is presumably GIC-400 (or maybe GIC-500) so it would be better to describe it as what it is.

Right, sorry, I'm totally new to the arm64. I just found that working and
noticed few boards using it. They may require tweaking too probably:

$ grep "arm,cortex-a.*-gic" arch/arm64/boot/dts/*/*.dts*
arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi:              compatible = "arm,gic-400", "arm,cortex-a15-gic";
arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi:           compatible = "arm,gic-400", "arm,cortex-a15-gic";
arch/arm64/boot/dts/apm/apm-shadowcat.dtsi:             compatible = "arm,cortex-a15-gic";
arch/arm64/boot/dts/apm/apm-storm.dtsi:         compatible = "arm,cortex-a15-gic";
arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi:               compatible = "arm,gic-400", "arm,cortex-a15-gic";
arch/arm64/boot/dts/arm/juno-base.dtsi:         compatible = "arm,gic-400", "arm,cortex-a15-gic";
arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts:             compatible = "arm,gic-400", "arm,cortex-a15-gic";
arch/arm64/boot/dts/freescale/s32v234.dtsi:             compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
arch/arm64/boot/dts/intel/socfpga_agilex.dtsi:          compatible = "arm,gic-400", "arm,cortex-a15-gic";
arch/arm64/boot/dts/nvidia/tegra132.dtsi:               compatible = "arm,cortex-a15-gic";


>> +        #interrupt-cells = <3>;
>> +        #address-cells = <0>;
>> +        interrupt-controller;
>> +        reg = <0x00 0x81001000 0x00 0x1000>, <0x00 0x81002000 0x00 0x2000>;
>> +    };
> [...]
>> +    pmu {
>> +        compatible = "arm,armv8-pmuv3";
> 
> Use the appropriate compatible for the actual CPUs - this is real hardware, not a software model.

Thanks!


>> +        interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
>> +                 <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
>> +                 <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
>> +                 <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
>> +        interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
>> +    };
