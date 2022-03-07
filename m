Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5A7D4D0719
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 19:59:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244657AbiCGTAc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 14:00:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234764AbiCGTAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 14:00:30 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ECB555758
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 10:59:35 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 015043F7E0
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 18:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646679573;
        bh=sFr5I+WRledcILsCjq370DCSnN0kDkpnKS2SgkWGsqU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=vhWjr9pNsg/w2Wq5aMYuOsaes9kiXvFOhvNJX9dpYIoaqZuwy3jmG0J4EDOsVwtOm
         sEPxj5v7YUzvlwuKIDS5/LapDBiAQ4UdXtBtSo2Y3z2orUqELwmjMoj1YpU288W0bk
         9Pr7D/YBRCDx520W1aiY+iWi2kswzeKYGVlA00Zw86wWo8ZDJlmVLXwt75EnS2yg1Q
         L/PbQOE+920THxDhOifFJcH4hZqfqTTameNll6lRha2R/BrzIaNvabOaA3R6I6dUkC
         rkM0nngQGD50PKhofgCmcY/ONeBQfMyWnRweGeSOnUNC+RSvBQAnnlE4FPhJh3MtUu
         ilgJjPGqRmI9g==
Received: by mail-ed1-f70.google.com with SMTP id i17-20020aa7c711000000b00415ecaefd07so6805365edq.21
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 10:59:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sFr5I+WRledcILsCjq370DCSnN0kDkpnKS2SgkWGsqU=;
        b=nL4pWLjRNO2eDGb8LElLFGoX0DKM7xn5Bpi+A71JQQj93WHwVqjVyNqQZGC5Edfcu9
         wG5/a65QnqNZrOJWMH1IU3YXE1IN3q8ItEfOBm2+sB7qV6IpLPrcNTJH7/u7Zdo5d2CN
         d0bULYohTXx97rZMvgVCQJjNG5T4zfGMb544CLUWOqXxbq5zLAFD0+qyoaNzEaXPVrWv
         paMJKl7FcJnf8yxi6rqbxAXua7G3TCCklnboGGo/FBTbX/Ph424O++alZdEmReOGRUMs
         zRSjn019V1CV2U70mMicFZWNExj+zJc5qDN4i7d8jw/sWkdDoZ/fLYqK/ePtPoq7c3H0
         khOQ==
X-Gm-Message-State: AOAM531M5YuLaXhoYXlK+cSQiZxttex9E0kQbCkSL+NpCy4KLm6FYIao
        qP63BQsRUezwgScQBO/I99Wflpq5ljapHbDFi3fDa66Z0zl8e0Lir1A5/K29dr7dYHfKW3nNroh
        NrlCMal2ntCs6Qp3MoTKZzgp/gn6DkDJwyS7wcn4=
X-Received: by 2002:a50:d550:0:b0:416:2ac8:b98e with SMTP id f16-20020a50d550000000b004162ac8b98emr10828113edj.236.1646679571168;
        Mon, 07 Mar 2022 10:59:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzXu0txwJE4+P5FIEK6e4oUCg8E1spjxcK+3rVXWuN/ncPvZuceRX30s52MHzZGh58AtN0qkg==
X-Received: by 2002:a50:d550:0:b0:416:2ac8:b98e with SMTP id f16-20020a50d550000000b004162ac8b98emr10828096edj.236.1646679570975;
        Mon, 07 Mar 2022 10:59:30 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id p24-20020a1709061b5800b006da6435cedcsm5016329ejg.132.2022.03.07.10.59.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 10:59:30 -0800 (PST)
Message-ID: <d5c5e3f7-7f50-6c57-f82a-41d5494ea514@canonical.com>
Date:   Mon, 7 Mar 2022 19:59:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/4] dt-bindings: cpufreq: mediatek: add mt8186 cpufreq
 dt-bindings
Content-Language: en-US
To:     Tim Chang <jia-wei.chang@mediatek.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fan.chen@mediatek.com,
        louis.yu@mediatek.com, roger.lu@mediatek.com,
        Allen-yy.Lin@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        hsinyi@google.com,
        Jia-Wei Chang <jia-wei.chang@mediatek.corp-partner.google.com>
References: <20220307122151.11666-1-jia-wei.chang@mediatek.com>
 <20220307122151.11666-3-jia-wei.chang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307122151.11666-3-jia-wei.chang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 13:21, Tim Chang wrote:
> 1. add cci property.
> 2. add example of MT8186.

One logical change at a time. Are these related? Why entirely new
example just for "cci" node? Maybe this should be part of existing example?

> 
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.corp-partner.google.com>
> ---
>  .../bindings/cpufreq/cpufreq-mediatek.yaml    | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.yaml
> index 584946eb3790..d3ce17fd8fcf 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.yaml
> @@ -48,6 +48,10 @@ properties:
>        When absent, the voltage scaling flow is handled by hardware, hence no
>        software "voltage tracking" is needed.
>  
> +  cci:
> +    description:
> +      Phandle of the cci to be linked with the phandle of CPU if present.

This does not look like a standard type, so you need type.



Best regards,
Krzysztof
