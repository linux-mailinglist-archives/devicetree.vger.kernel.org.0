Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F035852BBC5
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 16:15:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237051AbiERMnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 08:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237920AbiERMmt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 08:42:49 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2381ACF96
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:37:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id p4so1981503lfg.4
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=bjcBd0dxyOLx4l/iVB7YLxv3pDEKJIveecABs/FmMKM=;
        b=dEr8oxgz+QsG8iMxbxZ21rateVZFoCcOtAjB6P8Lk/o3e91YIV/tyvFUlciQrzvkQi
         ak2X7qWrrgXRkMIrBCfW/YQfkNL5NasaId+ZgBQ4EywCI5xIJroeyYGojdu5ECzD/vhf
         Rbkd50rh9mvFJaReOjdXaekKBLX8H/HG0SOuV039UcxdlOibl6WgtvsFJcWZLziEKAL5
         n72UBACaLSQQoSeSEKqCX9zdB5zjrUJU7ePMGxz1YNbJQIko+enDSr9JB5ciDW5OelDm
         2Gsj1tXn5+kpo778SO40n39xuRWHsWRk4lrybwenApCRXhlCJ1nJfVm0QijYhBgr2bJL
         59TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bjcBd0dxyOLx4l/iVB7YLxv3pDEKJIveecABs/FmMKM=;
        b=sF5/GHYhVHA00TPeT5OoKYxDNM2ew/UQswpA/ug5FfyOIaPu1H90jKqKk3qKE0XRqH
         lKy4s6axlQFKqRu8ep0mXASn876tC17x/PtqTuWWE8gZc5zQamYz3xLmJ3XzWeNbwMC9
         BkvRF713453OWzyNhU0W9/mq/pJQP7bZXwSTldcsBmhtYzsGGK2lTW0Ogs+J9iiOvUg3
         5x2V5IwHdekSzu35V8VpOjHDTZ1bIo/xXbq+ExUcKdSmNZxoPmcVLkz5+8TP2n297H2D
         ChdKgDjQfiwii9fTI8vuaFVVx12/Auk7z97ER7HYfRqIzmYom66jEgK55CJxm0k68uS8
         Ch8A==
X-Gm-Message-State: AOAM531g8eItYDiew6nVD1HWhwzAi+LbXMw8Kd2GOs4L/KEvByJE9dnT
        yYjwguBcUvS5D/yExp63v0FKsQ==
X-Google-Smtp-Source: ABdhPJwHMKd/jdGmVLU/ZeYiatYQeLrhAI3N0HVLhUBn7kOKFKlKZpFS1pwdOKyqn6Tt/LpUcqFjuQ==
X-Received: by 2002:ac2:46f5:0:b0:477:bc14:f03a with SMTP id q21-20020ac246f5000000b00477bc14f03amr1376980lfo.608.1652877428730;
        Wed, 18 May 2022 05:37:08 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a13-20020ac25e6d000000b0047255d21123sm201360lfr.82.2022.05.18.05.37.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 05:37:08 -0700 (PDT)
Message-ID: <4c9b7f31-4473-fca9-0e72-2f32e0983479@linaro.org>
Date:   Wed, 18 May 2022 14:37:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/2] dt-bindings: microchip-otpc: document Microchip
 OTPC
Content-Language: en-US
To:     Claudiu Beznea <claudiu.beznea@microchip.com>,
        srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220518115129.908787-1-claudiu.beznea@microchip.com>
 <20220518115129.908787-2-claudiu.beznea@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220518115129.908787-2-claudiu.beznea@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2022 13:51, Claudiu Beznea wrote:
> Document Microchip OTP controller.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
