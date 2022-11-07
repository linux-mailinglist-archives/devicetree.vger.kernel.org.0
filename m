Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C59A61EAB4
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 06:49:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230515AbiKGFtb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 00:49:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbiKGFta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 00:49:30 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9167B7C4
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 21:49:26 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id d10so9633219pfh.6
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 21:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BrDTIKjF+Spift0ofw1JIFvDGqNjCzl7ehqas5LGuNc=;
        b=BVliihZAaYEm142eZJ2QmBuMNxhAryDYrPXvjQ/GzOeYV/y02HOgufuXbGmwygrQEl
         v28niaX5HzQPxysDDnmlu0tYGd3Q0LMEQddizPYyx1gypwYNYzFAaIQ6YB9P91BYxSA5
         KtA/+WcODwSBdfsMy5CeJsxxIJ2hKGcotaHQ66hZNi99cORxLUUNo4wlr+h+SCFPYzXj
         yqgweuaa2+YldsDCpxRTq9d3VDGfI7oNm4doRrlkMNmGxDwDOmiNdBGQhbG6tMwAOSHV
         4wQNRUOlCH0qwer3cv/xOVRIRNqjLdo7ktFvj4aKzGXia+BPjk4FYpx4kfTIyYN9s+nS
         BDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BrDTIKjF+Spift0ofw1JIFvDGqNjCzl7ehqas5LGuNc=;
        b=ePRVOyGkrLdJOqC1l08SX1KKEsiw/P2G9peaVqyuaPL/RXgKuTCCG/fAnkiWCE2V6d
         FXH/eAcLsEQNb0y2iBJfc2EB7TGiCwsKLq6bw6+AAI66HDBtXnry3P21xjPWctOv//pD
         RkKoSsJ3QK424teoyZVs8tRrcc4vGmcogJqw+NASi1s/AkLajqhRXJaP9pYRLWqyU6i8
         yaqfGLGj+zj1IN99SknbfIKOkR9YMKGhaYA4TAgRRVx7kWxNPU4FHTnReTANg3X9C1Pq
         4Nz97IXARFaO0Govuy1iU9Zi36zZQawhn/MkiwYvkpirfB/al2s5Zrz6nk8LrGU2ijS3
         EL5w==
X-Gm-Message-State: ANoB5pl+1G/xvNiRu6YF0mcqvN7nZu0wkCrVmUmTGf03IbtOM12M5l9b
        TDOA2JchPFPh1Os9eT934JNfXw==
X-Google-Smtp-Source: AA0mqf41kHCgHoev80MlyuyNdsmuwo08EhQyFJVziS/qaf8ElpUip1/0CcgTSdPzpU2mgoyAuE+4BA==
X-Received: by 2002:a63:4a4c:0:b0:470:75a0:e8c3 with SMTP id j12-20020a634a4c000000b0047075a0e8c3mr3611888pgl.589.1667800166523;
        Sun, 06 Nov 2022 21:49:26 -0800 (PST)
Received: from localhost ([122.172.84.80])
        by smtp.gmail.com with ESMTPSA id 68-20020a621647000000b0056bd1bf4243sm3493898pfw.53.2022.11.06.21.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Nov 2022 21:49:26 -0800 (PST)
Date:   Mon, 7 Nov 2022 11:19:24 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cpufreq: qcom: Add missing cache related
 properties
Message-ID: <20221107054924.ohm7s2cnyywjxrqw@vireshk-i7>
References: <20221104162429.1981729-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104162429.1981729-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-11-22, 11:24, Rob Herring wrote:
> The examples' cache nodes are incomplete as 'cache-unified' and
> 'cache-level' are required cache properties.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/cpufreq/cpufreq-qcom-hw.yaml      | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

Applied. Thanks.

-- 
viresh
