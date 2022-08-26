Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F4BA5A2DAB
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 19:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344827AbiHZRjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 13:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344891AbiHZRix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 13:38:53 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11BDE1AA3
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:38:50 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id q16so2242451ljp.8
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=e2IfiBb0W8qqFbCW2qSjgP3+vMQrquSqpbONfR0RqQA=;
        b=kv7O+CHk3Xotu+SMyz7bFHT+oaIsYprV/N2I5Kob2cbI92pGqeTTyhpT8+gMSg1BjO
         6hDabb2ZamzgLvPpW9m9fVAF9EdXRLoBTczVWoesjQtGFFfnV/rArQJNAb1JzrablBVa
         y3XpkoFODbBDragyspimZ4L3vfM8SPsBD8UJ1+zE4pzmhNABgRRmLPW/Rsd2kN2lQhvl
         vnpNrsSH4yIO3ikR4daNNTess1LN/TTI2qxhGa0h0ML46SZrdRY1R4KlrlSOC/fPWKvO
         lgNtrjckynPIAEdYjjRmB+PVn15QxNF7a3Zyw7Li+IB51j8078dZ3EJH5NjvpgsWTtWU
         RTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=e2IfiBb0W8qqFbCW2qSjgP3+vMQrquSqpbONfR0RqQA=;
        b=Mbob5I3VNiwe/CA1a7aEq4CN6IQLK+gADdB1irvLOqYbnD8SCpQXZroPrXxeltORqr
         +ccVTZsS2hC01eUH3qbDjuWfmfGqgCbmlKPn5FEA30peCLibkgqkJ/QW610QClJkfgsH
         ccM2ek68HShJxxyfv7ZjVeDWNhtEEIeJXsmy+WFo0epyIpXGtylj8RUiRrOqqhgKKKg9
         otOm7WNs6rPPTeXy89136s3WZm1fqqxbnZSmM0Y8icrHe8ZGFNfKj/vq//7tBsD+ppKT
         qDIT+4VegFfQfm4hKZgE2L67P693V6UlC8pcqK8el506It/3LeACwSe2sUvru5sa+fVF
         P6qw==
X-Gm-Message-State: ACgBeo2AzwgAKdqQOUliYIBvBWduTwb7vsa7ohvWm1rLh7/P0q+w5VID
        RlB7nCpAc08MkZ7YJTCk6Gk6AQ==
X-Google-Smtp-Source: AA6agR6kKJcOX2vRNumOkiAthPve37jQ6XfAbkTySIH4NYnC7nkBamSfP5cdxg1q0EHBUCXVoMQ6VA==
X-Received: by 2002:a2e:3504:0:b0:261:e52c:80b8 with SMTP id z4-20020a2e3504000000b00261e52c80b8mr2501617ljz.144.1661535529301;
        Fri, 26 Aug 2022 10:38:49 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id s30-20020a19771e000000b00477c0365b20sm429768lfc.188.2022.08.26.10.38.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 10:38:47 -0700 (PDT)
Message-ID: <32009f7c-ce00-d2a7-0794-166da6293bde@linaro.org>
Date:   Fri, 26 Aug 2022 20:38:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 1/2] dt-bindings: serial: pl011: Add a reg-io-width
 parameter
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-serial@vger.kernel.org
Cc:     git@amd.com, devicetree@vger.kernel.org, jirislaby@kernel.org,
        linux@armlinux.org.uk, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, gregkh@linuxfoundation.org
References: <20220826120559.2122-1-shubhrajyoti.datta@amd.com>
 <20220826120559.2122-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826120559.2122-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 15:05, Shubhrajyoti Datta wrote:
> Some of the implementations support only 32-bit accesses.
> Add a parameter reg-io-width for such platforms.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
