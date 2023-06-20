Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F9C7736A5C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 13:07:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230422AbjFTLH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 07:07:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbjFTLHz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 07:07:55 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5001BC8
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 04:07:32 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-311275efaf8so3133493f8f.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 04:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687259251; x=1689851251;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=31B9pqB8vRnug10MaF2Io91zkmp6nn8VslLqz0FB/Tg=;
        b=snYY4bMApZkjDb6gqrpEpmVJAf6+HpUxcO7AyM9Fb3VDcM0a/mSdpO6wDiFuJ+TZzw
         3hTsgN9VnEEglKv5xbyrCSQ8io7vKI4tMLkD38U1Gf9Ir1RrACAI+z/oltL5TMb57hBC
         WQOyooFa/b1og6syieWp8znlW1EG61eJx0ydWAOOxq2OSmnxqWGDNy0iTsgz6jxOvXsx
         v7cUiJVK9dA6w2XoZtyDr6aFg9f5ve+kghyUNHZ3KHJxsXMbHPB+Apu/UlYmrsoySbX8
         whMJP8q4a+mxpP5y/7PmU4BFCveLx3ek5rWKrvdn9M1vJWeyMSq3Rmaj1FVShIVMBypr
         tplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687259251; x=1689851251;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=31B9pqB8vRnug10MaF2Io91zkmp6nn8VslLqz0FB/Tg=;
        b=hzEAFo4J6xroz34eyNWsHDHPxmaIBxss2gKfgPxeg8wEsZGo1prz8BzoCSooOFq8sk
         CH0KJak76upW6SLIum5K90wXEcsX3jjXYvbNTSksbV0VQ/VfTO0c6UAige31+YK/UmPr
         FFECCXPRekoGhkg1vLdAj3Z5szWKmk98qIBBWEmNxfvyqJeZlvugUe9fQLf9+SjffK6L
         QVKgNx1xDWzNBkFi9fCBYvtDKf/jOipRmnzuE1E9EkLb6o3ESDiiBuKZr2qmHvmi0gkj
         5WCZ7g64OJwHkpMBWpVL+Xh2SCUcDUXVWwgVrHpUzRe9nxT1VYuZI+Ptd8Q7Dm8K3KQd
         FZcQ==
X-Gm-Message-State: AC+VfDxjtT6mXbrpE5oOGTVXWZGpNe0/s/bw73x+HvF6ss3SUag2qsdS
        JOGyk73a91gkbtvM0IAuhR3DSIod/x9aO2RR3RY=
X-Google-Smtp-Source: ACHHUZ7W3gnSjeAx+t65v+uU3ts3GPCpdYcjg54dllXHR7QqpGoiBZs18uEf2cVlxBsS5Gl4fADUAw==
X-Received: by 2002:a5d:6441:0:b0:30a:a478:f559 with SMTP id d1-20020a5d6441000000b0030aa478f559mr8971908wrw.2.1687259251000;
        Tue, 20 Jun 2023 04:07:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p7-20020adff207000000b00307acec258esm1799074wro.3.2023.06.20.04.07.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 04:07:30 -0700 (PDT)
Message-ID: <eb18f90f-df40-ed01-b080-57ba48ac957e@linaro.org>
Date:   Tue, 20 Jun 2023 13:07:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4] dt-bindings: clock: versal: Add versal-net compatible
 string
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-clk@vger.kernel.org
References: <20230620110137.5701-1-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620110137.5701-1-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 13:01, Shubhrajyoti Datta wrote:
> Add dt-binding documentation for Versal NET platforms.
> Versal Net is a new AMD/Xilinx  SoC.
> 
> The SoC and its architecture is based on the Versal ACAP device.
> The Versal Net  device includes more security features in the
> platform management controller (PMC) and increases the number of
> CPUs in the application processing unit (APU) and the real-time
> processing unit (RPU).
> 
> Signed-off-by: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

