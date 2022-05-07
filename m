Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AB5851E887
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 18:33:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383294AbiEGQhY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 12:37:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354878AbiEGQhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 12:37:22 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DCBF183AF
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 09:33:35 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id c12so4344462edv.10
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 09:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pKO2GPtNdIghjz6m7nU4lvNqHCZJe8aOfScuIu52lYI=;
        b=cmLK3WTGMu+JUFTSMOh+sDJVERBH5LGbX9YNBtxSObQUA1nZntQ/c5pTdEdgArSC37
         XT6tUpq3xiwy+X2rC4oFU4oYhpSyi2ZMdwxuF1/jc+WO3kouQHwmm6wJ1TPVWLB/hVph
         fdYATZMGIKm4CHf2cx2DsjD7DxSjC+iFUqi1X9vEEz+hmBQg3XbevS6UT+UOjgiL9q+2
         yBZcs0eoG2RgtAGi7d54VnDIXKApqL7/8x1GGXDOH1gSU3Uy4RFm0CJnxvoCL/pnhNEF
         sjnStod+/FZH986KzgVqyZ3mXngZX3xkXCl89lVKWoQ3mQEmrEuYparnCmDAjUprWGF2
         6HDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pKO2GPtNdIghjz6m7nU4lvNqHCZJe8aOfScuIu52lYI=;
        b=Q7pNz46CW+12TIVReYcjSURqLAx9M7r0/A1HuP6T5FOxPjnvGViCjRQwLKR+KofHBL
         NZRB5cwaSZ82qJPeTO6CTXiL856SuQxB1fh4q3K4Dof8Xeg5DTvFfwLNCn6ORxTqbrVT
         HYb2ng3wKRyxIceFKGFL2Orgq5cZPp+HNyzjpqnm2XMSu6pmGAXX/YgfvSbH15rnchjs
         +koT70fRJlDxQ/Q5DPJIRAUvC51oJ6bBioUKzxw+o1aty3U7tRXqKu22EuIf2z7jo+Wl
         LQ9p79TKSufDS1sU+hBmt8DkuBG/QVLt3+8vHQOWCVAwVi6s3Nz5eWVN9zfPeIvkpPGB
         k0Vw==
X-Gm-Message-State: AOAM533xXGemEyvTfi1xfrvRoDJUfZuWrG+GQHbTAPAmFy/IC6K8JZeG
        F+O1BWqgirsE8m+RVSrN4A3aNQ==
X-Google-Smtp-Source: ABdhPJwHYjjrG+KKOOSLs6RtoUUFX0QbyyBt93Asr2h6J9e7iKcP3hEt3PXEy5+GCvVymWXolMYvWw==
X-Received: by 2002:a05:6402:5255:b0:427:de81:6af with SMTP id t21-20020a056402525500b00427de8106afmr9324701edd.269.1651941213736;
        Sat, 07 May 2022 09:33:33 -0700 (PDT)
Received: from [192.168.0.233] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w26-20020a50fa9a000000b0041d893ed437sm3745988edr.2.2022.05.07.09.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 09:33:33 -0700 (PDT)
Message-ID: <d3e027ca-9ccf-cf91-2414-85d2b9b680f0@linaro.org>
Date:   Sat, 7 May 2022 18:33:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/2] dt-bindings: remoteproc: mediatek: Make l1tcm reg
 exclusive to mt819x
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Tzung-Bi Shih <tzungbi@google.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
References: <20220506213226.257859-1-nfraprado@collabora.com>
 <20220506213226.257859-2-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220506213226.257859-2-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 23:32, Nícolas F. R. A. Prado wrote:
> Commit ca23ecfdbd44 ("remoteproc/mediatek: support L1TCM") added support
> for the l1tcm memory region on the MT8192 SCP, adding a new da_to_va
> callback that handles l1tcm while keeping the old one for
> back-compatibility with MT8183. However, since the mt8192 compatible was
> missing from the dt-binding, the accompanying dt-binding commit
> 503c64cc42f1 ("dt-bindings: remoteproc: mediatek: add L1TCM memory region")
> mistakenly added this reg as if it were for mt8183. And later
> it became common to all platforms as their compatibles were added.
> 
> Fix the dt-binding so that the l1tcm reg can, and must, be present only
> on the supported platforms: mt8192 and mt8195.
> 
> Fixes: 503c64cc42f1 ("dt-bindings: remoteproc: mediatek: add L1TCM memory region")
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 
> ---
> The if:then: branches became rather long since it seems that it's not
> possible to override the properties in them, only add new ones. That is,
> I couldn't leave the items definition for all three regs in the global
> reg-names and just decrease minItems and maxItems to 2 for
> mt8183/mt8186.
> 
> Also I had to add a description to the global reg-names, since it
> couldn't be neither missing nor empty.

It is possible:
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/example-schema.yaml#L91

Keep constraints and list of names in properties. Then in allOf:if:then
raise minItems or lower maxItems, depending on the variant.


Best regards,
Krzysztof
