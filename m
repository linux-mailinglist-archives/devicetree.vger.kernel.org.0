Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 868DE745F58
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 17:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbjGCPBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 11:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231584AbjGCPBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 11:01:45 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14447E70
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 08:01:37 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-992acf67388so425086566b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 08:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688396495; x=1690988495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wIdAV5V5KAnS+h+qxHS03r1FUQFpj/gJ3vvk0BEn92E=;
        b=ifmaivl4Z+J5L8F8MKx5XFkvPydvR4OFSmVCDYgNVzdBET5oxRjmyWnN2kndVisi4P
         lh0KEoEm0nCh+Ao5XN1cGX5wQaxlfgIqV77vEmp7203tbGymfBI0Rq7akosGTOmg8Wf8
         PmWQMd5NuMCt2/cyDk13+/PjRrrJWrMrXJShpcAI37eAsBCWmcKYJtNcJ5raUkOwtyAk
         Q35E7HeaXRJj7Jt9HW1ZVoD9ofYkcEmiBQGtfN6227PPbG9tO5Y4MLtEEOnLm1/6EuS2
         vZw7pZBeqXTIklfShbq6TVnnpRut4lKaShTbszCmBOV//5NapwMjQGtaJuGV2iVjzIQg
         bLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688396495; x=1690988495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wIdAV5V5KAnS+h+qxHS03r1FUQFpj/gJ3vvk0BEn92E=;
        b=aJbXG7gXWyE210t83dyKHoidJdhHM+65U9660DHXLBvK+UQdjBh8nnGISdMVHWQmLX
         w/u/cJzuY+nzN1hciUy8EEqFBAwZvtfd7CNG58dRqs7PP6LwC28H2jNnLCnVJuUOE55R
         q76s8XI5HJ5VZT+YlG3zPfwSGAbwKlx0Gq/XTAnybvAB6KayU2xYTSRDiqOeDi0AvtJF
         wjvu+ueT1tbJG55gUfrRJHElhOPU1H9Fb7FSR96yS/kC6/y3Q8EBJYtxhgWVAlG4RV7N
         YkL4OzuDNLz33LYlP4zAI/872VPgnkRZTvZ0xeKZna2wv//9WYNKEoLgb1+qj1rJwqBb
         uGOg==
X-Gm-Message-State: AC+VfDyCPzEfm16tOkzLfykOLFkoi/x4w+tjTvTFi3Y/hx2U+PTMCLYY
        FawuSqrmLIfglCKOdjb4166kjA==
X-Google-Smtp-Source: APBJJlF4nZmviyLst8bq9ovVEqJK/HZkrp9/ry8hWn6K/xwqIxJjlmWLVSf2GEYdGeflLlSv7IOP3g==
X-Received: by 2002:a17:906:8699:b0:973:d06d:545f with SMTP id g25-20020a170906869900b00973d06d545fmr5693067ejx.24.1688396495465;
        Mon, 03 Jul 2023 08:01:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id h22-20020a170906829600b009931a3adf64sm3751695ejx.17.2023.07.03.08.01.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 08:01:35 -0700 (PDT)
Message-ID: <56c0783b-59b4-0eda-5a9a-ceed53ebf41d@linaro.org>
Date:   Mon, 3 Jul 2023 17:01:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] i3c: Add support for bus enumeration & notification
Content-Language: en-US
To:     Matt Johnston <matt@codeconstruct.com.au>,
        linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Eric Dumazet <edumazet@google.com>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230703053048.275709-1-matt@codeconstruct.com.au>
 <20230703053048.275709-3-matt@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230703053048.275709-3-matt@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2023 07:30, Matt Johnston wrote:
> From: Jeremy Kerr <jk@codeconstruct.com.au>
> 
> This allows other drivers to be notified when new i3c busses are
> attached, referring to a whole i3c bus as opposed to individual
> devices.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

Your SoB is missing.

Best regards,
Krzysztof

