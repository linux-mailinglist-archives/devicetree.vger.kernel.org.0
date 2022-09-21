Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4E5E5BF8FA
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbiIUIWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbiIUIWQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:22:16 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF9033408
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:22:14 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z25so7977021lfr.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sB76DvFVE7IoDtHgGLfADV4D3rsHaGzCUZQyyMAbRJ4=;
        b=I+4l9Es944m1QBpXCsvmQvEV/hnSjHG1mHw/gswSIsmekL9qx5vJ/D9XjVL/iLlZ6G
         qQvOi/U/5S8MSX0fcRj7MJE9Ue01fVMisGHnd1sFm/RiNNQPJQA+gABA4WOOYpQvZw00
         Al6X3eahOdURAtG18Mw9h0fqBRTemBIlQUe3jzogV+oYXhHwYlbLpMiy2Z7mAK+HCSA4
         rDueUD9b4ahZN/UmD6avo6cv6vWNVqen1s9aGtZchNSbMd0wN9XZLwH9oNRu2DHSb1DB
         dqFfH7BjGjKtDr23fbGS08woQ2gbTmrZWcTJwjyagr15FVeEgQiQh3djkJj679cKr9tl
         nWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sB76DvFVE7IoDtHgGLfADV4D3rsHaGzCUZQyyMAbRJ4=;
        b=UC8s18RrU3XNWRysREEODibVKyx8tEi2g1MlGpTW3Ybvqe+SQ/2vaaplmQkXM/bbD1
         bbkYiIMpy4Wp3VUAmGnNaLo8nYta/49cXiAObykOVryTpv+UYOZnzE+tId9F6MhLRnWQ
         MMjfX8wX44k9tClzcfp+BSw0Hr1NIZnrRjaN3VotjWPhBAZkKyqPwlsnDcoK/spy7kyy
         ySVi0KfLjU+56d5SqL+atFH49x/B7YuO33RVbxHm6F2LG8j/n4A+DcZXOZa1FhbKVy2T
         sUd9uTZg3Jd3Lr9L4Aa590npdGQQhDL10EkWp+aSaTj5cU2ktP3GcfCyxRSee2b5wUhM
         Omrg==
X-Gm-Message-State: ACrzQf05i4fhu3766gSjj3I5b8i9XnoQz/A1TCAKQ0GdAjiO6CQBilcQ
        BDBMeXE+7bMp0kgqQH03XgO+Ig==
X-Google-Smtp-Source: AMsMyM6JwwU18E3xHzfxTzTabWpYuZyhkSkwuHDOwJS7/6E0M0rElGOe+Kp6p6P+Lxy5jlM9m+G1FQ==
X-Received: by 2002:a05:6512:32c6:b0:49b:9680:5a78 with SMTP id f6-20020a05651232c600b0049b96805a78mr10053136lfg.397.1663748532701;
        Wed, 21 Sep 2022 01:22:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l10-20020a056512110a00b0049f9c732858sm325068lfg.254.2022.09.21.01.22.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 01:22:11 -0700 (PDT)
Message-ID: <82b246bc-86c5-2395-44a3-535d4f022dcc@linaro.org>
Date:   Wed, 21 Sep 2022 10:22:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: net: mediatek-dwmac: add support for
 mt8188
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
References: <20220921070721.19516-1-jianguo.zhang@mediatek.com>
 <20220921070721.19516-2-jianguo.zhang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921070721.19516-2-jianguo.zhang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 09:07, Jianguo Zhang wrote:
> Add binding document for the ethernet on mt8188
> 
> Signed-off-by: Jianguo Zhang <jianguo.zhang@mediatek.com>
> ---
>  .../devicetree/bindings/net/mediatek-dwmac.yaml        | 10 ++++++++--


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
