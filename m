Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FCAF69BFC9
	for <lists+devicetree@lfdr.de>; Sun, 19 Feb 2023 10:43:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjBSJnS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 04:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbjBSJnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 04:43:17 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1312D1206D
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 01:42:36 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id c65so1092393edf.11
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 01:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eiRUNfJEb5UebbP+bOsp25mzi4AWytHBppgtAtjhe2w=;
        b=PUGIP2XhQT6kZo6ICEXNDkJoudWnHqlXCqj+kG8jaHlhjQlLXpfsZBYA6q9CTKKvdT
         Y00o5xHWItasFXjsqh9wMLHePWQPQUEmu0Su2AwTLPO5ppgnMRkY1D3QAv2DEA7qT9f6
         eu6zXMAVA/7hYIqGtFtZIDWQ76XR5NOhTT0qYdhAahYmPuDa0VTERn6eb5mLmDVxzeBR
         y7Inmvyo946+AXQNP9FXIvVs/Rytv+8lwdXouSEsu0F4gEeN320XIIiohqB6Pj7Pk31s
         mu0j0Hjbd2vxmoYMxPGg5zYB9e3kdV2TDDt21nHAbkRV3bjl0THZtkn6uXs/FKlHWFsx
         3hTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eiRUNfJEb5UebbP+bOsp25mzi4AWytHBppgtAtjhe2w=;
        b=01Sn4XxqW1k7V1h2bUPs01WF17nf6jBivVqBugN4l/us1NPzdvHhEibKD6sPxx+a1P
         qtXUTi/Pcv+ZpeTdjmgX/VxQVxvKh53U0AAaHjFT6n2Mg3w+ChyODPwGjfbmnmqYCxJX
         RL83BgGrPFqgWb27bjN2/82Yc/okO/JrjlyfVW9JV+/Hkf9YCmeXTMBcqBBDC2nTJLB+
         Lk6/LJPLp7pVFUTQbzYJcTEDOmdOvpFDWhlSweJcKdSt9mwUO46vc17/f961+UJP/Sis
         QteY3TBwG0rK9xc+krSn1/fQLwddj8T+g3ZVxBdaxsgJRwkHwCcFy6vYriP0lZqW/nXJ
         8C8g==
X-Gm-Message-State: AO0yUKVA5Dk8ITI47GEtocAv3fgcXc2NMOOSfmInIlwUL4RkAMtfamQR
        p8VpBj6h9o3EkKhLH9QsB0xx8g==
X-Google-Smtp-Source: AK7set+zfHOqkP6J7Y0PagVqwfRjFKQL6SmNPQCPKEOInkKp51K4Qf8OiL6hWIVSVatXKZi7DsCb6Q==
X-Received: by 2002:a17:906:d967:b0:887:5f45:d688 with SMTP id rp7-20020a170906d96700b008875f45d688mr4708961ejb.41.1676799644488;
        Sun, 19 Feb 2023 01:40:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id kj8-20020a170907764800b008c0b8dd4cbdsm1527214ejc.112.2023.02.19.01.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Feb 2023 01:40:44 -0800 (PST)
Message-ID: <35ed22b0-6694-906d-823d-456871d8b9db@linaro.org>
Date:   Sun, 19 Feb 2023 10:40:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 1/4] dt-bindings: arm: fsl: Add Variscite
 DT8MCustomBoard with DART MX8M-PLUS
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Marco Contenti <marco.c@variscite.com>,
        Nate Drude <nate.d@variscite.com>,
        FrancescoFerraro <francesco.f@variscite.com>,
        Harshesh Valera <harshesh.v@variscite.com>
References: <20230219031126.19372-1-laurent.pinchart@ideasonboard.com>
 <20230219031126.19372-2-laurent.pinchart@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230219031126.19372-2-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/02/2023 04:11, Laurent Pinchart wrote:
> The DT8MCustomBoard is a carrier board from Variscite compatible with
> the family ox i.MX8M DART modules (i.MX8MM, i.MX8MN and i.MX8MP). Add an
> entry for the DT8MCustomBoard v2 mounted with a DART MX8M-PLUS module.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

