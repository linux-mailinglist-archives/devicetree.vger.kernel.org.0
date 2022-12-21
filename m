Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7AA652DD0
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 09:19:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234608AbiLUITy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 03:19:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234474AbiLUITA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 03:19:00 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3196218B7
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:18:48 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id z26so22340826lfu.8
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/HGF2fhKsWDQ7WBFdpIdxBNae7b7JtegXaa6d/s2yVE=;
        b=M+Rp7XMdR3phHvKr1+wBuW6TN2gVtY2vZvzAnvqfd8wDdvSbTKoRBjU26o6FUNbz2C
         I1lKWV1zWn7O5JoKqIiFLqEWVQzEeb4lV8kIXHvKu565IeZkxKJHpZxPrFoU/aqw8tdW
         VVwuiqIL4f6zuUQjNnaxhD4KcfFTTc22trow7bz62w7gcyj7wkWCXb4UrykSVjQlr6/h
         s0opHG9KD1G2g+t7Ldd/DRpVVIEsChEeHM7S/xk2FRSmtBX9McbronWg8+Xw99YuIWX9
         3aXfw1pseRu6e8kYwMzXS7sCr51ok8OlVPLZLtx0kE6nfiX0RvtsxeK+sbUi8+oo5z1A
         QjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/HGF2fhKsWDQ7WBFdpIdxBNae7b7JtegXaa6d/s2yVE=;
        b=rMrjAR6t9yHZg+FyiilsgpO0ecqn39uQZxZPuLBo21JE8vkapxyu8d9kvv5STEnA0+
         8M/FQb6ophXieBNA/0kONmtvLrxi2x8PrhxF9ZAmiFQR6vMFa+r2JC6gnpBChdDqag7O
         l+T1YWPHVZvLuf71IU6QN5CWX2WG3OZpsiOfdzUNZCmLfXSw92gMWI2WZNMsclLvpQul
         tRKIzboUuXTphs0j91FxlrdgAX1vKJk1B+WH7YGzQHtmrtvoNrpxX8VcNRj1Gg0UfAst
         pTUnvqAM1edfvUb01PMdLu1L8bBwtwBzLA80TCr4NivlCm6s0h3VdPjt/XDjE4V94+oa
         ft+Q==
X-Gm-Message-State: AFqh2kocHepfz2rwYvR4m46j8eCcVDk92PSPlAlR6v+EsRvQtnDTNUTu
        On9R4R36N0UXKP0K/MT/uZNupA==
X-Google-Smtp-Source: AMrXdXumkHpg5R8oY2pi3IoHZOyLAx2N7jkHqChZPKbE1dwJOyeB0Mhj8tdy//9McTUZadobH7VeUw==
X-Received: by 2002:a05:6512:2822:b0:4a4:68b9:60ae with SMTP id cf34-20020a056512282200b004a468b960aemr396528lfb.57.1671610727261;
        Wed, 21 Dec 2022 00:18:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id g6-20020a056512118600b00494a603953dsm1767280lfr.89.2022.12.21.00.18.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:18:46 -0800 (PST)
Message-ID: <6576a435-dcc1-af80-bbe9-dd98bb0d53e8@linaro.org>
Date:   Wed, 21 Dec 2022 09:18:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: mediatek: Add missing
 power-domains property
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ikjoon Jang <ikjn@chromium.org>
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        angelogioacchino.delregno@collabora.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>
References: <20221221034407.19605-1-allen-kh.cheng@mediatek.com>
 <20221221034407.19605-6-allen-kh.cheng@mediatek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221221034407.19605-6-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 04:44, Allen-KH Cheng wrote:
> The "mediatek,mt8192-scp_adsp" binding requires a power domain to be
> specified.

That's not true. Before this patch, how does the binding require a power
domain? Please show me the part of binding which requires it.

Best regards,
Krzysztof

