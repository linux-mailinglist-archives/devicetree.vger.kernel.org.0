Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED9B96F501D
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 08:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjECGa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 02:30:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjECGa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 02:30:28 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9351F1FCF
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 23:30:26 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94ef8b88a5bso726679166b.2
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 23:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683095425; x=1685687425;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fedxg7gZ1h8LLsR1yvOHRY06EVDSSXBvBk82z0z9LUU=;
        b=Yr2SmWTexUZOLgI7DWYaampCqVkEHDwutJOTkiYSVJ1ksTMoLD7mT4bJ0r8j1GCwud
         j+MDQJyqxZMI7Tu6OhG1eFfdDoXhm7/O3/VUsN2Cf4qISUhgxdQ9EAsHS2Ak1NVUDEZy
         OV+AKdVL+PJuvripbGZtMxnx9NXLnS9vTdRFjINN6hL64AYjBp/lixSyk+wsvRVtcvDB
         g1ACoOYYrNX81s4Ab9hrQhSn4d13c3vOABXa9sbOT/opPyErmH4e//rDOExrjCEdWKtE
         0lPAsFJjzUjk4WxXhOBJ8Bh2O8Vo82BDvHInzy2JVv4WvQe0WUQ22k08Pl3v0TPT+033
         Szww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683095425; x=1685687425;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fedxg7gZ1h8LLsR1yvOHRY06EVDSSXBvBk82z0z9LUU=;
        b=E4VD7lUVHL7eYaV7iNdhxvos0GDoAZLuKwmxFSYgYLFJktzWAIJgkW0jD2w7NJKAKv
         Whxx33kRy7wg800XrZM79/5L2vTOfFv1wcKju3ShwGkN/7E5lmFizbgufEziVteGRG4c
         zvWhMIRlLOulEg7LVo7Oah7qt6YLxGME48cEUv6tLy/vMm1BQ7DDZ8MtKza76JUZx0pJ
         rZ3lwqrQlp3wjYER3bVrTCA8kJKepn5C0SHxuYqDVwCiXOvH8bAz4ZT4Yr9ArY3KBnf+
         aoNFiXpwDky7ib229q4WCikDLIK8nQmRoBEJdnALOgSBFmrutg3uUx+pJ42QkKT+QcQU
         YC8w==
X-Gm-Message-State: AC+VfDwN3sn9rGnhyDixsnVvWwHXiFgtew8AmzuCUfyJUAFz8qDXO1Ai
        MSluVAPJOlhFrkI0Y7j9MTS2bw==
X-Google-Smtp-Source: ACHHUZ7NetKDA1jAuean3fgV0HB80b49vOf5ovLUODUwEEdXO55G93GNCN0vGK8RRcGbwWIbf4tb0g==
X-Received: by 2002:a17:906:9b88:b0:94f:8605:3f31 with SMTP id dd8-20020a1709069b8800b0094f86053f31mr2253634ejc.42.1683095425117;
        Tue, 02 May 2023 23:30:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id sk19-20020a170906631300b009572a8f86fbsm15414283ejc.165.2023.05.02.23.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 23:30:23 -0700 (PDT)
Message-ID: <347fca73-4537-6322-6263-d67a5ffe094d@linaro.org>
Date:   Wed, 3 May 2023 08:30:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2] dt-bindings: tegra: Document compatible for IGX
Content-Language: en-US
To:     Shubhi Garg <shgarg@nvidia.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        jonathanh@nvidia.com, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230502105437.769350-1-shgarg@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230502105437.769350-1-shgarg@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 12:54, Shubhi Garg wrote:
> Document the compatible strings used for Nvidia IGX Orin Development
> kit which uses P3701 SKU8 and P3740 carrier board.
> 
> Signed-off-by: Shubhi Garg <shgarg@nvidia.com>
> ---
>  Documentation/devicetree/bindings/arm/tegra.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

I just saw it and reviewed it, so both are v1?

use proper versioning and add missing changelogs to the patches.

Best regards,
Krzysztof

