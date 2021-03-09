Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D7333321F4
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 10:29:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbhCIJ3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 04:29:18 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:60442 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhCIJ3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 04:29:03 -0500
Received: from mail-wr1-f70.google.com ([209.85.221.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJYfm-0005rO-E8
        for devicetree@vger.kernel.org; Tue, 09 Mar 2021 09:29:02 +0000
Received: by mail-wr1-f70.google.com with SMTP id y5so6163502wrp.2
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 01:29:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y+DJYItk5T3eq0Zhm1ybWYn6qoUDmEqSxzTazQTJ2WI=;
        b=s9FEjM590Y4AE6qFuhVWCXpeWAImKDjZUddThWowTZkFB6w2NjRV2GKRsQZ6JzDqb5
         +4NXw1waKyp2XN5nntCvC7ikiEo/9L5GwIR7xtMmRTunkgAN26A0Jtxh9TB+b5A4e3LD
         mPIr4U4rUK6Hbdrs28nVv77gBabHpGeBQT/ANBPooGgnTs9M7olvX01nR4eH56VYSTog
         uCW50bZzFfkF+dUFRPab7FVOURrcZaGrU6MeifVxBWvCtAI7YJ5cJb2ODSeV/59/3aFD
         DxnEl5zy0JYMReAQ8r4SMoMgq32AsERh/RA7uZTNUiOSIfoJmVc7ZG0xuOyfELmaE7sr
         3/Gw==
X-Gm-Message-State: AOAM531JXlTWgx50Cuugs4v9pacbmmzs6jbq8qkqcmSx+KK8BoJHdYV3
        0+Gd7iF4jjCDMp10PmXuLG+wyXY1qyWTspmzKE6jkx6tif6tERPnVEQEDdNg/oT4LCjEjjvAN+u
        degeokWf5lTRipD4nw4W/t+NpPx5vQkPYsHP4q/o=
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr2883337wmc.35.1615282142220;
        Tue, 09 Mar 2021 01:29:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxDwieLYn65IgohT+IWkBV46K/G4fBAkiPaWogqYazvknK77lVtKE1MtKYWFR3j0TqjOVKdbw==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr2883318wmc.35.1615282142034;
        Tue, 09 Mar 2021 01:29:02 -0800 (PST)
Received: from [192.168.1.116] (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id p14sm2967489wmc.30.2021.03.09.01.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 01:29:01 -0800 (PST)
Subject: Re: [PATCH v2] arm64: defconfig: enable Intel's eASIC N5X SoCFPGA and
 Keem Bay SoC
To:     Dinh Nguyen <dinguyen@kernel.org>,
        "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
References: <20210308174824.278372-1-krzysztof.kozlowski@canonical.com>
 <776e0c26-4f05-2a3c-1536-f730b9109b1b@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <7462eeec-5c4e-b4d5-cf94-9945042fc1d1@canonical.com>
Date:   Tue, 9 Mar 2021 10:29:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <776e0c26-4f05-2a3c-1536-f730b9109b1b@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2021 20:07, Dinh Nguyen wrote:
> Hi Krzysztof,
> 
> On 3/8/21 11:48 AM, Krzysztof Kozlowski wrote:
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>>
>> Enable in defconfig two Intel ARM64 architectures: the eASIC N5X SoCFPGA
>> and Keem Bay SoC.  This allows compile coverage when building default
>> config.
>>
>> For the N5X (and Agilex) enable also DesignWare SPI controller in MMIO.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>>
>> ---
>>
>> Hi Arnd,
>>
>> You asked me to check if all drivers are enabled for these platforms.
>> In general the answer is yes. In particular:
>> 1. Keem Bay is does not have much in upstream, but everything described
>>     in DTS is there,
>> 2. N5X shares a lot with Agilex SoCFPGA which already (mostly) is
>>     supported.
>>
>> Changes since v1:
>> 1. Enable also SPI_DW_MMIO
>> ---
>>   arch/arm64/configs/defconfig | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index d612f633b771..9f9adcb8b0e9 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -29,6 +29,7 @@ CONFIG_KALLSYMS_ALL=y
>>   CONFIG_PROFILING=y
>>   CONFIG_ARCH_ACTIONS=y
>>   CONFIG_ARCH_AGILEX=y
>> +CONFIG_ARCH_N5X=y
> 
> I just submitted a patch for this as well. From the looks of the 
> defconfig file, it looks like the platforms are in alphabetical order, 
> but then I see that ARCH_SUNXI is not in it's correct spot if there is a 
> rule for keeping things in alphabetical order.
> 

The rule is that order comes from savedefconfig, not alphabetical. This
way you avoid reshuffling of symbols on any future savedefconfig.

Best regards,
Krzysztof
