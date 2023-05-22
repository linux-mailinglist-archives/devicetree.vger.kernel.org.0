Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D039A70BFF5
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:45:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231409AbjEVNpB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:45:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233104AbjEVNpA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:45:00 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A2ACD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:44:59 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-309382efe13so3774840f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684763098; x=1687355098;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Wrxc82AX1iOJYtOkrdSiHbyYQwIiUqCRSy56LKL+7RQ=;
        b=PeRP7D2tNTmANHFr+RJZi+8482L4g+VoNZb8isZOSSRiNHWIpd4EIAZByraLFeP9Bs
         oVvdhQGl5pTvMj3s6iWdS29mUC9xigEI2suSLuYRko2fja7H0c9Y4Mif9vSH82MZ/JQX
         aMDPNIegPITPbK5WaOkDoP0Sv0Pb/HXtT7QGMSOddM2auxgFk+1T41ULnvXFNBz/+pLh
         MSzTLJbvLWlS6xn2NKnwTVUI+MK11TLZKryDxQr8slQtiBier9fqQTPQlWKDyIqXnwK9
         NAe+NUyTCOfSDzc+zOFjV1Y41aHO3wBVgJI7aM7gRmHuDqISYe6mabJL1dFHjuiyRfSZ
         M9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684763098; x=1687355098;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wrxc82AX1iOJYtOkrdSiHbyYQwIiUqCRSy56LKL+7RQ=;
        b=BhwGwhTL0AWLDo5cNVhfyU8xlCImPD16BSQsJor/zqNyEQYLRVFosGHDsyEVaU/4Me
         TSxngAAOJOi3E8OSl8HUaBik54FlJoXanG46V0/bXkqy751XqhFj0gVtFzlJdADQObic
         jsHBqnqA6jA/Hnc1Kb2O4IwNyqJieKB0u3/8rjtoh3CeDyDpmPY51bFMRDUcOyWaTbug
         NhbEGsFpOTLd5CVFDoE79Jx1F/fNCyhEtd/ukFzc18e3p3vJBgzV9ttz8wNjAESjE0dk
         M1vTiZZm47JwhoSJ0tavsY77iDLMcok/JYYU8TrmDuAOMvmegdD2gc/jTIYLZ2uVM8yV
         wv0w==
X-Gm-Message-State: AC+VfDydNnvC0P718fYHk94F8FomBoedxR+OBgnE883K7HEVrgHfAjwl
        go20gOA1QgwZ9ai+2TQAb9drSA==
X-Google-Smtp-Source: ACHHUZ66W79JRymYpqr+33Apra3p6DHzxWUXT7NFKG4LKxRr1ITkSaUc3PVwIig3EefGmxnv9imgRA==
X-Received: by 2002:adf:fc08:0:b0:309:3c0c:b2c1 with SMTP id i8-20020adffc08000000b003093c0cb2c1mr7102196wrr.23.1684763098165;
        Mon, 22 May 2023 06:44:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a478:d61d:5bb5:7df? ([2a01:e0a:982:cbb0:a478:d61d:5bb5:7df])
        by smtp.gmail.com with ESMTPSA id c6-20020a5d4f06000000b002e5f6f8fc4fsm7829465wru.100.2023.05.22.06.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 06:44:57 -0700 (PDT)
Message-ID: <88e30362-d21d-62db-cbc0-85c7f9a286db@linaro.org>
Date:   Mon, 22 May 2023 15:44:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 1/2] dt-bindings: samsung,mipi-dsim: Add
 'lane-polarities'
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>
Cc:     marex@denx.de, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230514114625.98372-1-festevam@gmail.com>
 <a6e549e3-a898-c7b2-1c72-4c6fa2866388@linaro.org>
 <CAOMZO5BTAPPs+KsW7+GnBTJf1dLMKuAzZa-HRXtQ+ZTWz+EOxw@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CAOMZO5BTAPPs+KsW7+GnBTJf1dLMKuAzZa-HRXtQ+ZTWz+EOxw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2023 14:53, Fabio Estevam wrote:
> Hi Neil,
> 
> On Sun, May 14, 2023 at 9:29 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 14/05/2023 13:46, Fabio Estevam wrote:
>>> From: Fabio Estevam <festevam@denx.de>
>>>
>>> The Samsung DSIM IP block allows the inversion of the clock and
>>> data lanes.
>>>
>>> Add an optional property called 'lane-polarities' that describes the
>>> polarities of the MIPI DSI clock and data lanes.
>>
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Could you please apply this series?

Done !

Thanks,
Neil

> 
> Thanks

