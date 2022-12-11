Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA8064962A
	for <lists+devicetree@lfdr.de>; Sun, 11 Dec 2022 21:17:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbiLKURF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Dec 2022 15:17:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbiLKURE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Dec 2022 15:17:04 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78D9765BB
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 12:17:03 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id q6so5231224lfm.10
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 12:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sPgvv5cM0oSPYxsZv88ImjFPC2Vl18Oh/MuK/grhjDs=;
        b=xnDZGt6etwplodHR1E8Dz8ar6iW3Xeta41yGbvnSphSG6ObafRTz9gIIWbNimtb166
         jRpxhUGiJgBq5lGU6UyMPvkMaUL79QKxQN5fYjN/u1FuQDtZ/7S3zJSXqI5hDYGIVA0I
         Bo7zexFgMM5X8kF+c1qnA61voYn57fj0pwApv1KfLsmnx6cJrmXET2EFuU+9VIbfC6YX
         fpoBbSM86EpH/drcVRXnP4tYyCkwCIQg5yrfyGToaoS9kapydFhK18m5s2O/pkhCMtRe
         Ajs3ghEX9Ab2CGHR2Dx7JGmb+lH4uS5sG/zXENlZtQmwfUC4CpzwuodsyaPGrSlNjszr
         QDhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sPgvv5cM0oSPYxsZv88ImjFPC2Vl18Oh/MuK/grhjDs=;
        b=Wo34tZl0PH5qJpFp9lionuCBDrotnFdzPuxOpYmhOYYvaqaUzQWuW7o86nbqzbw0kf
         j3kkojL3dlfmXoWuXjwtzS2OJV810u8u4JCwWP8G9XoLO3AWSeQfQR5KkKmPHqMuhMiZ
         //8zOgsmcQEhgOZOB2Ejy4FAeqj15dmiuw/4tQhf9kLwSlb+FXNnvmRhRPntD+MeF51q
         CEnRdNCWtp+2g7TwI4ECi+6+313WDhgjwyz7Rj+LZMWM3eO15gPR5/ZbhElRIZnppfo+
         niunxBMxM5CSb+nttvm5naq56saKsVMk+hLJG62rUoTeGHz5VXPMG9iPH4EC6GwVst4d
         i1KA==
X-Gm-Message-State: ANoB5plQYVTKZkyMnld37XXw7z67J1E03H4WzhYfPeaNT0Nhw2ozJiDz
        JgWGen1qWDeXKijkV0bHODjfuQ==
X-Google-Smtp-Source: AA0mqf5pfi7RswBzTQure7Tg7IBONyzg1o3h3hh7gYT7H0pcCMDbrwSvnU7288b/kHYuQfYGEj5mFw==
X-Received: by 2002:a05:6512:ba5:b0:4b5:869e:b5ec with SMTP id b37-20020a0565120ba500b004b5869eb5ecmr4714243lfv.61.1670789821914;
        Sun, 11 Dec 2022 12:17:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u22-20020ac258d6000000b004b55da01d3csm1311205lfo.191.2022.12.11.12.17.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 12:17:01 -0800 (PST)
Message-ID: <fa9708e6-e5f8-798a-81bf-027dc09b4ffa@linaro.org>
Date:   Sun, 11 Dec 2022 21:17:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] dt-bindings: mxsfb: Document i.MX8M power-domains
 property
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20221211025702.672364-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221211025702.672364-1-marex@denx.de>
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

On 11/12/2022 03:57, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus.
> Document the property and mark it as required on the aforementioned
> variants of the IP, present in those SoCs.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

