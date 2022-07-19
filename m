Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A98D357973B
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 12:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237611AbiGSKD2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 06:03:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237614AbiGSKC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 06:02:59 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0AC1402D5
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 03:02:41 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id t1so23846478lft.8
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 03:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=n2i2xeRFbnBFO53U+/GM3T5pKxWAL2Qa7fUFZfaYQcI=;
        b=zyVk1ZE/otqu/lHihEt3eSWYvni3MSTNDPZXfIlwzQYCPpn9cQG7jVtCmWJyHLK3st
         bHwQrky1OQm0/K+XiBmje/a98C3IWpiZn8Va4QPF23SU6nLpY3pGvGYg/F38RGntGwBA
         quoiawP4siohATEb2blPsM0jq9L/cyqWTTgjt76kPtQwqYO8wIXsZkruj3OShjKTT8Bm
         wFT0IRCwKx3VSlVTYr1g60Mc2HrbgwhQXy0ii7DQzLtuUPOJlz/oHdh1E36uLW3JSArq
         RbTQ1kZ911MUAIlErlyWapAtdrO1gDH2NraXULlRC6Evs0lESLQUqbBVe0z5gwE7YjpI
         /NVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n2i2xeRFbnBFO53U+/GM3T5pKxWAL2Qa7fUFZfaYQcI=;
        b=Tidl+oSkklkRqT0Jb9XlKGtnjbzRX2nrGMI5Zx8aIFKA33VtFhA0oFdSYyfQGFGTo0
         OwdjFg5Ge1CkKfsAli3An58nMwfOKne7E/4mTBbgFcQbYEUYpsu3x2Hrq+NPGt/9VVI4
         fp+q/oERS1TGqVejWaWWen6LfzmdHhb/SKlRdNcz7HX8spqYu3kC+Sopa2RZ+dDphzXo
         b3koeJsOaGzpmTzl0/2cVYucws5pRi8aUv4NPsUku35x4KL7Yg+VJkJZKiMbTta+uYWN
         hyBqTnz4eInB3mLLYw/HqxHdc+gbOcunWWbBf+uG2AAPfuhjsNe5RSlbTC4vklJ43SRB
         Q93g==
X-Gm-Message-State: AJIora/dQ7hjF6ciK9a6zZRT7UvmlL6y1mtoWXCRMMNuQh2Yg5ewI1pD
        V7C+zRPiIEyrbLc+7QvqOwzqzQ==
X-Google-Smtp-Source: AGRyM1tnhi/HrvY6MsqgKmCLE3ncdDsOSsiLBBaS5ImUtaBlTr4Ahxus85g4bE9MOF6nhRb2wRpP6Q==
X-Received: by 2002:a05:6512:1093:b0:489:e605:415d with SMTP id j19-20020a056512109300b00489e605415dmr17524450lfg.323.1658224961287;
        Tue, 19 Jul 2022 03:02:41 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512214d00b0048110fd06c4sm3121121lfr.53.2022.07.19.03.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 03:02:40 -0700 (PDT)
Message-ID: <74dadabb-f4d8-bec9-d6b4-fa6ff78e8560@linaro.org>
Date:   Tue, 19 Jul 2022 12:02:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 3/3] dt-bindings: nvmem: mediatek: efuse: Add support for
 MT8188
Content-Language: en-US
To:     Johnson Wang <johnson.wang@mediatek.com>, broonie@kernel.org,
        srinivas.kandagatla@linaro.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220715120114.4243-1-johnson.wang@mediatek.com>
 <20220715120114.4243-3-johnson.wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220715120114.4243-3-johnson.wang@mediatek.com>
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

On 15/07/2022 14:01, Johnson Wang wrote:
> Add compatible for MT8188 SoC.
> 
> Signed-off-by: Johnson Wang <johnson.wang@mediatek.com>
> ---
> This patch is based on "linux-next"[1].
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
