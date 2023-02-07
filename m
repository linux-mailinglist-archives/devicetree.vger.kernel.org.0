Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C527868D4C8
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 11:49:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231789AbjBGKtO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 05:49:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231790AbjBGKtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 05:49:05 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E6E3866D
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 02:48:59 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r2so13104707wrv.7
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 02:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kYRWyPuEtA7DgZTYZbFrTJ/XnzlR3dUOPi5zrwFVMdA=;
        b=ielOySssn83UCkcO6OmsThgmO2tdIZdzLBxrhuMZksPFfbwngAOKY9TwZIHUeSzMY1
         /S1jrRxC14Q+hk2PACLPVWwNyQlTSbDDcxW15kWV1PGHbMOq2qMhHXtim42L8CP+EFUt
         FvesDQrnFmyQAZAZu1BtQi8kNfN0dBpXcXzT15plAfy4/fjNYQ/dUX0lfki3Epg8A9Cq
         j55YWDJgg+GuYGHtLxf0sS6bHk4G1U+gJExdnOrNihRHUjnDBuFMfhPrQtplk1T4FszM
         Gd+Uu9i8virBqMqtkWvU1Zl/t7B3S0SigCIXFohFVhDRCD20gUHEMmKaqjR57WguNxGq
         hmzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kYRWyPuEtA7DgZTYZbFrTJ/XnzlR3dUOPi5zrwFVMdA=;
        b=QyEyk+sPwb4Ae2TajlLmwwps9tfRgXZvT76MwY11dYfYMTVCYznuvssHHZnXlvTNB5
         j9Jn7quLr3Xng1tQlScpkmtxRgG07I0yHw5lAGHnTOXy9lOuuuegexMXKVPxdZjK6ixj
         Ed4JN/wo1bUhJlezCAODm9w5IDFq4m8L72WUuWSKyJepKcPcwv2yCICZ4DP6v0cAsn2w
         FHrFHLVItUQILgSiI9sRmsfkTpNsfdvtyI4FfnBgzV82XoUYy2zXYRwXB5i0LN6duiZJ
         y6nlgsvA8JQV1UNOSfYJQgBL+EtrbSMZj/G4BY6AR7otCT77P+yyPcklDjFlc90rrJCE
         TvSA==
X-Gm-Message-State: AO0yUKUXIEtLExtazKC3FQa8831PI0Y3Enwr6nz6+1/nb8QUV2HzmJ2y
        Q5bnXqekaqgbqp1V6m+NLAAjhQ==
X-Google-Smtp-Source: AK7set/vDGPhk/HpLL4MIQTRQC58Zob8SHagq+KC9YesI5mYtEqCoGV3zCUnorj9A/yRfBPsG4joRg==
X-Received: by 2002:a5d:6447:0:b0:2be:57a6:8161 with SMTP id d7-20020a5d6447000000b002be57a68161mr2156426wrw.46.1675766938491;
        Tue, 07 Feb 2023 02:48:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g10-20020a05600c310a00b003de77597f16sm14230921wmo.21.2023.02.07.02.48.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 02:48:58 -0800 (PST)
Message-ID: <6ee3eeef-3443-aa74-16a4-6854c166c378@linaro.org>
Date:   Tue, 7 Feb 2023 11:48:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/2] dt-bindings: altera: Add enclustra mercury PE1
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
References: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
 <20230207094101.522240-2-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207094101.522240-2-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2023 10:41, Steffen Trumtrar wrote:
> Add binding for the enclustra PE1 baseboard from enclustra GmbH.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 1 +

Bindings are before the usage. Otherwise you have checkpatch error.

>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 3eee03aa935c..6f306f9f2f9d 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -32,6 +32,7 @@ properties:
>          items:
>            - enum:
>                - google,chameleon-v3
> +              - enclustra,mercury-pe1

Messed order, keep alphabetical order.

>            - const: enclustra,mercury-aa1
>            - const: altr,socfpga-arria10
>            - const: altr,socfpga

Best regards,
Krzysztof

