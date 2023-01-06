Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 679B26600AC
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 13:56:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229935AbjAFM4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 07:56:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234327AbjAFMzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 07:55:40 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 624ED7A921
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 04:54:41 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso3456001wmb.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 04:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oAcEY5QDOfkdRSnyMYTlvLW8Pg0hIuO9y1yVmApVX1w=;
        b=xAc1OdRgkSK0ibNTwmMxA2vRKezTYCAkbSa1Kdhdm0wiV35B/X5tMCfo1pddCcp5oN
         XOY+BLDPn9BHWVsMLXSP5/krZUEtfLfpZhoCVncsjvaziXnC34KYbE9fdr+2FY023FTO
         l93s8vY6VCX42Cxc7D4kBPvBxkE6bc/QsJFMcqijKQn0iZI8afVjzgqEugKhFllGGpeQ
         25YatiF1j8W6gs4+2J3Cghw2FG9sDAWUFdEuRo0W8C+qW5mO2dmR+xubTYFTqGyK/Gc1
         TmcbLMsqNGsm5Uakm7WtpLE7xj/IEpPXdbrqzXdrK7rYwvFK+8vjlIXNkNO8k4usXEG1
         APTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oAcEY5QDOfkdRSnyMYTlvLW8Pg0hIuO9y1yVmApVX1w=;
        b=tE9c/oMWIKQc6Gh3aSvaM/bu8FGl+gSTbkYCnIdsyhKMqCY0M76CkmNqA86Xof0MS8
         8UXro4MJ1mK7UfnXKzSCB6CCnPhc2A0AjXSrDy5ezUO31rhA86kKaRACbct9XLY/g3lc
         lAUZaWhn4kNiB73IFHhDdIYYrPk+HVcr5dtgSHnUVqQ1yjId3x+MaovjJT21xIyHGsAt
         /xl6aZx0u5seYCKKgMH5ZzKiukUO8BGZ/P+X9dReNECXCTFE3JC9zYLiKweizWtE9HRY
         m+VU3jwVKX9V/ozLGD5dilEpcwKd0MOWZTzUASxnUNAaf6B4OcY+Kz38qU7c2Uu9GSkY
         ue8w==
X-Gm-Message-State: AFqh2krGkYZzfKTKVHSyrFCcKRpbIZx/MGolgVV58XFYNIJBsv8AY2pa
        jyfUOOACe7oMMcOM1XbGR+Xztg==
X-Google-Smtp-Source: AMrXdXvY41dETmYzEjIuz328GjPEwBw9xuksu6v0MUxjxupPBzuhjweqXLUquS+fs1oYcya4bPnS+w==
X-Received: by 2002:a05:600c:a51:b0:3cf:6f4d:c259 with SMTP id c17-20020a05600c0a5100b003cf6f4dc259mr38182202wmq.39.1673009664393;
        Fri, 06 Jan 2023 04:54:24 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r7-20020a05600c458700b003d974076f13sm1853882wmo.3.2023.01.06.04.54.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 04:54:24 -0800 (PST)
Message-ID: <29d2fc29-4075-33ab-e750-2891e837215a@linaro.org>
Date:   Fri, 6 Jan 2023 13:54:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: iommu: dart: add t8110 compatible
Content-Language: en-US
To:     Hector Martin <marcan@marcan.st>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Janne Grunau <j@jannau.net>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, iommu@lists.linux.dev,
        asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230104110013.24738-1-marcan@marcan.st>
 <20230104110013.24738-2-marcan@marcan.st>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230104110013.24738-2-marcan@marcan.st>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/01/2023 12:00, Hector Martin wrote:
> t600x SoCs use this DART style for the Thunderbolt ports, and t8112 SoCs
> use them everywhere. Add a compatible for it. No other binding changes
> necessary.
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

