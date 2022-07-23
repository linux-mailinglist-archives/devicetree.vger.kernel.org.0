Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CDC557F18F
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:57:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238791AbiGWU5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:57:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236829AbiGWU5b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:57:31 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B82718355
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:57:29 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id p21so1387219ljh.12
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GXqHBBrsmPel+pa53zazqpINe57WFI4H4RqOdxGeCY0=;
        b=Ilg+UwCPMZCeIpP30G9ycB79XDhMvyeAV5kSfo2NWyH43hWYoNcGab0RjrCzyGF1Xg
         7CrEIjmJO/BOb4qdpQ4FWCgXM+6lfWOPhqimLdhKImznCbHFbWSfVcVO7WF1vDIg0WtL
         XlsfZsKH5EAaxquODjIZHc6cGx9aWTwhLhe+QTkxmoCQ4eItR7iXLMqrKUA4uBkBiH/c
         wqi1aM0AaB1v1UCLFnjHADTyezQYD159+HHdsVJ0l2AXxsU/NtIGn0GLIso9o6FXf23a
         mHEQJiWMCpNtrPGsMxLhwOlTELBJOjq8Xv15zV/ZqnDZl/F+ImCQ4uxM8mQd2tUzrdbn
         Qvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GXqHBBrsmPel+pa53zazqpINe57WFI4H4RqOdxGeCY0=;
        b=NyeNG/NJLm0dk32esk7flgT4MnahszJjYd15n9THKXbQUjphyZQ/mcdPQwgOe1NKLM
         DoVWhiEysvW55LUgd2eFniGnCHy6uaHfRmstXdZFoSSa2fO5XaKF86P48kVWL8IFU2Aj
         geSvfPiJeXcL86IV1WkMMNvDFXfH/BITMDqfGT3v9KidugbVJVRv6x4aELJw2zs1Nw/H
         iFVh4wjDkaSAeaX2z+3Ywg5Q7zA5LBWAvhoHfO4bTAlm59wc8qdWoxTnceWe3xeuISwQ
         YGPtsQ/RotI6QBfMXj0B2nnCVkbZuyuu2sTGBw+vteZeATjtdlrW9Z87D0F9nk9ljv/w
         /S6Q==
X-Gm-Message-State: AJIora8hoFLQf38zzzePd5C7G8ITT9HoGAbHnaVQFZOq+1xdeMqbytK9
        fbW5iOdAHitSGdngpJwSMkrEfA==
X-Google-Smtp-Source: AGRyM1uNoNmxWnBuVTmEiohN1eoOBdO6IQfMVIgNygXDqC//h7C2nfwugZvpCZ4nZzt0ecycY/bn8w==
X-Received: by 2002:a2e:9cd8:0:b0:25e:ec:237c with SMTP id g24-20020a2e9cd8000000b0025e00ec237cmr717ljj.277.1658609847745;
        Sat, 23 Jul 2022 13:57:27 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id k19-20020a192d13000000b00478772eb18esm1831476lfj.92.2022.07.23.13.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:57:27 -0700 (PDT)
Message-ID: <4e086144-a367-a22d-3cf8-8d1018d433d4@linaro.org>
Date:   Sat, 23 Jul 2022 22:57:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 01/22] dt-bindings: power: rockchip: Document RV1126
 power-controller
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-2-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-2-jagan@edgeble.ai>
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for RV1126 power-controller.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
