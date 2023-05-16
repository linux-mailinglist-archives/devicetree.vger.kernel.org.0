Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 554C5704BD0
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232685AbjEPLIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:08:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232728AbjEPLIT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:08:19 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A38A6A54
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:07:22 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f4c6c4b425so44449555e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1684235139; x=1686827139;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K8sgWdaXsCGFV0Z5HXvEODuykBpWRfti5JgH2bVoUyg=;
        b=MhfTthXQsiC/JBOl4CrGG+sG87DQcoNyspUinDPlpos1yOAoQJI4OHv3CV2oPQYYKR
         wdchb5E/L0hbJiIxiS/L6L021meYV0fow9cQJ/ft6YD15uo2NyIsKJVc3CcXRwVLE5pf
         FqdSlKCGm9LM9gkZ4CAEbmDiB4cMLGWjjbHPsYjBp/voBRY7kIwof7gJSfpWKP3oMPUr
         8K7fTLWQTNSlySnvSGNkJlin3Jg6C/BfrhEyDQSR1HvZx039Qx/lkT56gj9aI62ZwtsI
         Xi5a9Lopzm9mCj6UC5AjDalUBFUPUrMFaGqv3N+zGNOdZHDuV47+MOLIC35cA/Ampzq7
         VPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684235139; x=1686827139;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K8sgWdaXsCGFV0Z5HXvEODuykBpWRfti5JgH2bVoUyg=;
        b=DtlL/i7zZ7MyiGtNTZ8CtvPv0eSTuN8+L/VGy5lQp1JdSWr4WMICRUtiVnLUof3+ml
         GnRDn7JUB1fnle+DRReDJ/lhe0cYmK1oW4TJ4+bfk1sCEEVDIn4ZtY9Q1Xua/mFGWVDB
         L8Ghr0ekvaMJQ5Z+G9lDriObdeejYSmGaJRv2pz5UXD3f2NarAHerx2XGZGGtHFyH/N1
         pDylDsmDwLcDET5YNmxj6pXVpTwh4PCwfUWVO89yQCztfeYibSCOLDfW1gUM++SMxXhh
         9UIz4eD6FULSXIWkT94pw+OF2k/vc+V9s/qM5ucJzlywnTBKWEfn7FTBPVjXru5HMl+g
         fsIA==
X-Gm-Message-State: AC+VfDwFePXZU6HbY+TS93/LtSq24Nti1bdr31SAZFE5iYIhDuVCY8Ws
        s6jZLxc+O2/taUoCgV9M60sOoQ==
X-Google-Smtp-Source: ACHHUZ4/S1AoM1YqvH5ctv5xi1JB9jIVGk6B2NI3GauSZZDsVKZa4jKNcJ7EG2fc2kTEpuydm4geaQ==
X-Received: by 2002:a05:600c:214f:b0:3f4:23b9:eed2 with SMTP id v15-20020a05600c214f00b003f423b9eed2mr20407550wml.38.1684235139034;
        Tue, 16 May 2023 04:05:39 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id d9-20020adfe889000000b00307972e46fasm2178890wrm.107.2023.05.16.04.05.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:05:38 -0700 (PDT)
Message-ID: <4e5fc3ff-5b70-20a9-101a-cba9d20fc961@monstr.eu>
Date:   Tue, 16 May 2023 13:05:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 07/23] arm64: zynqmp: Add pmu interrupt-affinity
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
        Harini Katakam <harini.katakam@amd.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Parth Gajjar <parth.gajjar@amd.com>,
        Piyush Mehta <piyush.mehta@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Hancock <robert.hancock@calian.com>,
        Tanmay Shah <tanmay.shah@amd.com>,
        Vishal Sagar <vishal.sagar@amd.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1683034376.git.michal.simek@amd.com>
 <4c6674bf7e048e7370248e50ed3d011d604d020e.1683034376.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
In-Reply-To: <4c6674bf7e048e7370248e50ed3d011d604d020e.1683034376.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/2/23 15:35, Michal Simek wrote:
> From: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
> 
> Explicitly specify interrupt affinity to avoid HW perfevents
> need to guess. This avoids the following error upon linux boot:
> armv8-pmu pmu: hw perfevents: no interrupt-affinity property,
> guessing.
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 61c7045eb992..a117294dc890 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -161,6 +161,10 @@ pmu {
>   			     <0 144 4>,
>   			     <0 145 4>,
>   			     <0 146 4>;
> +		interrupt-affinity = <&cpu0>,
> +				     <&cpu1>,
> +				     <&cpu2>,
> +				     <&cpu3>;
>   	};
>   
>   	psci {

Applied.
M

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs
