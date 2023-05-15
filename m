Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6C7E702C3B
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 14:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240690AbjEOMF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 08:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241875AbjEOMFD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 08:05:03 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F056B1FE5
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 05:04:08 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-94a342f7c4cso2311275166b.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 05:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684152247; x=1686744247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2/nlan8NsKQaqVLCr51QfC/hNbeFSNTXRRDAB3FVPas=;
        b=ByoRjCzbZlDhT1T9pjQEYxr54YRw44V8aNUv9jfd5JCNP8tHSMuToNR/AON5XhQOmw
         N40Kl/3OLlocsZ4d9J6Kn7vUs9/ZVehfyNn5RyuY8fBOdTbsM6OSE/tm9Oh9hYZtBT1A
         rbxBFvkvqcGnMKja3ynsVt20EiEKi2YE3+SrV5OGR6t4lHveWTtmgAksr7JO7ceasrTJ
         7F0woxS2bnN2EVU8rslQE62j9dDrwpLpurk01imY+qvNvqiVHXgGrSyPClPx0u1yOMoF
         NfSX/hzAgDXlfsmrgFfUiFNX7jDD7okvDYvv7hfnpJlVhIhrQmhb8hVm3+ifeZLht279
         fJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684152247; x=1686744247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2/nlan8NsKQaqVLCr51QfC/hNbeFSNTXRRDAB3FVPas=;
        b=K88+9pKmOAFuuhlleuJHMfFV/QojJHULJ8JV1ZyRxrQ26keFvtlrjRqXlkIMbgFtfN
         KQTHmYJKKQeuOHQkwZ40HQ5d1BvidsAHAvPmTF9Ld4n4GyHZhbJxH2o9dt9M+TyOhOMH
         nLUUUhmmz0KpM59NS9jwOPQeKFcLe5lbxlH+5MORjnu3bbSwjqzcgq1rBm4wwcSWNSQZ
         YpvWe4KcFCOb+9c8UDcYHYJkBEhLdZ2k0D7SLQ0kATCNwwA+g+KqSf3/xbCBrfz+xU1I
         OYafNSnMA9ikb98C7P2tERAjNFGF6Jnrtb37Kzt4ujmIklcNwynR7HyqDJote62i4nX7
         XthQ==
X-Gm-Message-State: AC+VfDxURwtLIz/qLx9KSSSxO1i0ygSTOMQpXjNchC7NfivwPNsTsRaN
        4Fjfl09Pnl4BhNtRc7f6DW7D4Q==
X-Google-Smtp-Source: ACHHUZ4whC+e3qGJCrdvneIaAmKdoHpgCsOxbqCTyf91AW/nF0/VvKIN+NibbQBny50EjV05s6mA/g==
X-Received: by 2002:a17:906:974b:b0:957:943e:7416 with SMTP id o11-20020a170906974b00b00957943e7416mr34190677ejy.15.1684152247320;
        Mon, 15 May 2023 05:04:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id k10-20020a1709067aca00b0096a1ba4e0d1sm7811245ejo.32.2023.05.15.05.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 05:04:02 -0700 (PDT)
Message-ID: <e8d7e008-db27-9ac5-6728-d3f7a19c10c9@linaro.org>
Date:   Mon, 15 May 2023 14:03:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: Add ESS ES9218P codec
Content-Language: en-US
To:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     perex@perex.cz, tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230515074021.31257-1-aidanmacdonald.0x0@gmail.com>
 <20230515074021.31257-3-aidanmacdonald.0x0@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230515074021.31257-3-aidanmacdonald.0x0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 09:40, Aidan MacDonald wrote:
> Device tree bindings for the ESS ES9218P codec, which uses an
> I2C control interface.
> 
> Signed-off-by: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>
> ---
> 
> Notes:
>     v1->v2


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

