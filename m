Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 562B1608E85
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 18:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229779AbiJVQaF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 12:30:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiJVQaE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 12:30:04 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67DBA50509
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:30:02 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1322fa1cf6fso7222742fac.6
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7SWOvXweDZtmkeWSuLz6l3o0fM/vaQf8Gw102I5GRQ=;
        b=G2k9jjkJCEai5xU0b1yIXA4xPlcxeZUesmGr2osHTA4IYYE1IgDDkYsqRAUVIVtdgk
         GLIIvHgw2c70Ey9XB5CESFoq93sozsyh5IXwS43rGyMW/cohocxhwjsEmwf58/kfF56/
         SVDqL53QkervbiVMC8cpiF1QJAMOdItMguNSgl/3CeUHnH8+4SSn7AZYjvmhsiWRRSih
         sLdN2h931hAUNtB/wWk4l8YptO9JLY31oRbfU8ERFMSh+yn2+PCmH7cinlQ0JCxK4oR8
         XmG2g1DuFJoE1me8OZ0ZHWpfQP9FLI7Y9qtdzVX5TvNyY2dJtK6E5XIrwZT2cX7xZ9d4
         NN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u7SWOvXweDZtmkeWSuLz6l3o0fM/vaQf8Gw102I5GRQ=;
        b=4Vp09Lgb5lso4VHoQ1gPhVCkKQvXw360baHWIGu5tVvlCz1XIp2wlgcncx01h5TDEF
         S+3bi4WW6GOkuQLPAz5nD7FM56+/7/OsyTjn9s8bt+soDtwroC3oje0tjcfCIuVFfQ/3
         nLFjGCsZBKV7uWDxgFSg7l7cHBGIL7IO6d/P+vl06bBD5mBVjPGIvQS4uyS4bjJjoz3x
         yXBhRVe+CC/xa78GePW61BHJHtwdtY2mcDEWHZe50kzZFL2ZSeujKiYs3jgUdWCAGrtF
         gkjIZagT51O3cgzJRPBDhZE8Aa0mZOvhGJxMZpuKRbksIBqy7PBcQ8bwBKqlaUzgR1uC
         ZSrQ==
X-Gm-Message-State: ACrzQf1T1PN1zjVpkdROQeAPjSv5uySwYV4/IvknFugQfP/zz5LEhnWF
        9PgBUFAzf86hGhY4rdrIvsIciA==
X-Google-Smtp-Source: AMsMyM6xS8BBgTyJDXX7TcLvYtSmpPPTRH/GpaUvPLRo7YA24xOp6Qq1yrXugxI5WF50ALMLGn+ljg==
X-Received: by 2002:a05:6870:56a7:b0:136:74fb:e6df with SMTP id p39-20020a05687056a700b0013674fbe6dfmr14877673oao.37.1666456201795;
        Sat, 22 Oct 2022 09:30:01 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id y3-20020a056870418300b0011f400edb17sm11796775oac.4.2022.10.22.09.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:30:00 -0700 (PDT)
Message-ID: <0c88ae58-2841-f0f3-f103-f3030c5cf704@linaro.org>
Date:   Sat, 22 Oct 2022 12:29:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 5/5] dt-bindings: mmc: mtk-sd: add mt7986
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221022090530.16265-1-linux@fw-web.de>
 <20221022090530.16265-6-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221022090530.16265-6-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/10/2022 05:05, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add SoC specific section for defining clock configuration.
> 
> Add compatible in "not" section to avoid override the settings again.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  .../devicetree/bindings/mmc/mtk-sd.yaml       | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index c7bcf0c3dd5d..9df63c461f1f 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -229,6 +229,33 @@ allOf:
>              - const: hclk
>              - const: source_cg
>              - const: bus_clk

Blank line

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - mediatek,mt7986-mmc
> +    then:
> +      properties:
> +        assigned-clock-parents:
> +          maxItems: 2
> +        assigned-clocks:
> +          maxItems: 2

Define these two only if they are required for the hardware to operate
and only such setup (two assigned parents) is allowed. Otherwise you put
some constraints on board design.

> +        clocks:
> +          minItems: 3

Best regards,
Krzysztof

