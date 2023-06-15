Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6514D731234
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244718AbjFOId3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:33:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244850AbjFOIdQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:33:16 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC1F273B
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:33:11 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9768fd99c0cso111190666b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686817989; x=1689409989;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pN06qt1ISgoZNpbQQWJvczW6PgLtyXLuMmi2vv84vHo=;
        b=kFdWTPTkJTUj+Yk0tuuu09qjwz2AlkD8fvGq8h/fXgyurdqeYQT5DNaPFg1eobn+No
         pxkHxBI2uwAbEFBThy3j+NR2bJ4dwfBeqjeH5wJX/7i5HY2iKFka5IPGmjxv5g6PnnLs
         M8qP9VBX9IV738BxVAhsS440uzPax2CluDl5I//plJQ+D9EddeVb3SrRYwBPJkCuc6EB
         Xr9JV/F6oqQVw1CgAcPP6Bf3xyu/3zYETmPYCVr1NXKDYTHETyLu/3XiJcjFanLuYKcE
         1LZZRkTqNiWoGnzO+WOVGfco5vqBY6AqO50cXhrR70z+x/q4JLFLmLfXdHnMvvkSSkkO
         6zog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686817989; x=1689409989;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pN06qt1ISgoZNpbQQWJvczW6PgLtyXLuMmi2vv84vHo=;
        b=a93BSe3uYHzVonjHEPoyPs8a+1CxxsibNZ+W3tukGIxJNdNebZCK+3Qt5rOplBfvBn
         UdMsfqqxeNqdZ39IHiIEdQi9958wlRUu4gTz4l58ru1HbM6VPSFS17Y40pm+FLK1Fvww
         rZ9Bw8umS5IpEuS/FEgU8otbCPT78svtDOxD+JWKVap6U++Do7GLlx9GhLPnwXA+fBej
         suJJzah+956j6/XcglBaHgzDMpnpKcasc06uC2lGeHlDN8gHSEN8Yu9970UjwZYlpp3E
         fFtRER8Gj7KqEWtZ8qWCWTnROJEsiGn2bHYxL1l/k6zZo8HPqBjMUERPqDRj3577SAFn
         Fn0g==
X-Gm-Message-State: AC+VfDwBcHZDCtHNlaY5W7BZ648fHfPTsj3ct614kEgv2jNvSDBX+lIY
        EiGSrwj7Ca4IMYVrku2g3TkUbA==
X-Google-Smtp-Source: ACHHUZ7rKg9hWBUpmbuc45nT6YKlFoCne36p9/iUgxh15ee3iHHtibWn78Kw2l/ZYUi/pm978GYfIA==
X-Received: by 2002:a17:907:72c4:b0:97e:56d5:b87e with SMTP id du4-20020a17090772c400b0097e56d5b87emr3909345ejc.2.1686817989678;
        Thu, 15 Jun 2023 01:33:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id v5-20020a170906858500b0096f72424e00sm8997427ejx.131.2023.06.15.01.33.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 01:33:09 -0700 (PDT)
Message-ID: <dce83dcc-a461-96ac-63f1-2a5d0f30939c@linaro.org>
Date:   Thu, 15 Jun 2023 10:33:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 05/15] dt-bindings: arm: mediatek: Add compatible for
 MT8188
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
 <20230614073125.17958-6-shawn.sung@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614073125.17958-6-shawn.sung@mediatek.com>
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
> Add compatible name for MediaTek MT8188 VDOSYS1.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

