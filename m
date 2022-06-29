Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBBC255FD73
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 12:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232738AbiF2KhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 06:37:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230026AbiF2KhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 06:37:18 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051373E0DB
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 03:37:18 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id h23so31606339ejj.12
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 03:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2PLSan2OyFD3C0VPj63Fz6myEBk+Vbaa6VJQ9ANnEas=;
        b=UxJo9ozF3/CeGKF2ChdoWPqjX9OKm5SFdmD8/EoepDqf7UQl2ec7izk1OEqrHFoEo1
         s3/Q53xmmjqy5Us+xtJNOMHKDpgXCX12otf3IHHsa+dFg3ZqQAC6mrQpFYcVF8cJyL4T
         AgRBj4L1NpgDM2455cVdYmzAEt3zZ4QGVTyhubnvtLkssy8k+Q8WNc6BuUhsctBFZw49
         mfvstZazL0mgdJ7ItiwF4cGddIl/4bEDS4lF7cZ2VYqRvqldJiywqEN9A/tCTsdrTl6S
         yXzqa+Tyjp4Y9E95tCefWDwIRWJRrIJfe40PIzRH5SpcuPK9UvS/XcRk5JpDpTKY+Bqn
         HCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2PLSan2OyFD3C0VPj63Fz6myEBk+Vbaa6VJQ9ANnEas=;
        b=pgzp0URtBED4/8PfQmOFjFiQypaA/2smayv7hrLnV83hKw6m2fKZxgl5sZ65jXl+zq
         gSqralDYCjSYnQbbgWGCmVfv9Vqjz/yhDWeCD3y+DCCeQ2kuyXTUFcQZodBk0SWPcLr8
         Hh/NDLgrtcC//YU2ds82ok1uqqK5X3VijHNTzpy8ts1qOe5sEXmEo4qHmfe9g5vXnHy1
         7jgZ5MzyzJYPjJj2Zjw+mZpPrrR6unYmoVZUXY2+HwNa2wyaQ5UleBeMAoa1TQ0UhZTH
         CifJ4DcjIyCHyRpGEUj71FUlAhmbweURpN1XYsuM7jH8f07mgmDfXdIjkCSrbHBANrFE
         07rw==
X-Gm-Message-State: AJIora8iTqi3ZFb+rozGyJjWF3XKjhPvLeuv7VK1GySSHkR4aI/UjVBG
        f8lf6rTJkAXIwajGtP8z8JeYwg==
X-Google-Smtp-Source: AGRyM1vgCuE18ifvWqla2d2oJ85tPHHMpN/mhtzcqDs24N5WbM2ExYJwWvf9GA8LS68pv2VM3WsGXA==
X-Received: by 2002:a17:907:2d8a:b0:722:e35b:695 with SMTP id gt10-20020a1709072d8a00b00722e35b0695mr2646070ejc.470.1656499036586;
        Wed, 29 Jun 2022 03:37:16 -0700 (PDT)
Received: from [192.168.0.184] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o16-20020aa7d3d0000000b00437ce7fe1a0sm1244540edr.8.2022.06.29.03.37.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 03:37:16 -0700 (PDT)
Message-ID: <8b7ff51e-40ae-cefb-3df6-74abd33f277f@linaro.org>
Date:   Wed, 29 Jun 2022 12:37:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] docs: dt: writing-bindings: Update URL to DT schemas
Content-Language: en-US
To:     Paul Cercueil <paul@crapouillou.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220627223950.35748-1-paul@crapouillou.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627223950.35748-1-paul@crapouillou.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/06/2022 00:39, Paul Cercueil wrote:
> The previous URL was giving a 404 error.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  Documentation/devicetree/bindings/writing-bindings.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
