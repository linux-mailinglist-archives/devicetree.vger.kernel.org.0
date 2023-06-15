Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 378C5731220
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240198AbjFOI0o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:26:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244319AbjFOIY5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:24:57 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 836DF1BF8
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:24:56 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-977cc662f62so218220366b.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686817495; x=1689409495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BbGEpl2iXBk/0n1uYPu6j8bdS0Duw6pIHylZVQZfLCM=;
        b=NotcqBKZ2ICNDdoOFectkUo021at5xfAz8Q70r0bkzeR6o9ARpmtT4jfWJ8Nhvt3Nz
         O9hnNfuY1dS8huYCJoLwRv9a1E46q2OTciRAtQ8tRaq+LXbe5+75KP77yO+4E35wyMRd
         wo6grpjVp8EQmL3C42S/DJcCeiF0458J1tp1/wP5OtDbJ2nBzfqtV61Wqa4gViMAnB/g
         Zp9oQ49ETkZ78xiuhFcA5vdGuTv9rzK7kRdsOlQwQxj9TvED+mSCs9DGQK2QGSMFaWuG
         7hc8MngFtwKKFSXT4ltq9Add23mY8yFSTmiXLSF5r/olc9zzD9zmWyhuIiXH5DvCb9Xc
         Rm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686817495; x=1689409495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BbGEpl2iXBk/0n1uYPu6j8bdS0Duw6pIHylZVQZfLCM=;
        b=BAJ3KVjvowIrlAmFLlffE+8++gBrfepfMH3woqhELO1NCNi6oJlQMuTCFrr+J6HLXw
         h/wpBuvXn8xgXHA6FTUSZTn4C2W/s7H+dyhrTSgqiXymvogOpPtJD/rRjV0H2GJOcGOl
         5lezHYiU8Lgxq8udOvN/nKzlhuXc4k2//AzDE0DmMVetR6+7mtDrOlcyEN0qt9RcfBXY
         eNS1Dpxt554uu99oqxr7v7dpUatVv3O35+EA8HHkSr2gaviQkyikmWbeWTJtKxcET5b3
         S966kf1xe2Qvc5sdtxkHdJQtaPhxlx4u0Ju3sHgkLp5BQItmNSaWnSgXCI6hbbszI+lJ
         /HIg==
X-Gm-Message-State: AC+VfDxXnMxalBFXpyJFydltXKDcxaR5rjTSFhWSoAB7EhlUIfrGbaCi
        f7BdaYvQ/AueuMUNzXc7VIkh6w==
X-Google-Smtp-Source: ACHHUZ5sVqtKWV6T3UvzOiV5OHGEGahd0+FEDg9fBs69+nNHC7ly1cQRKZlFp4fHpQXX4idWWm0wVQ==
X-Received: by 2002:a17:907:1c83:b0:982:501a:62be with SMTP id nb3-20020a1709071c8300b00982501a62bemr4622057ejc.39.1686817494993;
        Thu, 15 Jun 2023 01:24:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id fi5-20020a170906da0500b00965d294e633sm9061882ejb.58.2023.06.15.01.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 01:24:54 -0700 (PDT)
Message-ID: <dcfd9186-41b6-b7fb-6430-703dbb406ec7@linaro.org>
Date:   Thu, 15 Jun 2023 10:24:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 01/15] dt-bindings: display: mediatek: ethdr: Add
 compatible for MT8188
Content-Language: en-US
To:     Hsiao Chien Sung <shawn.sung@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Singo Chang <singo.chang@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Jason-JH Lin <jason-jh.lin@mediatek.com>
References: <20230614073125.17958-1-shawn.sung@mediatek.com>
 <20230614073125.17958-2-shawn.sung@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614073125.17958-2-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 09:31, Hsiao Chien Sung wrote:
> Add compatible name for MediaTek MT8188 ETHDR.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,ethdr.yaml           | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

