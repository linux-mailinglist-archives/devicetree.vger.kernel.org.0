Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CF91704BD7
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:09:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232801AbjEPLJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:09:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232642AbjEPLIx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:08:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D2536E96
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:08:17 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f41d087b3bso108747395e9.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1684235222; x=1686827222;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m1LpyjjZMonw9/kv5KVhFhiQoZHaPN05Zx4jOqvZaE8=;
        b=oiPX4y03Z85nfVH+w57N6w7ANN0dMCednOSczZN+ExwLGXt4nwi++i6CT7x6sWNzWU
         bSQ8gdVgYf/yoouTuCek/42NNm8wKNLnAu5r0xRODfveCfbs8eHk2MLhAH32n6IyXb50
         rDs//uquI9W15vPQLpqdsIU3hW+KwO/lmlRIY13XjRHxG40UcoubqpGiTHXZi+yATspq
         omCrCxGorytBzEe5TCVlKkYnAuLvlsxABhgnp4LPrJeJDHM6TpaxYQ+vSTWszEf0w7W3
         fHPplefS5amHUwjwFBGk6bTQbxwrAXfbVSpcNpbVFDK3HfAVXDj5dcwnegT7Mzq+tx3/
         1v7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684235222; x=1686827222;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1LpyjjZMonw9/kv5KVhFhiQoZHaPN05Zx4jOqvZaE8=;
        b=loy4aTEMJblHTIjCI267GicTwpS6RKdYD7eBZhljWuqCtOgClIrB9Sn6KrGKbDcyh6
         DncNb6LTNa1MIjSGxZ/PhDfkaaPq3lf1Ko8/JGLyAyDWNtF0PyZ3xS2Whh15/xRIagCG
         01T9sldtiSmO9IvP8M5r/C0lClBxK2yEEOJiAz/2hEnnXXA57KsYNcUOq2eyKAEFwdle
         Ot4nn7mmBo33fy7N6OX25rGs8/74iDjbE3xOLxPpCFmpf5VQAeV6IE45rRxpvzRQ21Ny
         BUz7BcXbkE5FIBlF1oF/1jH3jpGCxqdD+D8z0l9jQqA4zFjC0STqc3264JNz8HrpdVm/
         gBDg==
X-Gm-Message-State: AC+VfDysUoJ5eBqGWyZ+ESY1QyXIEUgeDbpbGR8UopQabju2Rk8iSbF4
        iVuC8tFLnsJmD0Dik+34JizJ1Q==
X-Google-Smtp-Source: ACHHUZ7b9CN21Ga4zP5eeNabb+7qO6UH/bw1/zfJi3ac+r8hAOOMa2zaA+zOEsdNcIPostHeE14GaA==
X-Received: by 2002:a05:600c:2307:b0:3f4:2cf3:a542 with SMTP id 7-20020a05600c230700b003f42cf3a542mr16528533wmo.6.1684235221969;
        Tue, 16 May 2023 04:07:01 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id l6-20020a1c7906000000b003ee74c25f12sm1914714wme.35.2023.05.16.04.07.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:07:00 -0700 (PDT)
Message-ID: <4c7ac687-1c25-f818-8016-1a68fbf60140@monstr.eu>
Date:   Tue, 16 May 2023 13:06:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 09/23] arm64: zynqmp: Add dmas, dp, rtc, watchdogs and opp
 nodes for SOM
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Parth Gajjar <parth.gajjar@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1683034376.git.michal.simek@amd.com>
 <5d3777fdf91d114effe1921255a7ad71ef30d277.1683034376.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
In-Reply-To: <5d3777fdf91d114effe1921255a7ad71ef30d277.1683034376.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/2/23 15:35, Michal Simek wrote:
> There are couple of IPs which are enabled in origin HW design which are
> missing in SOM dt. Add them to match default setup.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>   .../boot/dts/xilinx/zynqmp-sm-k26-revA.dts    | 95 +++++++++++++++++++
>   1 file changed, 95 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> index dcc17e3ea961..3862168fa026 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> @@ -288,6 +288,101 @@ &gpio {
>   			  "", "", "", ""; /* 170 - 173 */
>   };
>   
> +&zynqmp_dpsub {
> +	status = "okay";
> +};
> +
> +&rtc {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan1 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan2 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan3 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan4 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan5 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan6 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan7 {
> +	status = "okay";
> +};
> +
> +&lpd_dma_chan8 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan1 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan2 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan3 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan4 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan5 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan6 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan7 {
> +	status = "okay";
> +};
> +
> +&fpd_dma_chan8 {
> +	status = "okay";
> +};
> +
>   &gpu {
>   	status = "okay";
>   };
> +
> +&lpd_watchdog {
> +	status = "okay";
> +};
> +
> +&watchdog0 {
> +	status = "okay";
> +};
> +
> +&cpu_opp_table {
> +	opp00 {
> +		opp-hz = /bits/ 64 <1333333333>;
> +	};
> +	opp01 {
> +		opp-hz = /bits/ 64 <666666666>;
> +	};
> +	opp02 {
> +		opp-hz = /bits/ 64 <444444444>;
> +	};
> +	opp03 {
> +		opp-hz = /bits/ 64 <333333333>;
> +	};
> +};

Applied.
M

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs
