Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C55696F6565
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 09:02:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbjEDHCt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 03:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjEDHCs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 03:02:48 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 290911731
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 00:02:47 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc070c557so141764a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 00:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683183765; x=1685775765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pbV0wCDUzO3Tu3yaV7O59QN9FF6Th2fcb/CiXAM/nCY=;
        b=nFlJkk1sG6kebQS1kAF/aJOFVc8NIAeRc2LPbtsV8ff4ZCEXgjwj+aV9iVfg/WQ2PN
         Q9vxqH2A1hpKii4BmceF11Sip82QJCEytu3U8RgdaE1BBmXLxWoQM3Kyta/qfHAhfe8d
         O2KtNIENEW9Ca5DCVzqgXMVGwlUFPBjdb1gnQOxu8+rWCNzZPaMcAHe74OSQ04U2yzgh
         KeYs61qjjGmqwHjmTzz/zp2j0MRswS5RCsmL+GLi5/GBqM4ryF4wHyIvL1hJ3agRvCRP
         uTkYXPFIsiZ9im32TSfZrTNJenrmMX6RjQTLlF7EcIqmH3lnvqGntSimbEPJT2wlIbDL
         G9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683183765; x=1685775765;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pbV0wCDUzO3Tu3yaV7O59QN9FF6Th2fcb/CiXAM/nCY=;
        b=Qp4t2RSXxjxMl4G4kMPL3MgNQZz8P8iUwUcEDjvmqLzyqci10OY6E0mebNHaIiqrGL
         AIZodkQVPnUkM5UeyMF4t4ruJlZcWz6h16IJjsn766NmDBRmgeByAGLg4XWfAiRQs5yS
         IA36nv1jjvBH3Nkvdi7IHD0LBzvmISpaS/wL0WpmyKltfZZiIT/hinEEwjjKTdY11GxK
         MtX5OJwB0FfEzCUy1LKxSlK7Cd++1WAZerKBqPjMlV7Tweh4rvceR/NeWeqNWP837mjy
         ccJZHEP2x8QvzVGpTWrKVpQyV1wkw8r1p1ovfzsBICZ03t5tKYdnfIWQ4MaZJX4SMFPv
         Skgg==
X-Gm-Message-State: AC+VfDzuqn6x73+jRGrofDgIxF0iOrACfAmB+m5Z599YVli0DpVVu349
        N3hYRyzke1eyfHwvkguJAN9TOg==
X-Google-Smtp-Source: ACHHUZ6IWj+8SVpvEYSIhXSJfJlWur0JzWP++zPRoX6li2NKT8V3QIYIpZlOCXhtlUd3+knxuvlkjQ==
X-Received: by 2002:a17:907:9705:b0:94e:1764:b0b5 with SMTP id jg5-20020a170907970500b0094e1764b0b5mr5854654ejc.69.1683183765578;
        Thu, 04 May 2023 00:02:45 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id gn2-20020a1709070d0200b009545230e682sm18120207ejc.91.2023.05.04.00.02.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 00:02:45 -0700 (PDT)
Message-ID: <c0e0da31-f3b9-69c9-807e-8f2cb24eddda@linaro.org>
Date:   Thu, 4 May 2023 09:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v3 3/3] regulator: axp20x: Add AXP15060 support
Content-Language: en-US
To:     Shengyu Qu <wiagn233@outlook.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        wens@csie.org, lgirdwood@gmail.com, broonie@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     andre.przywara@arm.com, conor.dooley@microchip.com
References: <20230421150816.10513-1-wiagn233@outlook.com>
 <TY3P286MB2611DA5F918F90491A3AA02298609@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TY3P286MB2611DA5F918F90491A3AA02298609@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2023 17:08, Shengyu Qu wrote:
> The AXP15060 is a typical I2C-controlled PMIC, seen on multiple boards
> with different default register value. Current driver is tested on
> Starfive Visionfive 2.
> 
> The RTCLDO is fixed, and cannot even be turned on or off. On top of
> that, its voltage is customisable (either 1.8V or 3.3V). We pretend it's
> a fixed 1.8V regulator since other AXP driver also do like this. Also,
> BSP code ignores this regulator and it's not used according to VF2
> schematic.
> 
> Describe the AXP15060's voltage settings and switch registers, how the
> voltages are encoded, and connect this to the MFD device via its
> regulator ID.
> 
> ---
> Changes since v2:
>  - Rebase to AXP313a series v10 [1] + newest (20230420) -next branch
>  - Fix some whitespace (Andre Przywara)
>  - Rename swout to sw to keep up with bindings (Andre Przywara)
>  - Add check for setting DC-DC frequency (Andre Przywara)
> 
> Changes since v1:
>  - Nothing
> 
> [1] https://lore.kernel.org/linux-sunxi/20230401001850.4988-1-andre.przywara@arm.com/
> 
> Signed-off-by: Shengyu Qu <wiagn233@outlook.com>

This was not applied, so you can still fix it.

Broken patch trailer / SoB.

Best regards,
Krzysztof

