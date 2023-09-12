Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8B2879D3DF
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 16:38:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230502AbjILOii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 10:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236030AbjILOih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 10:38:37 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1881010D
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:38:33 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9a6190af24aso714353166b.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694529511; x=1695134311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xPClHxIpUCf5nYYKWhxYGcTCf6NB8tvz8LxGrJZ/EA4=;
        b=AB36EBd15u/2mcJq5AFNFw18mnbNZjcf7QLgijwRjndFXx7y0s/0vNfgT0rhaJyEkj
         388wHt0M/hGSEyumL6/EBSntxeFlaXrBOyRVU1kja3sHNjsfvT32uNBNSGvaTZFBECix
         R4TWowDtAJd0Ncct4MKiMlvB/KlVMw+KfcIys5thyVe9krZtNE73bNbo4k3k3O7zKioN
         7+JdmbFnQGFC0Gj0E+Nura28Tkg+RAlOQm4nPEaKpZsGYmZyHGWsC9POHPdd0G18k5H6
         KpXdW/xkXJDun9qSz/+m8Xi+6X7iRUipf5e97MLmdQB0FVJoo0NgyZ2iE2yyijnSZZIM
         yfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694529511; x=1695134311;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xPClHxIpUCf5nYYKWhxYGcTCf6NB8tvz8LxGrJZ/EA4=;
        b=QJaZUO7zrjSkIJ4eBASQsNkW7Q9lNyHh0pFBA0KjWk0TlPRs5OSe3lNCocwNz38ZYi
         7bhUiJ8NylngHpkUnNOjTK1RMjjsEKl6z7jRaYOMMCrx6sSdNrwAgnrVI5CvnQ4tGURH
         uAnsX9IbQqQsRG6ha659mn8+WMPOM7CQJ50qY8U3XwU9MG+xZWL1MPP8UYHcJrThehCr
         vJVzHFxkjlwvbzZ8QOXqT8AsVVufkidZpzipOXWBP06bU0xPvBPedF4x2yub9ez6uURa
         SkUA6NKxcYpM1D5iPH1Nrtg8s6kbo9F5bjESGuocZ19I0Dt9MXo5s5S3q0QaUyEPkB3T
         74vg==
X-Gm-Message-State: AOJu0Yz6RACeb+xyMMsPwezwT7GZUx7bQkmr7Vu2MEXGo+7THAVbTcuH
        yO3Rl9yF44iiaI79WL47KccyXpSAdB/4ha5KflY=
X-Google-Smtp-Source: AGHT+IFmUj780LbX2T6zHpN8hv3UphKJHTdpIZGfJ+/DErxhCy6hzxbdSiwEsEIOLOOYc0C9202pqA==
X-Received: by 2002:a17:907:788e:b0:9a5:bce9:ffb7 with SMTP id ku14-20020a170907788e00b009a5bce9ffb7mr11943852ejc.19.1694529511560;
        Tue, 12 Sep 2023 07:38:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id pv26-20020a170907209a00b00992d122af63sm6910095ejb.89.2023.09.12.07.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 07:38:31 -0700 (PDT)
Message-ID: <28ec58a3-63d5-f604-cef9-571b062fe244@linaro.org>
Date:   Tue, 12 Sep 2023 16:38:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 07/10] dt-bindings: rng: add st,rng-lock-conf
Content-Language: en-US
To:     Gatien Chevallier <gatien.chevallier@foss.st.com>,
        Olivia Mackall <olivia@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     Lionel Debieve <lionel.debieve@foss.st.com>,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230911120203.774632-1-gatien.chevallier@foss.st.com>
 <20230911120203.774632-8-gatien.chevallier@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230911120203.774632-8-gatien.chevallier@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2023 14:02, Gatien Chevallier wrote:
> If st,rng-lock-conf is set, the RNG configuration in RNG_CR, RNG_HTCR
> and RNG_NSCR will be locked. It is supported starting from the RNG
> version present in the STM32MP13
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>

How did you implement the comment? There is no changelog, so was it ignored?

Best regards,
Krzysztof

