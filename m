Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 172716F5BC4
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 18:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230481AbjECQK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 12:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230505AbjECQKx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 12:10:53 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3BE476A2
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 09:10:25 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-956eacbe651so1067790166b.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 09:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683130222; x=1685722222;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MYyaoj8Q/I/Us7y08GPiQ94EBKjj+lyd3WqGJBJPwSw=;
        b=dBw2i5oMj1+va8VKpl00IwyUGoupq4xPQDQptcJvuMkjcbLcNeSJFH2HHsZHH1AniB
         6gtW4T/W15RqkusHKqKl4dsiKN7iE3piruslynidYHEOsu8lTTl1xqqnmsXfcJc7UE+m
         30zleAz44oWe50z6DC8Cv5Whv8y6IdZgTZ1VVF9dtaWHI2cJEnLzTRXTA/bhDu0zjlBE
         iYXeOuFRuEdLX8AyMkyoMDJcjXztIR3hetQgSoOGNV4oC6NkI67zT1m6rS2Gb5mToO0d
         vpcYE76VdrtDmH9DsObFj9dWkWoMru3l3BsqZBLpyiroKiITMnJtIsC4vN67HXHP2kvs
         ot0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683130222; x=1685722222;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MYyaoj8Q/I/Us7y08GPiQ94EBKjj+lyd3WqGJBJPwSw=;
        b=Hq67giUS0cxfxRVLVjJUbngaSnM/Lo+6jGcz6bWUpxZP+qRemqBmTERxIa9us+mJvc
         GwpWiepJC3seXX6dIlDSTlDZoOnd09XPXskiWe+6RNs0UYOktBDnxGZPbu6GOIzk4ZjQ
         V+DtelUMDnoLfxnzTWGnjDjpjfW0wZQQCIaPxyL7cGpGFDi1GtR78Mjq9Jl+mzfDEy+Q
         k94a8GbgbGGfZ1iFyS1Frg+o78fpZ/3egkfuuPxuoiCnuFNd9KY2CjTRJELaD5oNRfaZ
         X3VEpuKiwrbEcXn3NdH4rKplniNrvuJ7zyjumFAeQu5BcvH8jIr4qypWUDbIDxBlBc2V
         zfxQ==
X-Gm-Message-State: AC+VfDzxCd2wo4o5eoHFWtuZQWVHsXb/WjRoICN6CVIRGg3OtH46iF6o
        Zjj6ZsOY+oMvKVHJsWJ0slPEyw==
X-Google-Smtp-Source: ACHHUZ5JrR5tK7SVHz0wY51w7D5j4qxwGQim+Bv3sQJV2ke2Jfo4xmib8u1tVuHBcaqfsphHttNTvQ==
X-Received: by 2002:a17:907:3182:b0:94f:432f:242f with SMTP id xe2-20020a170907318200b0094f432f242fmr2973889ejb.67.1683130222354;
        Wed, 03 May 2023 09:10:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:db42:e3d0:c55a:8cf1? ([2a02:810d:15c0:828:db42:e3d0:c55a:8cf1])
        by smtp.gmail.com with ESMTPSA id s12-20020a170906bc4c00b00947ed087a2csm17455836ejv.154.2023.05.03.09.10.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 09:10:21 -0700 (PDT)
Message-ID: <08a20847-bf6a-20bc-4e80-1b74030ed80d@linaro.org>
Date:   Wed, 3 May 2023 18:10:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add i.MX8MM-EVKB
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
References: <20230503-b4-v6-3-topic-boards-imx8mm-evk-v1-0-1e15a371d374@pengutronix.de>
 <20230503-b4-v6-3-topic-boards-imx8mm-evk-v1-1-1e15a371d374@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230503-b4-v6-3-topic-boards-imx8mm-evk-v1-1-1e15a371d374@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 17:20, Marco Felsch wrote:
> From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> 
> Add DT compatible for the imx8mm EVKB [1].
> 
> [1] https://www.nxp.com/design/development-boards/ \
> 	i-mx-evaluation-and-development-boards/ \
> 	evaluation-kit-for-the-i-mx-8m-mini-applications-processor:8MMINILPD4-EVK
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> [m.felsch@pengutronix.de: Adapt the commit message]
> [m.felsch@pengutronix.de: Adapt the yaml comment]

I don't see any differences. The comment is exactly the same as before.

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

