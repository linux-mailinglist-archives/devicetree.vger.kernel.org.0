Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E730450D25C
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 16:43:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239415AbiDXOqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 10:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238979AbiDXOqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 10:46:21 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C5E6EC44
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:43:20 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id g6so2222992ejw.1
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CUwHn5LcN/jPUon6t5Vp4fHS3jup7Ak+niSGtw8dmg4=;
        b=dcSGtrlFaEvsDm0BQsAQx/ik8aLhT8jHvXKu+9yuu1m46PPNK89megPvnUCpmrPdAY
         uv2rMjFy8R3VvjvTU8OR5ROxk0Cmc3HLQCETQHyRFAgr1jdAfUXybB/Qa0bZJjrycUnt
         1tBeAIrYjqJnQwY3C3PGv8L2mfkYhpGjOmzRFt076jGIQ0RVcApT5sPEb8Qs5PmRC9gX
         PikG0NEa+r89bL3Tf+tYnG85Ui+vpytwaduIqXXbspIBab7vf/l5Mqtdg4xwsh63j3aU
         4tkjjMCNzQOT2FDMzut/HKqkiYwd+K0cH09mjZ5P8joJVR1fpDTCjJFrAUclTNS/njmY
         Zb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CUwHn5LcN/jPUon6t5Vp4fHS3jup7Ak+niSGtw8dmg4=;
        b=fBmVj1Qsjj8jptxNB68ava4cz45EKsbFg4gNLtUedvAMO29E9PARSezR0CoDq5nCRJ
         zb9K4pCe6nptSaHgATIC/XGQTqCKmJyRGhpj+KhDYSgxYqGMuKOiEiOs10+W8B3/zEoh
         PRpo6ULox4IVni9RBj6VFN7lVb6SOEOnzS2imE24FHIoGmJ+/IqrEXjB3y68Py4rrM4e
         zLvSVYx+CqlWyOMQmCLQoQXxlAH4YIq7DPH/8kOGHyqVnAJEKIXPGK4xTLEI0Q6MVfcu
         EbuYkm7dgEVifNKwuu6sDCEbP5cLQYcNImvYbC0oVJ2HYpiQ/DQlxOHxVl4RJbJZZqWL
         FB2w==
X-Gm-Message-State: AOAM531Q7mdRVpNGGFXTGZ5CWRiretlAMJ+SZwqFXBWSQbW4pcpNHYXQ
        WLFZ1RY5PXPGzLcP+x6+j8AZirjUwCMI4w==
X-Google-Smtp-Source: ABdhPJxxXjktzPATxGp4cvCDqA3bguvqYj5lfoO1JAHAJSjSFOjey+2nzg73oNdoM5cZTYrjToX/Qg==
X-Received: by 2002:a17:907:7fac:b0:6ef:e068:f5aa with SMTP id qk44-20020a1709077fac00b006efe068f5aamr5783755ejc.238.1650811399613;
        Sun, 24 Apr 2022 07:43:19 -0700 (PDT)
Received: from [192.168.0.235] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id lo15-20020a170906fa0f00b006e8a81cb623sm2667962ejb.224.2022.04.24.07.43.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 07:43:19 -0700 (PDT)
Message-ID: <5bc96cbd-cc5a-9ddb-4756-9f94324f00a7@linaro.org>
Date:   Sun, 24 Apr 2022 16:43:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/3] dt-bindings: mailbox: qcom-ipcc: add missing
 properties into example
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220424131522.14185-1-david@ixit.cz>
 <20220424131522.14185-2-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220424131522.14185-2-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2022 15:15, David Heidelberg wrote:
> These missing required properties are needed for
> smp2p binding reference checks.
> 
> Misc: adjusted examples properties formatting from dtsi.

I don't get the "misc:" comment. What is it about?

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
