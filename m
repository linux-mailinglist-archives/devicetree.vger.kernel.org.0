Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A41A571441
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231584AbiGLITY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232314AbiGLITW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:19:22 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 648C42CE11
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:19:21 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id p6so6202824ljc.8
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mPwiUa/I/QF58z2fuTg90NSWV/C3Pn2OArh1aSAWDBY=;
        b=jLek+wGEDNJr7KlZ2GnQ0XU5mNwTvxszDPPwOGmyicqVu+M1ttCGXYUxjaNlvJWjx2
         ZXn8IakQMQ2Fi3eRnDTj/3Cc9YQluDxcoFFZd0umPFkD/tEFJ33rCGlkvB/PNGRbQnbH
         VvZNbI0OPOlkGSUjHCH36jPbxKpFFHBgPOUHBcJDNcUKUvaDX5mIHojkV/qFPA3w8lWw
         qeQAzVZjcLtLvobTRHJnddCRKeqNNSBlEIBs5ie5MOmkvAfgpPvOHHxI82UKh7KOt45N
         7cmCnjOPWe5EligYe5MdZ8hfVVc3eYF1SNp4dx5N3LoZoPDp1dnzUSYtJX37Qy2mHIAw
         sk/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mPwiUa/I/QF58z2fuTg90NSWV/C3Pn2OArh1aSAWDBY=;
        b=l6bBdckKdvAu76TuIFZrtBuNuVSQPBlXFsYHXOACR27SUNFVA4yQibpZGHZgsJctyt
         jrXJKy28n4U9VV9O3ptCuRU2MZH1uC4OhwbxxDajtzFG38sxxxaS/7+QCkqXFiXjwlvw
         nySrG74nCWIY0T8hb44OpoZaRLzdAwATuAUXVEPdSqFkQFeNe5uLJ0CUMc21LBkCzadH
         JLnV2oqW6wlNx3PnAzY2MP8eLc0nH5hmHGIfNEn4spgUB6LmIzvzxIGEAvU7do/Jlyy8
         XRBTPrenLiKrp6VbfvM55gITehDl754YCO46zyS/TqAzh/wjq9oweCr4r0XN+3Mnvvrm
         /fag==
X-Gm-Message-State: AJIora8kf1y40TLIva88uUY7qExnTZUEXB+Mkofyuees8AoQkfEfCZER
        urZdENQaBmTP8FSYDiWghKALVMcSwqiKH7o6
X-Google-Smtp-Source: AGRyM1u0bOgIZMac3Bmr5k6icpSTgbmhYm6M1PQ7kvFztaYK4kYaxEMiNHHj+r1fR6aBeaJ2BqISuQ==
X-Received: by 2002:a05:651c:154a:b0:25d:7a5c:b854 with SMTP id y10-20020a05651c154a00b0025d7a5cb854mr968511ljp.193.1657613959768;
        Tue, 12 Jul 2022 01:19:19 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id s28-20020a05651c201c00b0025d547bf08asm2274689ljo.74.2022.07.12.01.19.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:19:19 -0700 (PDT)
Message-ID: <600d7287-091c-48b3-9e43-fb2e6bd79042@linaro.org>
Date:   Tue, 12 Jul 2022 10:19:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/5] dt-bindings: arm: tegra: flowctrl: Convert to
 json-schema
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jon Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20220711152020.688461-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711152020.688461-1-thierry.reding@gmail.com>
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

On 11/07/2022 17:20, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Convert the Tegra flow controller bindings from the free-form text
> format to json-schema.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../arm/tegra/nvidia,tegra20-flowctrl.txt     | 18 --------
>  .../arm/tegra/nvidia,tegra20-flowctrl.yaml    | 41 +++++++++++++++++++

arm directory is for top-level stuff only. SoC components which do not
fit any subsustem, should go to "soc". Can you move it here to "soc" or
to respective subsystem (net?) if there is such?

Rest looks good, so with different directory:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
