Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EEE2616EC3
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:30:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbiKBUaX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:30:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbiKBUaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:30:20 -0400
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7610CEB
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:30:18 -0700 (PDT)
Received: by mail-qv1-xf2b.google.com with SMTP id mi9so13285204qvb.8
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zlsVUP02C/nXWafKUDLtxedw9OewcUiX9b54C2ciy+A=;
        b=ypPe7bzoLjtl7oLGb9aZ5wGyY0VllGtdV2MEWB73WwsP5yJBsRxrjkdNGrI826RGq2
         D/wEhZKMKfjXdr8PR0Dnz4SOAsr1HvBQbDZk5mqLK3vAemDjdG3cYvl06oMmKQgX66/v
         1OQ+fbiIJPZAohKqg71xkyB+ouNabPopWeFP27RsCf0HiF02ARzqW+fd2b0c7FT8bYWi
         zdU/Uqh8q9fxGEL413/iQV7ww2CdEtZ3pW5FMG4vB3VbwPJuOUHlPSf6FTHog374eD1l
         AoH/P8hnhyr+1yvMp1/5GQSST5gxZxyedXncKYbiG0ewEZG2KD3QtMrv7QML+O7KnmYW
         1ggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zlsVUP02C/nXWafKUDLtxedw9OewcUiX9b54C2ciy+A=;
        b=PS5K4ZH0PneGW40SVHlDZAo+trul3L4PquUyNzCStmt6r4QNxBC5xlcirKs6gg1nFA
         9QrAAa+C57UWL86hRoofokKax8WL/52aUiuaN6N2J9T02TSPwaGtf4EL2m5pOQF6GtTI
         /9vVZQR+Tfy4dqYZK3tN8si+UluwbdvbrqVD5LPZeJoJoV+AejgDnYL6MkWrdW6ENDr6
         HEAHdbMFOlzTa+cTavt79Dq6A8xnKHDG5GYLzD8p35gXa0nidXCHNG6KB3RLAazLLJ7o
         AQGw+ITn8IKgAdjSGbbeCCI6gpJYnmOSU8hV/Gj2rc1e8WgNFlCbJkfnjyW4lKeONN28
         m7mQ==
X-Gm-Message-State: ACrzQf0UrSY9N1Mey11dc4GyRsDmSNGU5jGqEjk45D99Y2tsirffTAA9
        WVexVn6UH28V93cilvTyhR3Ipw==
X-Google-Smtp-Source: AMsMyM55U1LRf6thA3H8hOqjM+a62eVneQXKXiuRyPQsi6R4j8Pk+yOZSN5lO6Vt59VPBQ3wASvYHA==
X-Received: by 2002:a05:6214:19cb:b0:4bb:6a28:83bc with SMTP id j11-20020a05621419cb00b004bb6a2883bcmr23372970qvc.102.1667421017998;
        Wed, 02 Nov 2022 13:30:17 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bj38-20020a05620a192600b006bb366779a4sm2817495qkb.6.2022.11.02.13.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:30:17 -0700 (PDT)
Message-ID: <5f13efce-844c-dd21-4e22-16b849dc3fa2@linaro.org>
Date:   Wed, 2 Nov 2022 16:30:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 4/4] arm64: dts: qcom: add sdm670 and pixel 3a device
 trees
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Thierry Reding <treding@nvidia.com>,
        Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20221101235722.53955-1-mailingradian@gmail.com>
 <20221101235722.53955-5-mailingradian@gmail.com>
 <bebf005c-3666-1442-47f7-dd000375af5d@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <bebf005c-3666-1442-47f7-dd000375af5d@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 16:26, Konrad Dybcio wrote:
> 
> On 02/11/2022 00:57, Richard Acayan wrote:
>> The Qualcomm Snapdragon 670 has been out for a while. Add a device tree
>> for it and the Google Pixel 3a as the first device.
>>
>> The Pixel 3a has the same bootloader issue as the Pixel 3 and will not work
>> on Android 10 bootloaders or later until it gets fixed for the Pixel 3.
>>
>> SoC Initial Features:
>>   - power management
>>   - clocks
>>   - pinctrl
>>   - eMMC
>>   - USB 2.0
>>   - GENI I2C
>>   - IOMMU
>>   - RPMh
>>   - interrupts
>>
>> Device-Specific Initial Features:
>>   - side buttons (keys)
>>   - regulators
>>   - touchscreen
>>
>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile             |    1 +
>>   .../boot/dts/qcom/sdm670-google-sargo.dts     |  519 +++++++
>>   arch/arm64/boot/dts/qcom/sdm670.dtsi          | 1216 +++++++++++++++++
>>   3 files changed, 1736 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
>>   create mode 100644 arch/arm64/boot/dts/qcom/sdm670.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index b0558d3389e5..4eb5d8829efb 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -124,6 +124,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm630-sony-xperia-nile-voyager.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sdm632-fairphone-fp3.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sdm636-sony-xperia-ganges-mermaid.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sdm660-xiaomi-lavender.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= sdm670-google-sargo.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r1.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r2.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r3.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
>> new file mode 100644
>> index 000000000000..fa3dee78e442
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
>> @@ -0,0 +1,519 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Device tree for Google Pixel 3a, adapted from google-blueline device tree,
>> + * xiaomi-lavender device tree, and oneplus-common device tree.
>> + *
>> + * Copyright (c) 2022, Richard Acayan. All rights reserved.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>> +#include <dt-bindings/power/qcom-rpmpd.h>
>> +#include "sdm670.dtsi"
>> +#include "pm660.dtsi"
>> +#include "pm660l.dtsi"
>> +
>> +/delete-node/ &mpss_region;
>> +/delete-node/ &venus_mem;
>> +/delete-node/ &wlan_msa_mem;
>> +/delete-node/ &cdsp_mem;
>> +/delete-node/ &mba_region;
>> +/delete-node/ &adsp_mem;
>> +/delete-node/ &ipa_fw_mem;
>> +/delete-node/ &ipa_gsi_mem;
>> +/delete-node/ &gpu_mem;
>> +
>> +/ {
>> +	model = "Google Pixel 3a";
>> +	compatible = "google,sargo", "qcom,sdm670";
>> +	qcom,board-id = <0x00041e05 0>;
>> +	qcom,msm-id = <321 0x20001>;
>> +
>> +	aliases { };
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		framebuffer@9c000000 {
>> +			compatible = "simple-framebuffer";
>> +			reg = <0x0 0x9c000000 0x0 (1080 * 2220 * 4)>;
>> +			width = <1080>;
>> +			height = <2220>;
>> +			stride = <(1080 * 4)>;
>> +			format = "a8r8g8b8";
>> +		};
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +
>> +		mpss_region: mpss@8b000000 {
> 
> Please call the nodes memory@

I think the actual recommendation is to use the purpose as name:

https://lore.kernel.org/linux-arm-msm/CAL_Jsq+66j8Y5y+PQ+mezkaxN1pfHFKz524YUF4Lz_OU5E-mZQ@mail.gmail.com/

https://devicetree-specification.readthedocs.io/en/latest/chapter3-devicenodes.html#reserved-memory-child-nodes
(second paragraph)


Best regards,
Krzysztof

