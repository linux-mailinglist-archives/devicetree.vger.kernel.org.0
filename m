Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C0B870680C
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 14:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbjEQM0D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 08:26:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbjEQM0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 08:26:02 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49F85E77
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 05:26:01 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-96a2b6de3cbso104188866b.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 05:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684326360; x=1686918360;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8BF8szOaDaK/L0QmbrAoJ/Wjb3d8ACeN/7ZR5Tb+EZs=;
        b=cPngGdM4i7qJ2bdf+dAXdwtUBhd3zZzzgIFasm4uvJsJOKfkWjgEhb7SsZzn+YnC1P
         VkJvj/ZHXxrS+Cm5odyh5RpVbmZtYVi+oXHwk7Cuad0tjQBDcsoLof3f6zhIVvtulC9R
         qyK9q2SixMYh+z3NlM9yvVvdPSb2R6CZj77N6aYqRa3G4j5nVQNa0S9/1jaWvfyXEhVx
         lKpQOuhy2NnfODX1MJkdf+iIs2zzIM2b6U9qAvh7nWv8njp76ahjubAVnvMBH8toVtyP
         GwFlKmWh03AUKFd6ujW0fpFUUqXqb7zaCXF7LKcJMGAttMy/G3gbF/3P5ImQAqK0rm8S
         iAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684326360; x=1686918360;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8BF8szOaDaK/L0QmbrAoJ/Wjb3d8ACeN/7ZR5Tb+EZs=;
        b=ea9blRXPysPFKDcwYF38RVDJx7RB53azI7KRkmFU7rwoRC/yVmd1g1JmUSQUB1DoxC
         htq4aPlxQaSyh5uS4I0pNN91CYXGIj9fclT9FOrtkhXzPTbkuelxIbi0TnpZUlkO81tA
         9f1PkT1+ogFwoNY5R1ADwS14eHAPsFwVZS79eS5v/VVKAOvVJwepZdRGTV0RpQBwania
         ymgApaARJg2SaCziXVYzfLcy/uZ9Vd9mtQZWgQnh82CgHXOabeXlFZ2kQb/aImfF+8VF
         cI3STf9vs7i5lgZO/t1liFe9fRPYnyZ304sIimj8Xx5cQmcTsDnin3Nj62CW5NP4rvSK
         nJFg==
X-Gm-Message-State: AC+VfDwvzl5o+r7oB2t6vLT3YoZouJFUx8g7brW/PNkTgoo12td3NtS4
        85kk28eQWlT4ygQ2IQuCT43GRA==
X-Google-Smtp-Source: ACHHUZ6HNTd3s0nBmdIcMwsu5zxtK0RN3cvNFdy3wRSgesmGDinq2Q7uaXE3hdZZYoeQhPPcwXszBA==
X-Received: by 2002:a17:907:6d8e:b0:966:5c04:2c61 with SMTP id sb14-20020a1709076d8e00b009665c042c61mr32193919ejc.8.1684326358847;
        Wed, 17 May 2023 05:25:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id w23-20020aa7cb57000000b0050b57848b01sm9146132edt.82.2023.05.17.05.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 05:25:58 -0700 (PDT)
Message-ID: <3e74c04c-827d-6824-548f-a1d37913ac96@linaro.org>
Date:   Wed, 17 May 2023 14:25:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] arm64: dts: microchip: sparx5: do not use PSCI on
 reference boards
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lars.povlsen@microchip.com,
        Steen.Hegelund@microchip.com, daniel.machon@microchip.com,
        UNGLinuxDriver@microchip.com, arnd@arndb.de,
        alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Conor Dooley <conor@kernel.org>
Cc:     luka.perkov@sartura.hr
References: <20230221105039.316819-1-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230221105039.316819-1-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 11:50, Robert Marko wrote:
> PSCI is not implemented on SparX-5 at all, there is no ATF and U-boot that
> is shipped does not implement it as well.
> 
> I have tried flashing the latest BSP 2022.12 U-boot which did not work.
> After contacting Microchip, they confirmed that there is no ATF for the
> SoC nor PSCI implementation which is unfortunate in 2023.
> 
> So, disable PSCI as otherwise kernel crashes as soon as it tries probing
> PSCI with, and the crash is only visible if earlycon is used.
> 
> Since PSCI is not implemented, switch core bringup to use spin-tables
> which are implemented in the vendor U-boot and actually work.
> 
> Tested on PCB134 with eMMC (VSC5640EV).
> 
> Fixes: 6694aee00a4b ("arm64: dts: sparx5: Add basic cpu support")
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
> Changes in v2:
> * As suggested by Arnd, disable PSCI only on reference boards

Patch seemed forgotten, so I applied it.
https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux-dt.git/log/?h=next/dt64


Best regards,
Krzysztof

