Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15360512C19
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 08:57:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244647AbiD1HBK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:01:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235345AbiD1HBK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:01:10 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BEF4986C7
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:57:56 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id z19so4382520edx.9
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sFaIMBda9JLewaDbiv7MGBuoGzvAvL3L6Nf0tHYa4YY=;
        b=ANMhEbqlmVF0tlEEAFs1g3/Ptqs/VZG+pyq97ZSVoIN7Lp5hJJoJkWxeHxGxM97gmY
         fYRjAILZ/HLdzQo27dYt1hwje0qn72LUVNHPRIbCqe9mgMaUvOMV5cozhWHpzBMTbHiz
         +eKyZYaGK2BqiWH7Gt4HtS1s/98/7Isb/P8/7Bl8DRsmmcYe8S50zPRSwrOBz/bcAjoG
         iUNEnRlV4/it+lFSdScZh6Y+nFsIZObdonQ6IAoNFrZsFZ4zd1rv+Zk51Eimlo9qxNSS
         sXhzDgnG6cJ2SV0LWdsnWunO5K2XUdNVLL+xcQp5VKEIJQl+t+Wm86ZhKd3Tg2p321mI
         DG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sFaIMBda9JLewaDbiv7MGBuoGzvAvL3L6Nf0tHYa4YY=;
        b=irDY1z2m/4faNsCiabgc/kIH5q58sBHLRsDOueWFzDPgCz+DiyZUKDzOyFcEiJPtcv
         hyL1ewhlia3ZvwNLFwGvngGA4I8CWU3tWBOyMQO+o2gfIShPh4bQe9R+d9Q0JOc3caJ4
         YZG0jgxHPb1DcQelR5b83enFmPWsT6w4Xy/Jvu0CirKXmg0c4Go1dU992kvLtUAuafi9
         h/XSOUh1vQxgTFTGTCobHNpb4GCWE72s1TSfjYYc+Pi8lRv5ERLbOgknzakMGALqTc9J
         smvAH9ydhtuEVgMSVEp12gG9TRcH49m54b1rwxxt2JiNHu5CtHmLItfGX/BzGrUPeLc3
         thCA==
X-Gm-Message-State: AOAM530EJpwSKsqVDiMqBr69sVWEN5dfVVa9OXqW4xC1IIny+iyLmsod
        4PtDY/TxoaEKfrIzCvYy6Uz+uA==
X-Google-Smtp-Source: ABdhPJxx0WqusbtvoDLiDxt9yfgZl/iQzZUNIyyyGOVs1+Bo4EhvY/IEx/tipfIHIwybhyI+yVzcQQ==
X-Received: by 2002:a05:6402:27d0:b0:41a:68bf:ff26 with SMTP id c16-20020a05640227d000b0041a68bfff26mr34521255ede.102.1651129075035;
        Wed, 27 Apr 2022 23:57:55 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id en9-20020a056402528900b00425ff691a32sm962548edb.0.2022.04.27.23.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:57:54 -0700 (PDT)
Message-ID: <e54f612d-453e-f6cb-6236-4188669addb3@linaro.org>
Date:   Thu, 28 Apr 2022 08:57:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 02/11] dt-bindings: arm: spe-pmu: convert to DT schema
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-3-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427112528.4097815-3-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 13:25, Andre Przywara wrote:

(...)
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - interrupts
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    spe-pmu {
> +        compatible = "arm,statistical-profiling-extension-v1";
> +        interrupts = <GIC_PPI 05 IRQ_TYPE_LEVEL_HIGH>;


s/05/5/

With that:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
