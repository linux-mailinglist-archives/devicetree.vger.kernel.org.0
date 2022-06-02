Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEC8F53B3B6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 08:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230332AbiFBGlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 02:41:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230372AbiFBGlA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 02:41:00 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F732A307E
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 23:40:58 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id b8so4972197edf.11
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 23:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=llatoePH1yzIqeTSTwUWisKSH5M18dFT6pYJQDMFi7Q=;
        b=LfTg8lbBkthaaOoIVdNwmek5KzPK5Xl7iKlqLhl5N2b9xt1NnauUNH5b0zRqCwrAl6
         +nVZiYsROjD229eGdVCqmEtj7rFgaMYJeP7loEoQG/RKBAx7BdU2ZjrhRhAW1UNjoLpX
         7rYlEHSRmpNk9M+oELAz07OsDaXB8ATqqGQJ15aaVaqLgkfA3Dtis0JHBpVcGbJL7reA
         gwM7LvB3NQM2vp8BwSNtZRE4g2/FKlQ3LPIYpRl28EnxbWPpENVC3Ei7EN8ECV4meQou
         OugZVn0MmICRl7CgKB29V/5flRkBtJXVKoXvCEmPAjE7ZwQo1wbnAlRqnm2zsVwm4YEl
         9LDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=llatoePH1yzIqeTSTwUWisKSH5M18dFT6pYJQDMFi7Q=;
        b=hohJuhwO9mM2eMLw7No1cMvOU/BBcxeNCUuit+oHG2Jf1j9xpqOOgdFiIHOa88xxSU
         Z+P0mClG8hu5+a8nhNm3Z5mIhFANYpF5ARqT12uz7z7WoA2JtR+lvWzx+Y8IM/yEoTe4
         DqSLFixzsfzhxpfUmx/owf2ps2sC6YoQPQ6KrlwyDWHucBmTHgGgTYlnlcqgdC0bQE91
         F5X4BJEbVPicTe9acwqX8o1A6hB9OP8+P3hT4mw+ZO0DbZGPDnGkbHOqUB33Q56mVQGY
         8Np8z0iS1u6/bio++kqmz6WjlC0OJJ65iAwo5qMoBbpPIZK5owSFx4rjTElqG8NG5Ysu
         XH4A==
X-Gm-Message-State: AOAM531SekoXXVU0oIJJDAKLi/udb+LFwXJA4cqcpZd1JYwSduMfsD2l
        aDcksYhYPTews4kLas3ctbNQlw==
X-Google-Smtp-Source: ABdhPJz22IaG4hd9iRn2/XAusvA547svArzxVopo0Ev9WjUpfJULUqNV90gjmQfgVnA1C1ngksbOBw==
X-Received: by 2002:aa7:c0d1:0:b0:42d:ddda:7470 with SMTP id j17-20020aa7c0d1000000b0042dddda7470mr3619891edp.196.1654152057453;
        Wed, 01 Jun 2022 23:40:57 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id x18-20020a170906805200b0070b7875aa6asm148083ejw.166.2022.06.01.23.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 23:40:57 -0700 (PDT)
Message-ID: <209c4f72-7de2-929c-dac3-3fb10af2566d@linaro.org>
Date:   Thu, 2 Jun 2022 08:40:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 3/5] ARM: dts: socfpga: Add atsha204a node to Mercury+
 AA1 dts
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        amstan@chromium.org, upstream@semihalf.com
References: <20220601154647.80071-1-pan@semihalf.com>
 <20220601154647.80071-4-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601154647.80071-4-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 17:46, Paweł Anikiel wrote:
> Add atsha204a node to Mercury+ AA1 dts
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> ---
>  arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi b/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi
> index b0d20101cd00..dd1bfa7e1a78 100644
> --- a/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi
> +++ b/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
> -
> +/*
> + * Copyright 2022 Google LLC
> + */

Usually we keep here a blank line.

>  #include "socfpga_arria10.dtsi"
>  

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
