Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 575A379C9FA
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:31:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232633AbjILIbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232772AbjILIb1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:31:27 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 020CEB9
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:31:23 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40037db2fe7so57301925e9.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507481; x=1695112281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EuPbN8TWFRxPrQ6A6ygCi5l9ygWOcpZMpfHJfO7mfxc=;
        b=ZViW1r7IWznpM+hhpj3Jr6arbiAZC9xOA7Q/nh4fQLRRjbWxy/OsqbiiTRGla8r6PG
         emW1BSVPlgw8eIAC8nkDsQ6sNvPtNFTAABa99npa/ACkj03ffA3FPqiixFm340OAjdh3
         iWY1IT1UT0Wp3PbzlN4V9RE48sOZLpdDxCicef4wTLe7d49uVfgR6+HqCQs7ovzLzJ8H
         TepbgeSfgXEpleZGUYozpGxU/NtmLUmz6aCPyrvcqlUttbVLCaMjZ+ZVCvl4vj2U8qmi
         bcKVKf9WoUjD+5bgSChs7bndoLX1C7pmKsHX3ZSxZVgvi7prfAPfUiZOKeowL91HWeIw
         5+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507481; x=1695112281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EuPbN8TWFRxPrQ6A6ygCi5l9ygWOcpZMpfHJfO7mfxc=;
        b=mr+I6XEYwnrhb6oIjiE8cGUNsfB39lMoG0z+E5r8KU+y2E7PQzat5r6MwL7PGvBWsd
         oj8g+Vndr2nzqEvM1U7TErE0sROsE/y4wDMzoyGzWnnQl9TO32EEENzkEsJGxDSivr3k
         iEpKr/ADghWKbJniYxgKbS6Qf7Qy6w2IiWrOue0hyPsMUeHvCrSJzLSVhfUTn0ASd43B
         pAmkGYy/to0ioH9kWFBjSvU4GU3Ai74DRTVCd9fnA1wYl5sKRp88RqxeWJ4A1E8ExA8+
         ffO1rJRGaxzC8A/eF5aS7SJ9Q6wdk0/DB8LgnPykRv4bfTUy9wVqc39QeQaa22NiaCZv
         GShg==
X-Gm-Message-State: AOJu0Yzuw3bAT1N7lE8tmbrQoLWQ8zeV/EpThKosnZUrXsPzaN/meMeE
        AvrVEm9WfBnrs3WLNwmLUQnxtw==
X-Google-Smtp-Source: AGHT+IGcBBT6wOhCVomMeTq3Kvc61fMeSjhPUWmFmjot9Cxcj45vnlU9NKqKg0QurbXi6tUnv0pUmA==
X-Received: by 2002:adf:d082:0:b0:31d:c3d2:4300 with SMTP id y2-20020adfd082000000b0031dc3d24300mr8070196wrh.71.1694507481356;
        Tue, 12 Sep 2023 01:31:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id h13-20020a05600c260d00b003fe4ca8decdsm15516833wma.31.2023.09.12.01.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:31:20 -0700 (PDT)
Message-ID: <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
Date:   Tue, 12 Sep 2023 10:31:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to
 rk3588s-indiedroid-nova
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
 <20230908164156.2846-4-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908164156.2846-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2023 18:41, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
> found on the device. The buttons are documented as "boot" and
> "recovery". The boot button is used by the bootloader to boot into USB
> recovery mode. The recovery button use is currently unknown.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> index 1e2336d3065b..4c2d662d9c97 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> @@ -3,6 +3,7 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
> @@ -11,6 +12,34 @@ / {
>  	model = "Indiedroid Nova";
>  	compatible = "indiedroid,nova", "rockchip,rk3588s";
>  
> +	adc_keys0 {

No underscores in node names.

Suffixes usually are after -

Best regards,
Krzysztof

