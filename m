Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F1FC70A457
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 03:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231189AbjETBeS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 21:34:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231185AbjETBeR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 21:34:17 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88BC5F7
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 18:34:16 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ac8d9399d5so45139201fa.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 18:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684546455; x=1687138455;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pLAGUtWMudiFE1fjRVJz4UPReT3teB4CnEhketxzvG8=;
        b=jtF8SWdB4WbRVXC2NVHEZAvpwX249s2JclIrlpwexrwTZ2cgknIxXFoIhINKIkcngD
         APKbH2AD071j63Ei7ZCjRI1cp3sR8ofPnMa9S+XUjAUpqcGwkEGcPnoZpNeqQjcxKRU/
         1bZ9K5Xzfn680v4atudeR+w5P+OUWHaQixtmKmpyo99nmTydUPJRLgvoV7GLffnLjbCw
         +7c2yO4kksTWsoRJNjLgSvyjbsZdl4IxeX4OdRdo2/bILsDog/QeiCBEY6XyYVD5MgLs
         PVniMBfasG458Cuy73WkDz3ybI67t7Kj3E0BlX7pibybU/fzS8tBbrjxg1beaIWUuomF
         BFLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684546455; x=1687138455;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pLAGUtWMudiFE1fjRVJz4UPReT3teB4CnEhketxzvG8=;
        b=ky11QNEYRPqqRuszJviOjj96+61TWFzAunz0TYjSNHSi3R6COz2EnzKTTQ5BvmoL6Y
         DGzWkJjcmD04gBHB8b9Q2wdQm3aF9SHyu03qHBQ72zb9QjSPmS72Zor//AZU10+Cv70k
         kP9Z/WaC6UxsdPZZVYLcn6iKu3ijhv25FRNrzFxMREO4WZ9Cpa4fJU+n1osGWJguC9c8
         T1++mnZp4CyUH+iXlQmF/FS0y4eiy7GhW4bUTAi/CjnmNf5vV/lkH9zSN035tLJ1Q1Hm
         YZYs+1XhGquIzRHZNUG74k1nj+uOiGwOj59IbLNDTm8t7J/uMJuHMEZy4uB0qZ9VX8+9
         6EzQ==
X-Gm-Message-State: AC+VfDwuzq2GiBJeFXkRF+qT+5hH+kmgo/NgI2c4CyMZb2j95TiMPrIL
        7LlDmdLJa277RU9+nr8zigjWIw==
X-Google-Smtp-Source: ACHHUZ7G6s2ldDT/PJWyP3GIpJqiwJxUgAD9NJmFazGPXUEt5kQ8ak4Spemx2LJsae2R6elvXeTolg==
X-Received: by 2002:a2e:9ac7:0:b0:2ad:509a:22b8 with SMTP id p7-20020a2e9ac7000000b002ad509a22b8mr1586632ljj.16.1684546454796;
        Fri, 19 May 2023 18:34:14 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id l21-20020a2e99d5000000b002ad333df101sm73780ljj.133.2023.05.19.18.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 18:34:14 -0700 (PDT)
Message-ID: <e04ed1b6-958e-ffc8-ea5e-7fe89bb2b9f9@linaro.org>
Date:   Sat, 20 May 2023 04:34:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 10/12] iommu/arm-smmu-qcom: Sort the compatible list
 alphabetically
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev
References: <20230411-topic-straitlagoon_mdss-v4-0-68e7e25d70e1@linaro.org>
 <20230411-topic-straitlagoon_mdss-v4-10-68e7e25d70e1@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v4-10-68e7e25d70e1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2023 20:04, Konrad Dybcio wrote:
> It got broken at some point, fix it up.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

