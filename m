Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65EE95E8A97
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:15:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233478AbiIXJPT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:15:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233207AbiIXJPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:15:13 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51C2BB14C7
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:15:11 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id p5so2381270ljc.13
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VRJ0A4EZs8uFdPv/hRiUuHIPL+Nkl2CX0MiU+WNKRJw=;
        b=BqOArJxgMWNNkE8TR3wItfvXLiodm6CGj4Q2EqhGPb+6/mvNOp61eqHuE2BhCcTCSR
         NtCffYxed5BkQusmQ8/A/Hz0mBt8fkZMTUKC0JaLx9jYVp3Ox3Z9/USneD8QC7Avt84t
         S6Nrtyq2BwqQkw7gyoFTme/zAWAzYSRx3i22STnCo7B7IEik6kwGcMIG1GK31XHADiw2
         jSKLLPdLbttKtw6LidJNKm+G0gTQ8uZsWCKLg1GLlKauS1OT1EvpXDQUSU7hauo2dun+
         sasWR07Ypn1B2dOrWp699qX4gUPq4lshvNKFagv/COVA5YarrHauRC0VFtWjyvZOWTDg
         Y92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VRJ0A4EZs8uFdPv/hRiUuHIPL+Nkl2CX0MiU+WNKRJw=;
        b=JgJU7kMMroSFYViXYhJXvLy+oWi+1UO5y9ONaRQ1AWRfzmU+XVpmapFylQ0XBRLRg8
         qxJV9/t8JACYw9Gz+0GSA1ZFnpTS084pIgjKCBmQ6fnKGLFTFOabNOG+DDVsmqj0k+rk
         aUzts28egBBmc8J24WMaGFdAAF2cEq/gq7a1J2SkF0t+ghoOEOfxXFhxGbGQZe4tCQlp
         v0WHjEnD1oYSVbUmBiFdMdlK1ZuOBnMVytzhT2qA9AHBSpN8SYCTrpyLdmifCOY0BPRy
         o3yCSHQ4kbpuvybfKNqX7qno0TO0Pfvcu680bt5EPVSSVGAo7sTDIlQ6Hfmi1/6pyIJb
         0wPA==
X-Gm-Message-State: ACrzQf0Z1dyGSN+2M2gEFgIg885L2cTj0paG2+vF3zEcC/yuNFntGlD4
        MndERVEUX/y5pLRaKauDb3vPBw==
X-Google-Smtp-Source: AMsMyM7Amd17M88m0YCniisZJGwSkAjdVOch9mxgJuS1Mobv/8LFlAnErO1Atbz2cVBheM3xlgIM+Q==
X-Received: by 2002:a2e:7310:0:b0:26c:657e:57d4 with SMTP id o16-20020a2e7310000000b0026c657e57d4mr4078211ljc.422.1664010909350;
        Sat, 24 Sep 2022 02:15:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d3-20020ac24c83000000b0049aa20af00fsm1835234lfl.21.2022.09.24.02.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:15:08 -0700 (PDT)
Message-ID: <6e814bf8-7033-2f5d-9124-feaa6593a129@linaro.org>
Date:   Sat, 24 Sep 2022 11:15:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH net-next v3 1/6] dt-bindings: net: tsnep: Allow
 dma-coherent
Content-Language: en-US
To:     Gerhard Engleder <gerhard@engleder-embedded.com>,
        netdev@vger.kernel.org
Cc:     davem@davemloft.net, kuba@kernel.org, edumazet@google.com,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20220923202911.119729-1-gerhard@engleder-embedded.com>
 <20220923202911.119729-2-gerhard@engleder-embedded.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923202911.119729-2-gerhard@engleder-embedded.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 22:29, Gerhard Engleder wrote:
> Fix the following dtbs_check error if dma-coherent is used:
> 
> ...: 'dma-coherent' does not match any of the regexes: 'pinctrl-[0-9]+'
> From schema: .../Documentation/devicetree/bindings/net/engleder,tsnep.yaml

Skip last line - it's obvious. What instead you miss here - the
DTS/target which has this warning. I assume that some existing DTS uses
this property?

> 
> Signed-off-by: Gerhard Engleder <gerhard@engleder-embedded.com>
Best regards,
Krzysztof

