Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5497275C205
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbjGUIvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbjGUIvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:51:16 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF0472D6D
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:51:14 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-52166c7f77cso2397724a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689929473; x=1690534273;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WWspx2IYQWgel8o0dr3Ih3S9QDcbeM1ekG1DrVxBsU4=;
        b=Vg6eBxux0utGwzneIrFLIK4t/wuJYPMT0ytwc9fzYmdnostqUIlGsGDvFCPunsBsr5
         jE5oFQcUC6H1Ehy25EoW0uy9QLN22MUxRpqrHuCJqyrgopfjbb0kxYy8UtuQ34C64xbz
         Y4H22xYNuCMhFUi8BfsNccpJzs47xYiQodPmq35WimjejBgOpPYUwWlGLZGPJmDzXbK4
         XM5464YmaBa6Dk+V5VxAYv5n8n3hzMNnVZOZuVlqYyUr+jIlBXuXMUNDWbqISTpHvx40
         1lKWoEOvxyQvanb/wpUC7fqqeca2FwzvtLr5xNHgwsuFGLnmK9lcvFX4YjJ6AgbsU//S
         xPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689929473; x=1690534273;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WWspx2IYQWgel8o0dr3Ih3S9QDcbeM1ekG1DrVxBsU4=;
        b=KHCV5Ae85ftMy8hNxMYQQgKQtY/04hvxqHty2prYIEggSlkkHC5lwW1nzark0Zdm32
         CwfD5QmMGT1HpUB4huu+8KNUK5Z0Lq7FL4eIZKFbucwawDd5vgPUaczP7qtb+jihJWTP
         xn3CFqwqNkJtwhWUD4bRZIUnez621CafB4cFSTi/Lz6UkeVyDuGyWL0jU4P7eToTMMiZ
         2gSX0qeSnvIyg1vDy3Wt+TRWj9gELAebfwQH440HKiLaVd71A3H3iaB8tkfk+WM3ydtL
         50lR07F9KpBFlGqNO1VpFGdup9tlb+urD4wmL3wq26qqDO3G2MJ1kWBBvnHNZOrl5ssC
         l02Q==
X-Gm-Message-State: ABy/qLaJ2CpQbwVGdgRe9vUMg/lMophYVAiHLkXAvPLrWzkNhQi0rckx
        EPoEbD0pmR1t27UXcu2jMOD9Yw==
X-Google-Smtp-Source: APBJJlHswUAMaPYYUmOZTR/uuQsB7Y5HxnKKZjqPQBWqyHi8m8f2bgArHr5TZiAllx20tovk024Fqw==
X-Received: by 2002:a17:907:2bcb:b0:994:5659:1fa with SMTP id gv11-20020a1709072bcb00b00994565901famr1350353ejc.18.1689929473268;
        Fri, 21 Jul 2023 01:51:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p24-20020a170906a01800b00992f2befcbcsm1853547ejy.180.2023.07.21.01.51.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 01:51:12 -0700 (PDT)
Message-ID: <b8333812-df9d-368a-939b-3495878a2e5e@linaro.org>
Date:   Fri, 21 Jul 2023 10:51:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [v2 PATCH] arm64: dts: stratix10: add new compatible for Intel
 SoCFPGA Stratix10 platform
Content-Language: en-US
To:     Meng Li <Meng.Li@windriver.com>, dinguyen@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org
References: <20230721083821.1820881-1-Meng.Li@windriver.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230721083821.1820881-1-Meng.Li@windriver.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 10:38, Meng Li wrote:
> Intel Stratix10 is very the same with Agilex platform, the DWC2 IP on
> the Stratix platform also does not support clock-gating. The commit
> 3d8d3504d233("usb: dwc2: Add platform specific data for Intel's Agilex")
> had fixed this issue. So, add the essential compatible to also use the
> specific data on Stratix10 platform.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

From where did you get it?

Did you just fake a tag to pass the review?

> Signed-off-by: Meng Li <Meng.Li@windriver.com>
> ---
> 
> v2:
>  - Add SoC specific compatible as per Krzysztof comment
> 
> ---
>  arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> index 41c9eb51d0ee..46691e72f46b 100644
> --- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> @@ -491,7 +491,7 @@ usbphy0: usbphy@0 {
>  		};
>  
>  		usb0: usb@ffb00000 {
> -			compatible = "snps,dwc2";
> +			compatible = "intel,socfpga-stratix10-hsotg", "intel,socfpga-agilex-hsotg", "snps,dwc2";

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).



Best regards,
Krzysztof

