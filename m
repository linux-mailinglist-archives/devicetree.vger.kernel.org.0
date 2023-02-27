Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233DC6A3C21
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 09:15:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbjB0IPm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 03:15:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbjB0IPl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 03:15:41 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23BF81B550
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 00:15:40 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id q16so5240360wrw.2
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 00:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T4JhC2nWay681MyZ600/nV3QW4wK4jKvMlYS/Fga+0g=;
        b=HrrgkbGG45vP0425yqDd/ojN0/PrHyRlPGxvZkkHn3k2S22kizVxn3pKE3ca9bmhRx
         FIIQ54GzG2GMZJMy4+mYMScSUxt1Uf9y54JjLNAD/qq1O8c6u9FUmhOooRRylmm+TDmT
         Xo5aHGjPSdBohi+w68qWMnSPPfXX+DT6QAYx+X+FgKj0Z7a4XwGyluNkghKuNeDs57Vu
         EkPB9IBIieYIi3TdVzW8NhtUJ2D3nXb0nkBHw8Gp/ksYOY6yyr0oWnODqm7lREh7Q7MM
         u/smmXzD8IifvROiO2feiK/Y4BWrXmitOuS0iRQrcCPFLDe3AUbcTcPebYgLwO4OxM+f
         a0+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T4JhC2nWay681MyZ600/nV3QW4wK4jKvMlYS/Fga+0g=;
        b=bMAFOSG3DGvJM3ym328byTwj8hSB/mkxLTzHcxq+AwhBz+dD/voZObhc/E4szH+O3I
         8brq7hluyg29tAAmgBPBHOLUZgygWJbgVuBo1cR+ANUf7OU/GHzyuMpvuuf0T+KTYZA+
         jKQAmQDLhDEJ/mvROvVuYP30e9uRIC8TdG14fJNabGFtyAHAZQOaH4ZAcHFRbhhtpD68
         Fxd3RE9CqNodb6fOf6x0cRHc6p22kwQGplIxxw6v7yOZ123hJJ14Uw8XThvYa1TS/qzX
         +Jb1+iW5ILnu1UTNPh1yBfuLnMg/AhmDjwkS5fnmm5FGaIGxoEx+masfV0rnB+RG2C+a
         QvMA==
X-Gm-Message-State: AO0yUKUwZA+V+HMWQlheeexaho9tFq1QBA5IkkHd4L5heY7Kj1xPkVAC
        V7pIefpINN/ERmXZIkYyDWAEQg==
X-Google-Smtp-Source: AK7set+vvGFePt09tzp4Z32rFN7rkY2KHpQe3puGsiU0Rn3K+1kR6q98QfhqZizoskKxgi53ge2EKA==
X-Received: by 2002:a5d:5004:0:b0:2cb:5b58:766 with SMTP id e4-20020a5d5004000000b002cb5b580766mr1922362wrt.51.1677485738626;
        Mon, 27 Feb 2023 00:15:38 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i2-20020adfdec2000000b002c71dd1109fsm6363230wrn.47.2023.02.27.00.15.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 00:15:38 -0800 (PST)
Message-ID: <33806330-a274-c102-8b47-4b8a25422d38@linaro.org>
Date:   Mon, 27 Feb 2023 09:15:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/3] dt-bindings: soc: mediatek: scpsys: Document MT6735
 SCPSYS compatible string
Content-Language: en-US
To:     Yassine Oudjana <yassine.oudjana@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230225101629.264206-1-y.oudjana@protonmail.com>
 <20230225101629.264206-3-y.oudjana@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230225101629.264206-3-y.oudjana@protonmail.com>
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

On 25/02/2023 11:16, Yassine Oudjana wrote:
> From: Yassine Oudjana <y.oudjana@protonmail.com>
> 
> Add a compatible string for MT6735 SCPSYS.
> 
> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
> ---
>  Documentation/devicetree/bindings/soc/mediatek/scpsys.txt | 2 ++

Previous commit should be part of this one. It is logically the same and
you cannot merge them via different trees/branches.


Best regards,
Krzysztof

