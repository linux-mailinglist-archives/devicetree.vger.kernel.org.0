Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1A426BE59E
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:29:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231344AbjCQJ3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:29:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbjCQJ3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:29:52 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 488F5C97EF
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:29:50 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x3so17812213edb.10
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679045389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8WA3SNJoQAtnrNzgJdUQgmMav4A3unxqF1j7PbYQODA=;
        b=oDBSojM2zt2txr2VEPiQaQi+pdZwb2BSekh9/RDMohAtr/utw0WWPNQ2twDQe02K7W
         110PY6L4I1/enZUx5hSmHux1SCjdfKTUdUeSQ9UeuYVK7xGSFoFSBcRIfFqCOnBMhx/m
         FUbSbFV1gT1HCHti6Me6CrJ1PdgBkbINOlSMyWRJGSkFjnp3mNElRWUMMF+s83+guvuq
         Olz6kf204mvMKF2oZxJoU1qrvAOYhdyeWRgFY7kEg4dOH/Xp51mPh6jCMRGubpq91a01
         6ZAY1KEiggoognrTR80TcYO5BgmepqZPKaYXGsg6wXGZESpN0xlgbw152Ydm6mF3swTJ
         CphQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679045389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8WA3SNJoQAtnrNzgJdUQgmMav4A3unxqF1j7PbYQODA=;
        b=B2FzMGsjWM/f1I9Xy6p70UGtis8bDwc75G70sc7taxtkMIfzReALTqxgEtsjcX434s
         yecTPF5k4IVkCkSFj8V1IVRKomHKE740HxFIWG0rhZzSo4upWZ3vFhnBJo/0hul8jIzW
         TjPFXgexVJLR3gNx4GiUhI5JCPex9v3wfpNixHZJO9hSpjROJxnyRemtCXu5DXXwmZAz
         1RkSBF85BodJIYhgbaQU8DyATTr8UeP3k9SFR1LcWpceGwwroqXlZh5LMbjQbn3jBXd3
         RjWUYKaRTX0qbLV/7iECFJ4V7W1v7Dk91fBlKZvOf5oz+Ur36COJ56rvUgr8XnHSl1UC
         mgyQ==
X-Gm-Message-State: AO0yUKXB+Qt+2kVAwBCoV3gTIZyAEeiP4Ude5iBFMK6LGbIGrNLjtLfB
        BMpOmx5lWuHQIPjw3G7nOtU51g==
X-Google-Smtp-Source: AK7set+hje6bV5JK7QUQEKNE0acONYz80oFtnZpPZQFDWUff4TG/UrQizMYf146CbK8/KItDWExA4Q==
X-Received: by 2002:aa7:c946:0:b0:500:49fe:81a with SMTP id h6-20020aa7c946000000b0050049fe081amr184855edt.26.1679045388832;
        Fri, 17 Mar 2023 02:29:48 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id v14-20020a50d58e000000b004fd29e87535sm809808edi.14.2023.03.17.02.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:29:48 -0700 (PDT)
Message-ID: <f28a5742-cd0e-3a46-fa46-a3bbdd0ad78d@linaro.org>
Date:   Fri, 17 Mar 2023 10:29:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH net-next 2/2] dt-bindings: net: ti: k3-am654-cpsw-nuss:
 Add J784S4 CPSW9G support
Content-Language: en-US
To:     Siddharth Vadapalli <s-vadapalli@ti.com>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nsekhar@ti.com, rogerq@kernel.org
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        srk@ti.com
References: <20230315075948.1683120-1-s-vadapalli@ti.com>
 <20230315075948.1683120-3-s-vadapalli@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315075948.1683120-3-s-vadapalli@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 08:59, Siddharth Vadapalli wrote:
> Update bindings for TI K3 J784S4 SoC which contains 9 ports (8 external
> ports) CPSW9G module and add compatible for it.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml      | 6 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

