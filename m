Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B0C7567FF9
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 09:36:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231174AbiGFHgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 03:36:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230028AbiGFHgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 03:36:24 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B7122537
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 00:36:23 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id i18so24421586lfu.8
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 00:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ni67Hdlx8SdwRcOV0nh3z02m953cDwBmWOR3KarI5eQ=;
        b=eFWNXSlPB1AfAY7bz7WebRsM3DvxF2jlNqK/ANSHQy37sNp0p+voM6EFu0PpuVbrcQ
         LJj8MgT2dTuFZr7T7Tb1miA9oRaJoG5B1kuTuda3lbNfphdwziijafHy4j9YJ0Fc8ufk
         8OP4gWaUY/RN0AB61zs0ymAqz+6Z+LIWDZaQNplla0qmF6wuagQ9XW4AKaIb7YitDq+G
         09eZnirKjKqAcsT6taYIHCWXS3DJKW6iqVBk85pJGogZBmFrnNKOEVYOPEy60XxUww/z
         +oGg5m3dc5DuTcYRW1+oRScIsZoDdEK0ICVT/XqwUDD6WMQ5HBjaW8+5s4LiZYeEpwz7
         6qIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ni67Hdlx8SdwRcOV0nh3z02m953cDwBmWOR3KarI5eQ=;
        b=YlSD+JoOGLilcXTDwxw9YGbzDyBgN+VdH89qYhPlpnof5VTZjilw886F/pMNFnrJt2
         DhWtnIVEq41BXk2uYxLwskk4r5BDpfVpXR7m02Jwl+KWywsJiZISW9K8XU5V8XLeSZtM
         V5raic75IhtXTNuyLjYMWQKtd67ayOaDqTuBQoYKuhf+FWXtaqddrPkILt/Qs95coT39
         +wDSB/JMIlrmA3WSpArtnVqwPBG//r0gbfvx0yb5WD1/Src8bS4ZhG7rQBOpujDGU+Z6
         zwMy5NLds4V3XkYun+io4qCEEnDqnYf8k9F5CTFviAqR7BQXexG1zydTDbmt/5QQPdsl
         rukg==
X-Gm-Message-State: AJIora+xawRgorMayPMip18CI541Aby9qYKcaKEFhgHw02LNa/svjOCJ
        nCpFNOViORta9OcftOz3sc5dig==
X-Google-Smtp-Source: AGRyM1tFrBo+hONe3ZNVXhfUKXTTJ876vyfim9rf05ECkdQdBWA2kpagOUHd5g8W+cUqgw6V8UsuEA==
X-Received: by 2002:a05:6512:3e19:b0:47f:77d8:236c with SMTP id i25-20020a0565123e1900b0047f77d8236cmr24304754lfv.560.1657092981997;
        Wed, 06 Jul 2022 00:36:21 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id a6-20020a2eb546000000b0025a9dccbae5sm6054089ljn.112.2022.07.06.00.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 00:36:21 -0700 (PDT)
Message-ID: <cf26f16a-af5d-0cc9-6f5f-ad83768450db@linaro.org>
Date:   Wed, 6 Jul 2022 09:36:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH net-next v2 2/9] dt-bindings: Add Tegra234 MGBE clocks and
 resets
Content-Language: en-US
To:     Bhadram Varka <vbhadram@nvidia.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com, kuba@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, pabeni@redhat.com,
        davem@davemloft.net, edumazet@google.com,
        Thierry Reding <treding@nvidia.com>
References: <20220706031259.53746-1-vbhadram@nvidia.com>
 <20220706031259.53746-3-vbhadram@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706031259.53746-3-vbhadram@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2022 05:12, Bhadram Varka wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add the clocks and resets used by the MGBE Ethernet hardware found on
> Tegra234 SoCs.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Bhadram Varka <vbhadram@nvidia.com>


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.



Best regards,
Krzysztof
