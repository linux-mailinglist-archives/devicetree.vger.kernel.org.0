Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54B1D4E1BB8
	for <lists+devicetree@lfdr.de>; Sun, 20 Mar 2022 13:42:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245091AbiCTMnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Mar 2022 08:43:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245088AbiCTMnr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Mar 2022 08:43:47 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0A7C1A847A
        for <devicetree@vger.kernel.org>; Sun, 20 Mar 2022 05:42:23 -0700 (PDT)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 54BD73F1AF
        for <devicetree@vger.kernel.org>; Sun, 20 Mar 2022 12:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647780135;
        bh=SdUWMHmZ193wUTPTiF7ipsfDvKGml1ecvzIaMqPfwIA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=bOOcD5ULx/b2QfC2o28RQkjhFjVqi6hLXOo6NL9WTXyXFd9dk970s3z4wau945C+X
         IENBklif2QrNXb4RbQhWAjxC3IWZh8GyuyNaprPgNgo5oNBQuHanby9E5tYOPdS7lm
         pnWIf3UDze4I52X/g86RCuaAq5S/66zB+UjrEw0JGlOtxzH3YNlEE6KudbZbJZOGPK
         PoSdJ+nYG4gIooVTGnpxrIKupGt3tjXbsWimSwpgQGMBbKP6mFUuB0IGDLI23q/UOq
         /KPzc3en862eoYDqKjiE3InonyOvAfPzMMfG78jt5BBuWiPqa38TYrHcZyWCma0Fwa
         c16M9tIBRlH1w==
Received: by mail-ed1-f70.google.com with SMTP id u13-20020a50a40d000000b00419028f7f96so4509899edb.21
        for <devicetree@vger.kernel.org>; Sun, 20 Mar 2022 05:42:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SdUWMHmZ193wUTPTiF7ipsfDvKGml1ecvzIaMqPfwIA=;
        b=AmVeqR7OtR/Y9G4je3FKhyEwzy8Htrbi+RkDjpFR6Fj4wnhJbQ9VASWJyK7cTLeevk
         JSoGYR59ftPXnCfzRHBgcwaz0jj/ZDWdt1Nm+oSGD5Sp+I9KEEDnjhRjDeM0Km+dMG4y
         ChOJNpeNCqK3ktcQe73tpvFtIhY6qzRgiUgzLqxGsPtJVpf7sHhiRf7eBMbctieLvfZo
         bN1SYa5/c/yfQEQqdo/8Tvf9o7aQQ9TwWRsnCQ+Tj2z3WihPjWzYEOqbT7FU71qmQyFP
         MruoD0tnj3vKbMV6AjCBPHhvE8+mQR++fiqMSaGpZXE8mXeXz7H7nY9nQQXsFiFFCdzX
         zpow==
X-Gm-Message-State: AOAM530wk2poWVy/fgMt794veWWOCzaBiCciyRbGrfculJs+W4KHDyIp
        0h2QTsGpDDPvBDp43OA18jYPRs9t6Ap0BsmRVwCQEk9q9IvVD/ak9DMfV+15sPUUolKqPr3WqhY
        cfD5DI3YYK1jUSqkvVvTgJeezjOa13ZOB4U3v17I=
X-Received: by 2002:a05:6402:484:b0:415:d931:cb2f with SMTP id k4-20020a056402048400b00415d931cb2fmr18507923edv.287.1647780134921;
        Sun, 20 Mar 2022 05:42:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFr8QjIsnRNA97/xRKhcXrC9HuSe14EplGK5C5xpZHxfHczzlRSkdY15/du/MsMa43QLRVZw==
X-Received: by 2002:a05:6402:484:b0:415:d931:cb2f with SMTP id k4-20020a056402048400b00415d931cb2fmr18507916edv.287.1647780134738;
        Sun, 20 Mar 2022 05:42:14 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c14-20020a170906340e00b006ce98f2581asm5788379ejb.205.2022.03.20.05.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 05:42:14 -0700 (PDT)
Message-ID: <74db8a20-7cce-ff86-7ae4-466416443ba9@canonical.com>
Date:   Sun, 20 Mar 2022 13:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [Patch v5 3/4] dt-bindings: memory: Update reg maxitems for
 tegra186
Content-Language: en-US
To:     Ashish Mhetre <amhetre@nvidia.com>, robh+dt@kernel.org,
        thierry.reding@gmail.com, digetx@gmail.com, jonathanh@nvidia.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
Cc:     vdumpa@nvidia.com, Snikam@nvidia.com
References: <20220316092525.4554-1-amhetre@nvidia.com>
 <20220316092525.4554-4-amhetre@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220316092525.4554-4-amhetre@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2022 10:25, Ashish Mhetre wrote:
> From tegra186 onwards, memory controller support multiple channels.
> Reg items are updated with address and size of these channels.
> Tegra186 has overall 5 memory controller channels. Tegra194 and tegra234
> have overall 17 memory controller channels each.
> There is 1 reg item for memory controller stream-id registers.
> So update the reg maxItems to 18 in tegra186 devicetree documentation.
> 
> Signed-off-by: Ashish Mhetre <amhetre@nvidia.com>
> ---
>  .../nvidia,tegra186-mc.yaml                   | 20 +++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
> index 13c4c82fd0d3..3c4e231dc1de 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
> @@ -34,8 +34,8 @@ properties:
>            - nvidia,tegra234-mc
>  
>    reg:
> -    minItems: 1
> -    maxItems: 3
> +    minItems: 6
> +    maxItems: 18

Still ABI break and now the in-kernel DTS will report dt check errors.

I think you ignored the comments you got about breaking ABI.

Best regards,
Krzysztof
