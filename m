Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7252E6CFCF8
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:38:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbjC3HiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbjC3HiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:38:03 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20564202
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:38:02 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id q16so23349367lfe.10
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680161881;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhmKb3uPIySGSXJ0VGQ911OR/xB/9Nx7pg9TyzMCVlk=;
        b=frTws3sj1H6l/pBsB9Acr718ABKu/SQSxqUUx1gmdpn9apoilq7bpSJNWyzr3PaIZC
         34MkNQ3DV+pD1t1mYjS5zAfFuA6LwFUKDu2ptcVybBhO/1vQRZq7rCQiPylk4zMrOKq3
         7m9LdXOwvktrvWWZSQmGK/qtb2Qp0o+1n4zvH6McKtYYSm/k05IrYLFlNs8JahbH8oh8
         IUP3En4IbWJtDeSbvwdTPJirMkLzTj/aHonbstBhp7eHVGVvP3pTMuTYBw+k4bj5oymj
         pB9IckDs3W3KYBMxzFDL/SHh0mxyUEhDxl6RB2MkXkQzxyT23PYSv62E81obmlIZshKK
         GTxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680161881;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhmKb3uPIySGSXJ0VGQ911OR/xB/9Nx7pg9TyzMCVlk=;
        b=xX69+gXBz0yWUfD+PA5Wo1fN33iVYM3If1rsXgg7g0LF2WHUVaEQPAdZfT8f8mB+QT
         NC8TVYEwFjrHI5sHwft8ICNHuqSIBkYKCI8HvA6NSqs+nyoqPAksWpUJ7AVHS4KFvOUI
         UljUJS4MPqCEjT5t79peTy7DcZLg+2vy9AcxU/TC3MAjHpBN7np8KVO0F/lQ3SKDLypi
         dpaDURVyKjs5XSz7hL+1kuUJvzbYROslsFgjgVvP1QMADKIE72HKmyUOADMnqzGWlJZw
         WXgjnfcROMhUsAiSLIZBdIEahX86Ze2iOGXwvXTPpiVRXG8K2MuAKObQFCNWTKBWbjBR
         oTZA==
X-Gm-Message-State: AAQBX9cF9L/k8CVooy+iHw3dZtEtcWdG/vtd2E3BK2SFo6JNSH6nGgo9
        IT9JHsDaQ/zYoaW0K1UMruFEWg==
X-Google-Smtp-Source: AKy350ZxUHzZgnTyodewFPy9tQt2p3eJU7SVhctNmCZ6gXVpL2MSzIJw0Eg8j/gZkXcFIPUMapU1bw==
X-Received: by 2002:ac2:5218:0:b0:4dc:828f:ef90 with SMTP id a24-20020ac25218000000b004dc828fef90mr5809497lfl.59.1680161881092;
        Thu, 30 Mar 2023 00:38:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id n7-20020ac24907000000b004e85f7ec749sm5737260lfi.117.2023.03.30.00.38.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 00:38:00 -0700 (PDT)
Message-ID: <ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org>
Date:   Thu, 30 Mar 2023 09:37:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: display: exynos: dsim: Add
 'lane-polarities'
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     inki.dae@samsung.com, marex@denx.de, jagan@amarulasolutions.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
References: <20230329144155.699196-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329144155.699196-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2023 16:41, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The Samsung DSIM IP block allows the inversion of the clock and
> data lanes.
> 
> Add an optional property called 'lane-polarities' that describes the
> polarities of the MIPI DSI clock and data lanes.
> 
> This is property is useful for properly describing the hardware
> when the board designer decided to switch the polarities of the MIPI DSI
> clock and/or data lanes.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/exynos/exynos_dsim.txt      | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> index 2a5f0889ec32..65ed8ef7aed7 100644
> --- a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> +++ b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> @@ -29,6 +29,12 @@ Required properties:
>  
>  Optional properties:
>    - power-domains: a phandle to DSIM power domain node
> +  - lane-polarities: Array that describes the polarities of the clock and data lanes.
> +    1: inverted polarity
> +    0: normal polarity
> +    The first entry corresponds to the clock lanes. Subsequent entries correspond to the data lanes.
> +    Example of a 4-lane system with only the clock lanes inverted:
> +    lane-polarities = <1 0 0 0 0>;

First, please convert to DT schema.

Best regards,
Krzysztof

