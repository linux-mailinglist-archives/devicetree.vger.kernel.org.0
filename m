Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51D2954ECF2
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 23:57:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377916AbiFPV5x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 17:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbiFPV5v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 17:57:51 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C66511170
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 14:57:50 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id u18so2328020plb.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 14:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JsDe682mLM0DGv3QiuEQVUMdiHHkA8Pn5Nk4aqckhEs=;
        b=FoZ6f/HJX2HDlnqQI+8NzeQb1jaucPHBrJnuukHbKQhUff5QUPhmN3lwNK21a7jQe2
         R9QrvL2siGpRtQblq9m4Kcc4nLIKXbPaptBOGUm46mnbkzwQp6qQv+Zmsbp3fzOkMCna
         I46XLufm0K/DwOyun/VjcAVKFb6iDuSjpB8xGiWFFUu+jpjMPb/oyYyICvMsYdSBCRGB
         7gpMEFmoxDHVFPoOglGdmMKXFxjxyWiLKbaLuNkMaYfc4osLY+yJXtBsuHU8tlZ6wiXS
         FOVQyimz1XT/WAjW/pFBR+i3TJryTDHuFFih6Rb9t6e2Pk5kjSUePVW7TQHqaIPCQjam
         o8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JsDe682mLM0DGv3QiuEQVUMdiHHkA8Pn5Nk4aqckhEs=;
        b=Dld6jsUzL+JB6bmqtTJ4o+lr3zehAdspB2KK0VxlG48fe9+SpoZRsi9dzAPoezzBZp
         jfSyWkifBKGyciVNJIm1nASKQzfqjmGyS7IfAKIxxleFv12mNvcSQeWaDSRkmdfcInu7
         FFsgtCI15NwtJDoT9A34BpG+ZN32Ehz3MeCNeWITwpGlSZfAxXyWydLImGcRYxmem6a0
         ZUaxuST3xoLSlbj6HcLLshYjR3KIs3MROBfNJwV/jcv26Gt1EnJz0PZIArsPrGBOfgMV
         kGiPFTEH0+e8Qh2/3IIbdyTpYejje9LcYsbD8wTtU7kDqgaJ7bAurg+firYAQi1N8iSM
         Jysw==
X-Gm-Message-State: AJIora/bY6XR5qpsKvzrk7yZ92806pmAka3Lkd1gpER5ehSzuSVpflAQ
        YuQlJAB45Cn/faZBLR+S96FWgw==
X-Google-Smtp-Source: AGRyM1sXoKD8jetcRKCIilCzxhXj4Qe6lIF0xsj+Yb7taxiY1DYuRKInC2s4LK7vxCsnjRVcsV10sQ==
X-Received: by 2002:a17:902:f608:b0:168:e92b:47e8 with SMTP id n8-20020a170902f60800b00168e92b47e8mr6586858plg.115.1655416669813;
        Thu, 16 Jun 2022 14:57:49 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id f16-20020a633810000000b003fd9b8b865dsm2288588pga.0.2022.06.16.14.57.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 14:57:49 -0700 (PDT)
Message-ID: <8c791374-0ad4-220c-3585-66ad12141735@linaro.org>
Date:   Thu, 16 Jun 2022 14:57:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: add TQMa8MPxL board
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Markus Niebel <Markus.Niebel@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
 <20220616142221.3986670-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220616142221.3986670-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2022 07:22, Alexander Stein wrote:
> From: Markus Niebel <Markus.Niebel@tq-group.com>
> 
> TQMa8MPxL is a SOM family using NXP i.MX8MP CPU family
> MBa8MPxL is an evaluation mainbord for this SOM
> 
> The SOM needs a mainboard, therefore we provide two compatibles here:
> 
> "tq,imx8mp-<SOM>" for the module and
> "tq,imx8mp-<SOM>-<SBC>"
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
