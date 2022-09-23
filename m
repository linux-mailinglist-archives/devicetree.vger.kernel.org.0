Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1D335E8191
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 20:11:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbiIWSLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 14:11:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbiIWSLh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 14:11:37 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD5BAF6F77
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:11:35 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id h3so968073lja.1
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bEsiJd/ABJ6GfZVhG9n8srep4jX5Ng0oqWanjXKMf3M=;
        b=wdf0UoY5ODBa65zXyvuXU6004RbmRtmAQtzkUjBFxlpQtsXPB6f8/sO1rqC0ZGgLp3
         4AMdVPtt9QHPuyI0VxvgIs+5MrEOgv6JoAB8AlLpxgFsMBIOnfWGqJCA6iLMwm3A9N5n
         ZIWhGGwWdLofl2d7Oa0JdtvK+ek0ZFgho+IdjF9Zua3H6P1m8VRuu/tO9eMrcsVF5l11
         CyOBznGHDjwORKYgfJR/Q4p4MPPirUKwQt2U7ZUq1syBcfAYIi47L3cQLBCIvD7tuIti
         xsWsttC3skEp4jaqH1xDk+E1USMXKtinN/Kps+8JXhGImmHsdG5MDsPXMIDqjiMzGcPq
         zmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bEsiJd/ABJ6GfZVhG9n8srep4jX5Ng0oqWanjXKMf3M=;
        b=M8G4GI1LBYMYsSSru+nVMSt2p4wAtaTb7vQaXTV0xKnYdAD7PaAgyqkAU+f2/C+/9s
         s4/RUF6PSahKYhG2/T13FezxOPOhm71y39rmxF3NYEp2Dvk8ohEDWy5qVPjcQSQJED3L
         Lmhr4Ypk9b9KcPv2tHEGlRtnybDFa3+Mze8+gbGmzWoV+nM5/C6/iXPrSoDisHuXGe91
         o6RHy59hYvqBPZ7slqJ9oZVqdw/o6xzbqmxBSckcfPO9xRTEfmzE4CoAeyadPv37KPZz
         hHd3Ea2h6dhyT7oCo1z3DLdz1kMjvYclPJb28sf9mqqyMmd7sxTjjOTGD4C3fzw8N2Ii
         tWVg==
X-Gm-Message-State: ACrzQf0fo1/zC3AuxFjTc6pMgNsPhlDAQ+NT91ML1eEigXdnH/rvCSQb
        xgO4l5CWZNNPCQsxlYUxba3njg==
X-Google-Smtp-Source: AMsMyM5zQjSLuWsd99Ofx6D2TOw4gAeQDb4AO5KB8bpsuR/rhKVETepxlLfDTlGOKwf2sWnZ2pYplA==
X-Received: by 2002:a2e:92c8:0:b0:25d:6ddf:e71d with SMTP id k8-20020a2e92c8000000b0025d6ddfe71dmr3229734ljh.170.1663956694123;
        Fri, 23 Sep 2022 11:11:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z12-20020a2eb52c000000b00261e2aab7c2sm1491057ljm.58.2022.09.23.11.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 11:11:33 -0700 (PDT)
Message-ID: <a215ae81-10de-7880-1a15-b7b08d0d80d7@linaro.org>
Date:   Fri, 23 Sep 2022 20:11:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v5 2/4] dt-bindings: net: snps,dwmac: add clk_csr property
Content-Language: en-US
To:     Jianguo Zhang <jianguo.zhang@mediatek.com>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Biao Huang <biao.huang@mediatek.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220923052828.16581-1-jianguo.zhang@mediatek.com>
 <20220923052828.16581-3-jianguo.zhang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923052828.16581-3-jianguo.zhang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 07:28, Jianguo Zhang wrote:
> The clk_csr property is parsed in driver for generating MDC clock
> with correct frequency. A warning('clk_csr' was unexpeted) is reported
> when runing 'make_dtbs_check' because the clk_csr property
> has been not documented in the binding file.

Your subject is not accurate anymore. Maybe mention that instead of
existing clk_csr, you add a different property.

With commit msg fixes:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

