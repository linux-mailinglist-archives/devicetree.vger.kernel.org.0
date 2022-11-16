Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CAC362B6D9
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 10:46:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233171AbiKPJqH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 04:46:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232501AbiKPJqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 04:46:04 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B12DEE
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 01:46:03 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id x21so21083968ljg.10
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 01:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VlPvJofxjAbwn4jWtFmNQoJ3cJnk9d0bOElPfxM86N4=;
        b=E3PnT/l7Vbdcya0LkTfpalx3KDHcE8+grtNXIocnzLJb72/zjxl0OlFVqUOVrQD7em
         bukGFwoPjXdd6AJCfbxICBfzG198Y/aACcd8lFl/B0GZWruO+RARLy57Oen8MqhFCIh+
         gVktML98QEkkuRP9gnKXVjPwL/BsgYApVXD8l33lGlyUwEzz/wx8bWvY+yM6EfG8tHp3
         PFC9CK0jqu0lL4pNBZMH5rKdWKktirQC3Z430b2EHTWHNNHsZuyqDmp643b/StIDrWRV
         +qGRAn5DymULk6l5IfafFWCHXNyjU8blgsNsLsSLyzMrZotPgTuJ6Xpvpd/FmOH0owSi
         YiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VlPvJofxjAbwn4jWtFmNQoJ3cJnk9d0bOElPfxM86N4=;
        b=h9i6OBuMmfg7BlPBEOq/GUPqjcyE8mLCZxd7wRZFs8/FVj5tThjsJ5/TOzBqRawK1M
         U5u+w9uOb3HNpt53tZF4e30rZf3BWAqBunyk0vB2wDhAezVUscLgarGyrzBvMeHgJBjh
         lQIXIwFBrhKTy69WYAS46J6+FfVv/YcJpx8rzyKcA+yT+mRFNehLiwK08U50e7/MsGWV
         J8KEfejJXUAkgzcBkpSFPxAGwP5WIfeGrzn/YFUc30DVRcydO19pvLlAdZlNEi1oBVRm
         jZP5abz3gRS+HoEtOJKeXlCWWccg44vI1DP5cxRqmd8H51Eb5zbCsD9gPzGahghuilPH
         hYNw==
X-Gm-Message-State: ANoB5pndwm7TLFzrSsnZ27HtaYlJ0mBs7zn2K46sUB3eUhuA+UV2ud0R
        jTaTid+2Q5F5pnr0eD2ehSR2bg==
X-Google-Smtp-Source: AA0mqf4aktk2UYPioPNM9N7IXXS8kx14IfoPMBd8ybNvIAoa1znMcPZnBHancmUOaXr52g14tbLgcQ==
X-Received: by 2002:a05:651c:2c9:b0:26f:ebb8:7a0d with SMTP id f9-20020a05651c02c900b0026febb87a0dmr7636826ljo.474.1668591961602;
        Wed, 16 Nov 2022 01:46:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c14-20020a056512074e00b004afeacffb84sm2530195lfs.98.2022.11.16.01.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 01:46:01 -0800 (PST)
Message-ID: <2a1af80b-cb1a-6d87-689d-bed8ac53bff7@linaro.org>
Date:   Wed, 16 Nov 2022 10:46:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: renesas: Document Renesas RZ/V2M
 System Configuration
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Phil Edworthy <phil.edworthy@renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <chris.paterson2@renesas.com>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20221115123827.736141-1-biju.das.jz@bp.renesas.com>
 <20221115123827.736141-2-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115123827.736141-2-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 13:38, Biju Das wrote:
> From: Phil Edworthy <phil.edworthy@renesas.com>
> 
> Add DT binding documentation for System Configuration (SYS) found on
> RZ/V2M SoC's.

Thank you for your patch. There is something to discuss/improve.

> +properties:
> +  compatible:
> +    const: renesas,r9a09g011-sys
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sys: system-controller@a3f03000 {
> +       compatible = "renesas,r9a09g011-sys";
> +       reg = <0xa3f03000 0x400>;

Use 4 spaces for example indentation (two is also okay, but not three).

With this fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

