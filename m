Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E73474EA6C
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 11:27:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbjGKJ1X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 05:27:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232026AbjGKJ0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 05:26:54 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF7526A9
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 02:24:08 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9891c73e0fbso1090499866b.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 02:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689067447; x=1691659447;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9riTVmn98ravk1kf9VetpeEIooDv8EP6TYpPc0Gyq/4=;
        b=ZcsYx2KMegNgL5H5mwoVc6+Eki+YDCems49LqDyCRR0tMyDBD1BPXMZUqw2Ymw9Wmo
         T+2Ejoe2hdztpcifiEODCvxQ09KJt5tiL/EZN6KQRG5duEAenUBsxDQ3ebGfu+X//7T5
         fBS+fx0Jc7hz4MHBZtk5cCOePyIXmzjNjQ2s8ue+8zCgODXo+8NbC4vN7imsk+1Yvxs4
         t50rVJyeKd7cZuTGlyHQOsQa5RljNAlPsWDuwH69aB2E5bA2mB4ohcdDCxtvWhj+9VmI
         JLVk6YbDWCyZF0u5GI7BL4csQ3R+TzI/lysj3H0VQjt9fx9ACPXsDR6on05dEJ9br0b7
         VrUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689067447; x=1691659447;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9riTVmn98ravk1kf9VetpeEIooDv8EP6TYpPc0Gyq/4=;
        b=VukHA1bd6zrfwRV4/BY0G8n51e5BU4Ph+i1r0RLbidtMcyW1DEB0+hedsUDTNJhPYK
         jVBpbKQS56fBmHydHCaeQb0rQKXEbQYG5oNh70cL/HDZNB9fTBJiZjmQdSfccwi/YKHc
         QPwbv4gBaaF80lOG05zO873S5693B1eSkp6nQsFhEbZe00OpLAIpwd/W3ORec4B7iHyz
         2Loz2RJ5jceBqqFtGdrl3XLnY+e0RpZfxQ/syi+2yKHjVY0kVuo0QCZHeQ4dBw0aqggt
         rCuKO89clPp2SC6e4J+a92HeAD15XYghCOz0p5Yqap/gsgNDlqyJzzMthkIe+Y22iIOr
         gY8g==
X-Gm-Message-State: ABy/qLZI68ae/wm5CFTDtnt6t6nmmVCkevH6GzfE+fB0A3CA2HaPhvy5
        dTPXGeWIReNqdW/op302LwqQVw==
X-Google-Smtp-Source: APBJJlH5jtjZoXkkXP8uicWU3SQdnDzJsT/tWEkbXi9ejkkaQwBXJriutjz87Tps4ySHGtEHnSQt+g==
X-Received: by 2002:a17:907:1b89:b0:988:15f4:fdba with SMTP id mz9-20020a1709071b8900b0098815f4fdbamr19505435ejc.14.1689067446981;
        Tue, 11 Jul 2023 02:24:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p27-20020a170906141b00b00977eec7b7e8sm905603ejc.68.2023.07.11.02.24.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 02:24:06 -0700 (PDT)
Message-ID: <7e1332bc-0757-bbe8-e087-7a0e52d6b97b@linaro.org>
Date:   Tue, 11 Jul 2023 11:24:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/3] arm64: dts: ti: Add reserved memory for watchdog
Content-Language: en-US
To:     huaqian.li@siemens.com, wim@linux-watchdog.org, linux@roeck-us.net,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     huaqianlee@gmail.com, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jan.kiszka@siemens.com,
        baocheng.su@siemens.com
References: <20230711091713.1113010-1-huaqian.li@siemens.com>
 <20230711091713.1113010-3-huaqian.li@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230711091713.1113010-3-huaqian.li@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 11:17, huaqian.li@siemens.com wrote:
> From: Li Hua Qian <huaqian.li@siemens.com>
> 
> This patch adds a reserved memory for the TI AM65X platform watchdog to
> reserve the specific info, triggering the watchdog reset in last boot,
> to know if the board reboot is due to a watchdog reset.
> 
> Signed-off-by: Li Hua Qian <huaqian.li@siemens.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> index e26bd988e522..77380e52a334 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> @@ -63,6 +63,12 @@ rtos_ipc_memory_region: ipc-memories@a2000000 {
>  			alignment = <0x1000>;
>  			no-map;
>  		};
> +
> +		/* To reserve the power-on(PON) reason for watchdog reset */
> +		wdt_reset_memory_region: wdt-memory@a2200000 {
> +			reg = <0x00 0xa2200000 0x00 0x00001000>;
> +			no-map;
> +		};
>  	};
>  
>  	leds {
> @@ -718,3 +724,8 @@ &mcu_r5fss0_core1 {
>  			<&mcu_r5fss0_core1_memory_region>;
>  	mboxes = <&mailbox0_cluster1>, <&mbox_mcu_r5fss0_core1>;
>  };
> +
> +&mcu_rti1 {
> +	reg = <0x0 0x40610000 0x0 0x100>,
> +	      <0x0 0xa2200000 0x0 0x1000>;

That's a total mess. reserved memory and IO address space. Nope.



Best regards,
Krzysztof

