Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07DA861661B
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:28:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbiKBP2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:28:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbiKBP2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:28:20 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E5820F6A
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:28:14 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id e15so12679851qvo.4
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 08:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzL6ez1/SIwguYGRYtO/alcSTumOxh8RWgANaccbcsk=;
        b=zubtvv/vKLjmQAv8Rv8GeFaXOhHaj93acOKq5y5fOk9JqbcJCrWCpIRltRUZEn8xN8
         ic8p+DBspVmOhEATc3Ci6FDPdFZ8OosV3im6/BAAnwadhGHrZvq2G7BMdoZOZMNkE5e+
         uOUuamEIXuDphbwSxptG43MGMcRACWn3zE21ZpTdpmnzgwQIJxgiXbjOrK4/J3uCiaFJ
         j6IEnCgy8ru8OYc2LknnOylyKNW2rcaon+lgUTtM95emYvT62mu6fvTcaLKCQCERdHyT
         R8W/6mtyQM3nBgzFcRx/PdoGhN+V5qQaUkoQ7Jur4jkqJfojRtSzoDCpY5ZHjojGZpOX
         tpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KzL6ez1/SIwguYGRYtO/alcSTumOxh8RWgANaccbcsk=;
        b=c2KuobdpEwsiy/xzyNIOYEhyZplVwn+jVYzY+45m9DLifLplPjsRQ7ukN43PXCX77V
         p7NyNKZ0XSFaBvej1bG7/3TzqtQlopabEuTcHJzCUz1RXA76XC/mEW/EA+flN7zbSuZa
         83tDuu1xXUnJkGppowwS6mdKXEhumR5WGYIxZC6VGPpzRfSVPt1IsnUryVXUALchlRIZ
         5lZt/L7YcCAtxC1iu1yokal+vE8suaPq8nZctAJmGeHC98kLU6HCROfZ30kmeMc5JMaA
         ifF/cl26w2OCTHdaHdm5iyL9aCu4yf2YZ9TmCe8B4XyOHkrxvdEGjbe5x7E8hFJMaJI0
         iw3g==
X-Gm-Message-State: ACrzQf3h8H9UTl7ydIs8A64z8AdeoPHcNuwFIR65qQ+6kPPtUeJh3la5
        kTS0jLHibLL60VTH0xtvqi+G3Q==
X-Google-Smtp-Source: AMsMyM6wu2zQdBId6fKv5cJhAPDmidAieaqn3phFQgTH+JAKcZa9DCOt8DY56i36JdzSWtjFTn3beg==
X-Received: by 2002:a05:6214:d6e:b0:4b9:67fb:25a7 with SMTP id 14-20020a0562140d6e00b004b967fb25a7mr21308527qvs.115.1667402894042;
        Wed, 02 Nov 2022 08:28:14 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id t27-20020a37ea1b000000b006bb2cd2f6d1sm8560147qkj.127.2022.11.02.08.28.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 08:28:13 -0700 (PDT)
Message-ID: <2ea0f5b8-2fc0-a7f9-706a-ac51c224f331@linaro.org>
Date:   Wed, 2 Nov 2022 11:28:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 1/2] dt-bingings: gce: add gce header file for mt8188
To:     "Elvis.Wang" <Elvis.Wang@mediatek.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Houlong Wei <houlong.wei@mediatek.com>,
        "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Bo-Chen Chen <rex-bc.chen@mediatek.com>
References: <20221029105017.20734-1-Elvis.Wang@mediatek.com>
 <20221029105017.20734-2-Elvis.Wang@mediatek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221029105017.20734-2-Elvis.Wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/10/2022 06:50, Elvis.Wang wrote:
> From: Elvis Wang <Elvis.Wang@mediatek.com>
> 
> add gce header file to define the gce thread priority, gce subsys id,
>  event and constant for mt8188.
> v2 - use vendor in filename, use Dual license.

That's not formatting expected in Linux kernel. Use git log to find
examples...

> 
> Signed-off-by: Elvis Wang <Elvis.Wang@mediatek.com>
> Reviewed-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Not true.

Best regards,
Krzysztof

