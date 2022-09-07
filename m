Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 074F05B023C
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:59:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbiIGK7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:59:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbiIGK7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:59:13 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14EAB9DB52
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:59:03 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id bt10so21849287lfb.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wKm3uG6dnmLu6065OH92LURAn1cZIHuh/RQvvLdKatw=;
        b=j6sIX7dAOU6LiLhI+DbXtEQ3xWYTMiJ2XI0X13RPmjNrxD1IldAA7mlRE/NCrLQBrs
         DtpWtC1fs6C4MtLbPNFbBb5rVlQpZbZeuo+cvsos4/r+ZdElChPoQOO4/5X84RMip1D+
         cWHx04tG8V5wmoeQZhxMvyY2RwN1l4MF1n2DoyJnq12qb04khczTwh/2Ppebtfj6W4dl
         I2nqyh40VVyforCnWUwWEKf9iflCQRLwNq42qhHa9pybEIikuI+VrECiHcZn0mnZ5O0Y
         hwbstKKv74BTdhik0/+ZYTW4trUrZMkhkwAkVPkaSCg7cuIvAJxB6rg7MGotK/Z+XanD
         NoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wKm3uG6dnmLu6065OH92LURAn1cZIHuh/RQvvLdKatw=;
        b=kZXlPEM1GLbDgIK7TmFMrp7BYdE+yZXkSDWiQG4CqIpFnIqIaS9R5wYsJEKb3sUy4k
         Y+i0qsRwdz0cTSd/vOB/tVDLnJXcIhQVuRfr2mbtP1CkvYe4pg3PCKOqbTjvR66KlPee
         +geoi1Z8TY+TsZAayjpoVOfnC7xhig1Heghd4OdwojPds3BxmQknNctdlJgqQbrm4S7P
         JPZBZXMOhd/6no8DP9hwUu4096OrH9PG9ifXPuLvTTkrdkU8QzDzSxfazHNPRvggJoz7
         Zbs3MhprqseFeCjbmn0zW+MkXiGRjCaJVTU8PMm7m904bPUoPprhfyMJx69dXgrwUIs7
         k6vg==
X-Gm-Message-State: ACgBeo1/8OtFTBaUW1clNxtD76VxXplwyKpe3fYeippTbqUi9wBkZ0jV
        qj5OGNiUd/LfWZ2w1zaxI+XIbQ==
X-Google-Smtp-Source: AA6agR535DSsJbmbG7MCjomzkFxhTgd6pYqx4jrn2/eODdAhxttRGXTT1odO6n5Wqo2pvRf8Yg7Pbw==
X-Received: by 2002:a05:6512:1115:b0:497:cd1:463 with SMTP id l21-20020a056512111500b004970cd10463mr902018lfg.24.1662548341227;
        Wed, 07 Sep 2022 03:59:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bj33-20020a2eaaa1000000b002641ede39e1sm2562275ljb.9.2022.09.07.03.58.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 03:59:00 -0700 (PDT)
Message-ID: <c6891245-03a7-f902-1b6f-1702b2a818bb@linaro.org>
Date:   Wed, 7 Sep 2022 12:58:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/8] dt-bindings: Add headers for NVDEC on Tegra234
Content-Language: en-US
To:     Mikko Perttunen <cyndis@kapsi.fi>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Hunter <jonathanh@nvidia.com>
Cc:     Mikko Perttunen <mperttunen@nvidia.com>,
        Ashish Mhetre <amhetre@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220906132823.2390953-1-cyndis@kapsi.fi>
 <20220906132823.2390953-3-cyndis@kapsi.fi>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906132823.2390953-3-cyndis@kapsi.fi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 15:28, Mikko Perttunen wrote:
> From: Mikko Perttunen <mperttunen@nvidia.com>
> 
> Add clock, memory controller, powergate and reset dt-binding headers
> necessary for NVDEC.
> 
> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(which is ack also for memory-controllers part, feel free to take it via
Tegra SoC)


Best regards,
Krzysztof
