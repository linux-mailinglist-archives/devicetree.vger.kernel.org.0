Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D39E6694B76
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 16:43:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjBMPnS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 10:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbjBMPnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 10:43:17 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0D0718B1E
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 07:43:15 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id k3so5067629wrv.5
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 07:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=grZOW/8aqAxwWW1v+gy6Pklv/5DczNl6MJ8KfdGTD48=;
        b=Mn0epFcPhTHPvPIiTCKz49cfIAIM+YjqM9xB6cayrF/pkYdfjOIHLc/xGZGhBMVE2X
         1FVAmEk7CYrsaIzgV01uHkXgmnVZceRHE9SYeB0Otpxsd37gxUa2ZAeBAVHESnp9iNwI
         qeawgugiKeIuqjajD0obzmYzQ13jcEzo9gc59pN65kx+0euEYDnM8XmT3mTzQxegoptM
         QUQZ+mwp46/thb1S44mhedYlAkOVuOwnqAGAkdyTps8DgUFH92F7Jz8OLBUnKwJ84ty3
         IYrCywkjd5TuUfWpeTOAYYrOpBeSNtVsRAmyFiU1bu+zSJ8vCa5DYc1X6SbXSL/16+O9
         sp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=grZOW/8aqAxwWW1v+gy6Pklv/5DczNl6MJ8KfdGTD48=;
        b=OfflNlv7su4gmhwEMwZHejjV8G3CSP4QUYPzZ2oCz/zmU0W63wjHVoSfyMpkHBkZ/B
         8bOIrXTXOS5kw8Srg3sTEBdPQLSDNAP30vh0rGcDDnvbFjCuM/kGhMKTcSPBX2adJGa5
         oEingFSHl9s6EhLkZtM2NDaUN1lO4YMrw3JXbw3LP6OZ9aLnuSbDgLyhsN6dRFbcvjIG
         3f193vwQCptIKBi0sHDaZDkdLBLLwAzUeW+PqWt7g5GLXnyznMiEcZyymE0DAgm9WRwM
         xu+VV5bHrbToqzI0Nyi+NGfkEpCrCRrPqQN9Ny2FFlmSneEUuSw83LLcXRaf60CJZV8U
         fbbg==
X-Gm-Message-State: AO0yUKV3dd/DuzvlSCLmdvgRW/x4nGOyeYaH0nUPuuqc93GhC9TyhyQS
        sdf9FvyEkAj/fwwyKj3ykmLlYw==
X-Google-Smtp-Source: AK7set/fv3IfkRhQdb43GUNWPWUP+KWdabW3q7k8WpoMLDKXd9GZktRrSRP+huAK9bzTxI9M3fP0XQ==
X-Received: by 2002:adf:ec83:0:b0:2c5:56f6:52ce with SMTP id z3-20020adfec83000000b002c556f652cemr4737026wrn.26.1676302993959;
        Mon, 13 Feb 2023 07:43:13 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a4-20020adfeec4000000b002bfc0558ecdsm10735081wrp.113.2023.02.13.07.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 07:43:13 -0800 (PST)
Message-ID: <ea8b3ed4-2a94-5378-8c93-4bff1f58c70b@linaro.org>
Date:   Mon, 13 Feb 2023 16:43:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] dt-bindings: mmc: rockchip-dw-mshc: Add RK3588
 compatible string
Content-Language: en-US
To:     Lucas Tanure <lucas.tanure@collabora.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>
Cc:     linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230213152740.359055-1-lucas.tanure@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230213152740.359055-1-lucas.tanure@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 16:27, Lucas Tanure wrote:
> Add RK3588 compatible string for SD interface.
> 
> Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

