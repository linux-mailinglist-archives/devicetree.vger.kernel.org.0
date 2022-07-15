Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11AA0575C78
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 09:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232089AbiGOHgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 03:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230225AbiGOHgB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 03:36:01 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3133E7BE37
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 00:36:00 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id x10so4340276ljj.11
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 00:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mqhVEUWoJhyGaRXatPdO6jF7+Eft9kIRbLVR6FWlzs8=;
        b=qjvMjtSFhMHa6WnM74siqopulg6O3rjmx3IiBooXy24W/I4PZDNd+xl+uQGyiC1DZb
         lWSfhBY62FfqUJPPAXUjczFT0aIo4m6S8H0G2jRVq8b5ye6HG/pii+GGvDCQtIvh+fnO
         XRT06LG1Jrsu9wN0TpvNrdx+gSWPx6A80gCufY3qCCovtvtHOgGRPlxsaSSmDvfOs+Kx
         8gMkrLffn5LHOlrIxv7+/xe1caZMYMya/z7j91Oec0mGl4cN/XYqMSkWSqkbC9ckT/LP
         CPFq0oj54KUPsoZaR86X2Te9VAE0jtoZgM7Td6AvTmm6RDdgwd5pakE6FUb5ZdfDhFkV
         uNXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mqhVEUWoJhyGaRXatPdO6jF7+Eft9kIRbLVR6FWlzs8=;
        b=rsAF3lOL9Whw7H5EM1BHAKN2GB7+D3/PoePZMsJEeI8yb+UWZJunciIIKFoNPsKPAO
         lx585Od8gK1tJJnPAlc0nwGu7alw61pmSGOd80epBOFoLxcu46hnxae3ASyK+zq0TKOc
         ZfjOp78XdOgEcifjkQPfrHHDN9WCSOMMZpprbS4vcZRLwKF77E+92+WPLFMXzAm4Lz3z
         F7m+OyUsylb4COw6vuHhEtHZ46zXLe1VKJ8ZUfqR/J5goORicL8vRKWplNHcy3Bc3q0X
         lzkxgpWhEU8ML2E25D1oaAPUt/NzLpo6IoQyIKVz/yT901Q+d4buSBkkvzi7uxmkAr5W
         iggA==
X-Gm-Message-State: AJIora8aTJJseyAfSMrsiuH+endwIiE2Hbt2B16n8Ek1DAuqGbN8QjeI
        kFMiZTOj+XS7Yf0WjmOM8w4QOg==
X-Google-Smtp-Source: AGRyM1tOzrr9Yq9VEdfdXk1wmZFGhIc3cdIcL/0dwI8mv3a3rDX0Kkzg3QqLlEmjX7QvHubznwMfXQ==
X-Received: by 2002:a05:651c:1a0a:b0:25d:a17d:9c23 with SMTP id by10-20020a05651c1a0a00b0025da17d9c23mr1419736ljb.480.1657870558571;
        Fri, 15 Jul 2022 00:35:58 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id 3-20020ac25f03000000b004790a4ce3e5sm771300lfq.278.2022.07.15.00.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 00:35:58 -0700 (PDT)
Message-ID: <9f8217f5-7369-0abe-cf8a-d501e163580f@linaro.org>
Date:   Fri, 15 Jul 2022 09:35:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 02/19] dt-bindings: memory: mediatek: Update condition
 for mt8195 smi node
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220714122837.20094-1-tinghan.shen@mediatek.com>
 <20220714122837.20094-3-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714122837.20094-3-tinghan.shen@mediatek.com>
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

On 14/07/2022 14:28, Tinghan Shen wrote:
> The max clock items for the dts node with compatible
> 'mediatek,mt8195-smi-sub-common' should be 3.
> 
> However, the dtbs_check of such node will get following message,
> arch/arm64/boot/dts/mediatek/mt8195-evb.dtb: smi@14010000: clock-names: ['apb', 'smi', 'gals0'] is too long
>          From schema: Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml
> 
> It's because the 'mediatek,mt8195-smi-sub-common' compatible incorrectly
> matches the 'else' conditions for gen2 HW without gals.
> 
> Rewrite the 'else' condition to specifically identify the compatibles
> that utilizing gen2 HW without gals.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
