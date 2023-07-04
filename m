Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2350E74692B
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 07:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjGDFsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 01:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229955AbjGDFsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 01:48:17 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA2F0E49
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 22:48:16 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51d9128494cso4845469a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 22:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688449695; x=1691041695;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UdcpK0TGfVOpUi3FvoqQbLWi9UKO2fgo/3u0cXln2gQ=;
        b=AYAvf1isMLVmdOpZc3LRZjhsbRslrPlDiin+0tKpT2x7Tx+qyCifBpoKVRjIXiprTQ
         y/9JT67EGaOiVuAeQK2rF+gmLzABWwWaWk+lYhDA7vj/y4mIi9W3nQnpK6by00ijHDbJ
         CySiJANyWOzQ1X1JaplkNY9NI3conxU7GX635X4bOF/B2V7VOHvh0p2t7x2LEdgWN67p
         ksvR7WQGh+hkVfcQ1XsLjh5cnwTDT+TjV3eXWOB8AEiFVCIZt/05TtJBl87SAXIn6G/n
         JorMbsUVHhGgiHg6jGkbol9jNbsRzYO5y74wWQmlDFqM6t6w57P1nFGONzJ/G9BUGJ+t
         Z56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688449695; x=1691041695;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UdcpK0TGfVOpUi3FvoqQbLWi9UKO2fgo/3u0cXln2gQ=;
        b=cgDylwl8g9vn9BPy9I5mp45JbK8WEc+RWQFHRCpBbt2UacfIsxCMV5Zw+FMUJKfehh
         lywD7ONjVBB3z6R2GsjgXS7dHoLhUskApYQAjyAGIyWElzCcaIVO1hE7OPMGhqNSZo/l
         f/gv4epEoopSnxnkQ4f233ElSpOvpNSQ5owCIVUWiNWxjIafR8jOVl60XP/dYFuPDFHh
         /9/lfbFbZUuGahq5txuJJTCGepkydBAlC9xa5kDfDpVugd3RYa05ZB0uXQ5N+eSl3JWC
         D8pk1TAHSHUrfvmvgMfUUfAR/VpQnD7C3Rd1y6pHqbX4Xqg//bX9wtlyee6AgjyKY+Tr
         dXYg==
X-Gm-Message-State: ABy/qLZ9yROj3Dq0C4t3unSLLLvtozdq7ECDhTO/83TrXgoWElyNw/T2
        6BQ/kPzYKZ7EB8MYGWekCZyKsw==
X-Google-Smtp-Source: APBJJlEr9YF/9CNvGTe9vjpKd20FUAoxwqrMpGl6gocRSWRY/Mtmuh2yQ0ohbrUFyjLn8JQKjpzgTg==
X-Received: by 2002:a17:906:3453:b0:974:771e:6bf0 with SMTP id d19-20020a170906345300b00974771e6bf0mr8047779ejb.56.1688449695121;
        Mon, 03 Jul 2023 22:48:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id t14-20020a170906948e00b009886aaeb722sm12793010ejx.137.2023.07.03.22.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 22:48:14 -0700 (PDT)
Message-ID: <01c7baae-4cc7-79af-8839-6f72b5175ef9@linaro.org>
Date:   Tue, 4 Jul 2023 07:48:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add board AN400
Content-Language: en-US
To:     Xianwei Zhao <xianwei.zhao@amlogic.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230704031636.3215838-1-xianwei.zhao@amlogic.com>
 <20230704031636.3215838-2-xianwei.zhao@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230704031636.3215838-2-xianwei.zhao@amlogic.com>
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

On 04/07/2023 05:16, Xianwei Zhao wrote:
> Add the board AN400 tree bindings based Amloigc T7 SoC.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

