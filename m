Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 506A94EDA05
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 14:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236426AbiCaM71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 08:59:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236420AbiCaM70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 08:59:26 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D6FF213516
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 05:57:37 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id bq8so33969753ejb.10
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 05:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vjjCyz+vwniwOkMw5eLLtJi73zd7D7wm3C4gUs1By94=;
        b=ad6aC/6WSULTuiWrxTP8MALNNIFerXEATo3N6mAVVBNbA+bHhrwPzkyl4BeOwgQ2wY
         e3N43cFB2+Nh1s38Ta8sHjvaNvzY2BAV2tbCr6M7PV7hm8iiYgDm9cYYHayI5Oeqq48d
         WvGU0j044OjiKUz8CM34REbhz8SsjmPIQrtLkE5lLMuhGBU0i81EpidBlTEkPG0DMfJL
         2YcvTAIXF1JahAUmMp6p1YsyUCWzQFhW3Jb3G503XBS8Fqhpu7MXvaiWW/lWW2EyF/Cb
         tmcOp1Tz2BZqdQ4j3/yJo5AbDkB6OwbADjCmb3TeQFD38Ikg72qVcL30nfISF5MXV5qs
         2xQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vjjCyz+vwniwOkMw5eLLtJi73zd7D7wm3C4gUs1By94=;
        b=6dzvDYSgCA1OJmLErnTtyvsL2+orsZiquf31zOKfk57nkvhFfpdM3PD4w86OSJMpvL
         f82g5imtxdT4OljKsaFHvp+mjys/nr0d/31eyDyQXb3sGXL3R/zc2yDWt8BFLyIpreSX
         DdBhLsFbu6OTFbjn2bTsK4rjqfJI0jrKk5e8ykTDYcI22fEZmvDUz0HO9g3Ye6tCros0
         e5M4WWDRR4SFQ0+18P9SLJa4LSeWZ3tFA3b/t9ALPP2hgFJ16AcOHlXypP49tCid8KWp
         EIwsWh9q4Nvyb5tE0YAmhx0KVV8B9BdLv9Last5uPBje9CCFfrwiRxZSVFzQJ2pGpFfH
         tzxg==
X-Gm-Message-State: AOAM533VwCNAj7aknYlaUT1+kNlxaixBNDazfGDmKk9eaucO0xGLyS3E
        Z7G2GYAZ8CGa6wq5ZzRMDl9STQ==
X-Google-Smtp-Source: ABdhPJzbWyCvgiQjYJSq3vyE0B+lYev04T+73+7zeUpH1kB7eMEf+/iXJ5gKv9sjqdz1y+g9AhQoGw==
X-Received: by 2002:a17:906:7307:b0:6da:92e1:9c83 with SMTP id di7-20020a170906730700b006da92e19c83mr4823842ejc.459.1648731455991;
        Thu, 31 Mar 2022 05:57:35 -0700 (PDT)
Received: from [192.168.0.167] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id e26-20020a50ec9a000000b004193fe50151sm11335931edr.9.2022.03.31.05.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 05:57:35 -0700 (PDT)
Message-ID: <68571811-54a7-d4da-8530-5aad663d1d5e@linaro.org>
Date:   Thu, 31 Mar 2022 14:57:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] ARM: dts: rockchip: use generic node name for dma
 rk3036/rk322x
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220331125644.6841-1-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220331125644.6841-1-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2022 14:56, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3036 and
> rk322x dma node and rename it to "dma-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 2 +-
>  arch/arm/boot/dts/rk322x.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
