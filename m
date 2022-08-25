Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6E325A0B31
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 10:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233215AbiHYIVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 04:21:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239563AbiHYIVE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 04:21:04 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5CE73332
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 01:21:03 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z6so27216840lfu.9
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 01:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=wXqYQNt6cQwwovEWaPctQuIwu12r6o/ryFEQHXvmidw=;
        b=RQXOc2sOHOJavrUi2DGvmpi8DUDu+vUEzSkpJ26fRoN6ZKmym27UYpXBTK8ZA1u7wq
         tnnjAynV39vfbvdTeFCS1BO7qjXPbjsd1q+EC55JkzzUY2D4eSPmYIBn9RpdYa4QJYaD
         z3cVF/OO8WP0NAChZ94KMTjPaQhrN+6ZXx4odIe82FSdaJF+bGk7rRSMLFpp9hwEbMP0
         laK3LgbY8vzgK6bKA6E9gqG3DDec6qaZJ1ROHDCdGcb1ysNWt/+9k3jqb9Ljjw67dtfS
         lLiv2mPqZKG5RlfPOU6JkCGfyKd7J39nVXrjQCrpu7u452QA9/U/bZnrDY4pSO7W3Nu3
         4YSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=wXqYQNt6cQwwovEWaPctQuIwu12r6o/ryFEQHXvmidw=;
        b=2yZOp1i1dV+p5FWKbiVIUaa0D+IB0U0zN8tQDVvhKZD46S7Azy1aTnlPgj/w7MviZo
         vUgV8NgKmU6e2RmsuwpbkmDjCF/Oeqr5hIiv9NuN3LN2UAHYo7sr2g7T+SyIoi31TxfM
         mSEHeJ/zgLvJJb1qRyIvKrjQm0UKvXGIrEPKcaLAGa49z43Jd2g8+Yrd9u0mA5qX+tDa
         GuMJfpvWWxnvBrRchm03cAjqkMoyzJTh4suPwtiL6tmteL02pGaSpDauCdpuulJS9nUk
         YizFlNm1CjeWOzdRjGcNeziPyF15IHOB2jVFKLMds3gSwiQ+5aDsP+YADkWMrjhGMxAp
         n9EQ==
X-Gm-Message-State: ACgBeo0qn+/l31vuk22BlkA1tcr9NL+H/jZGLj0hjdM3I1TMVgijh51t
        nj6AKy8vMeuXMfyOYpkM1GURRQ==
X-Google-Smtp-Source: AA6agR6bA3D0kudkV+rJ8q5luTUFTVPCxjbWRw/0Kby3FAirVfzs4WMuoDsySqUDQzHrrf2WagAFpw==
X-Received: by 2002:a05:6512:681:b0:489:d509:e076 with SMTP id t1-20020a056512068100b00489d509e076mr901305lfe.618.1661415661568;
        Thu, 25 Aug 2022 01:21:01 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id s8-20020a2e1508000000b0025e6a598037sm384287ljd.137.2022.08.25.01.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 01:21:00 -0700 (PDT)
Message-ID: <517702b1-1fb8-705c-a927-83ff21a87390@linaro.org>
Date:   Thu, 25 Aug 2022 11:20:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: timer: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Paul Cercueil <paul@crapouillou.net>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220823145649.3118479-16-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-16-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
