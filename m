Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD6FA58F7A9
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 08:32:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233522AbiHKGcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 02:32:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234097AbiHKGcE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 02:32:04 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B81A8992E
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:32:03 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id e15so24367214lfs.0
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=pwaxxtmZ04egN1JXyx5JOzRQUW94lUiaaZz7L2gKjJQ=;
        b=cPzYEHALljaH9F8T4jjeyjWlcKZbOwD0URRq5zJ5FJHrQWpOXIqG/lrZ8wVNXJkden
         DEsvc7CG7XhY5l+kWtJBdBEMyBsn3YTtIpI9pCMdCuLAjXZuv2oM26irv64MFLRZRQNF
         7KKYeTSrbMfV/tYBScrmjdZIABN4q7ENBp3ElyCHqcraC3fRz2c4Q1j8eD6n3EDh8FWx
         +R/trrK0Oi72ZKPc9e+mmImo03+KU/Uv1GmNRijNvI0jl5WddB6n9HRPMuKYiJGgo3zc
         u+6AneFPp2o1l0wRVjfoIexcUqAJKltPBVYWilGRu+eLcdM5DnuXgtOPm9kVAMObh+8r
         myCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=pwaxxtmZ04egN1JXyx5JOzRQUW94lUiaaZz7L2gKjJQ=;
        b=PHUbbHprI0Wtr/Gj1k+Wcf9ZbkmSb5Rq2a7+IVhC0meO0KO5rEikTu+prrPMPUa7Gk
         YLX2lL308VLA8zYj/Y/wewoVdO8D/Upxxpali9Blj/hFP7I0Eqh8vBTqF02PILQ8IQPx
         xGxQ1rLYe2Nxau6ul0tyg0HMfX5AjRdw0Ahf7Ev6JFFdQMDedMlpWecAoCzBer3NMN9W
         2l66E5dR5uHl81oqHJpC+Lk7kvRDhXXMnWWpVlUVbjksRMGkOXC072TW+LyQ6gialq8E
         tA/CdF+aalaHmz6K6STG2tj0oNhYofKBLbzaHtqf/xrAyRC4S2pIKzcJhQGOQm3NMEYo
         mM2w==
X-Gm-Message-State: ACgBeo3/uBFLQwc5HdFSD8Mi1nVyRDXk6c0w/ncZUsG1Pj8yI4IytOG7
        jslZmAclo6lmIYwDVcuFTjmpcw==
X-Google-Smtp-Source: AA6agR40tKSBae58qY+7RDCU5j0znPzMxsb7C2ha9lePvz2LVKF+1cqVJCSK8oZ/Qb/kmGsrWR3+1Q==
X-Received: by 2002:a05:6512:3e07:b0:48b:131:616 with SMTP id i7-20020a0565123e0700b0048b01310616mr12048174lfv.475.1660199521869;
        Wed, 10 Aug 2022 23:32:01 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id y6-20020ac24e66000000b0048a9a756763sm597726lfs.19.2022.08.10.23.32.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 23:32:01 -0700 (PDT)
Message-ID: <12a16d64-45e0-620e-34ad-1d671eff5c2e@linaro.org>
Date:   Thu, 11 Aug 2022 09:31:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v6 02/20] dt-bindings: memory: mediatek: Update condition
 for mt8195 smi node
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220811025813.21492-1-tinghan.shen@mediatek.com>
 <20220811025813.21492-3-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220811025813.21492-3-tinghan.shen@mediatek.com>
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

On 11/08/2022 05:57, Tinghan Shen wrote:
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
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../memory-controllers/mediatek,smi-common.yaml       | 11 ++++++++++-

I see there are no dependencies, so I will take it via memory-controller
tree after the merge window.

Best regards,
Krzysztof
