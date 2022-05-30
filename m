Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF59F5379DA
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 13:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230226AbiE3L1e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 07:27:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235824AbiE3L1W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 07:27:22 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB0D34D249
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 04:27:21 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id c2so3573281edf.5
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 04:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=E6z4YAlgEJxy9dgZZXDWgK7C1bAepcnt8dDi/KruTk4=;
        b=ewMbJkTHaxj6KMfZwATaPp2mCXul+xqk6q8YtHxkkF5wqw37LUquBYIUQa8LQt4RSS
         1EUHm9WJjf1AIwd4n7jNVJfZGPo5UyRGC0PE8RlYLvMJeRa9Ko9khtgtZ0zKjKWJZIfR
         3dAnve8CP7SdE50l1njcD3AOYY2STh1lTDnV9JFiWe7/j8Tw0dfH8crrTt+zPjJYTVZZ
         qdUadgqb9rrVXpnTo/YgzkBBshksOZC5kx02IRffZpoAUnmliZFWKAF8Ds6f/63X6895
         kpgHw/7KYb/M887go/Uau/acEKyUypx/HVOuUjQzbftcRIhAESYtepcsmbluE6koTBH6
         +/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=E6z4YAlgEJxy9dgZZXDWgK7C1bAepcnt8dDi/KruTk4=;
        b=poRrBCTYknjc82UFQmX2m9mDYG6O+fzkCC7+2tT3dl7F4hleCJ1CDposi/tRmq5I6j
         NRvazjYTR/GSfq6qjSj3Tu2D6oFOP8xsKFhCZo37L+TBdHB0Z+fTkt3lGzLmRHRHigFB
         dQ6VD1v44ZZRRoa7mkmVQHH/GtwhVZoxX14wahpdcAC8Fai3GEyRLZS9XuULw0Uxdwz1
         /HeMlnixvjuLS/4u5kTk9IrsjQOoJDWpx7RK4l5V2sIRzgjBn8z+SyLaekTq5hOgbzD2
         M7VzIjMLyoDWsBD+35ChSZGbG/KVx8RsSvUyYWKCCzifDJIEqMw2W6M5V7zucTHwtNDh
         RJsQ==
X-Gm-Message-State: AOAM5304lvan9AujzRbK67FFAEfKro5miWXQjeOPuaNU2fO1uk8MpKf+
        Izbk/gUZ7sEjzGvcRhZlPwoFN6fkglOyOj7F
X-Google-Smtp-Source: ABdhPJx2LtAW7VoNu8xUutiHAdywZpmhpB+XyQsVgc+F2AkPxL015R1BZlRBCEtAnv0heBZeOlIDPw==
X-Received: by 2002:a05:6402:3514:b0:42d:d4ec:4a35 with SMTP id b20-20020a056402351400b0042dd4ec4a35mr2848302edd.62.1653910040266;
        Mon, 30 May 2022 04:27:20 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i15-20020a1709061ccf00b006fec5cef701sm3895631ejh.197.2022.05.30.04.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 04:27:19 -0700 (PDT)
Message-ID: <d88afea3-de4b-aab5-b90b-e21b8bf003e5@linaro.org>
Date:   Mon, 30 May 2022 13:27:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: mfd: ti,j721e-system-controller: Add
 clock property
Content-Language: en-US
To:     Rahul T R <r-ravikumar@ti.com>, robh+dt@kernel.org, nm@ti.com,
        vigneshr@ti.com, kishon@ti.com, krzysztof.kozlowski+dt@linaro.org
Cc:     lee.jones@linaro.org, rogerq@kernel.org,
        devicetree@vger.kernel.org, kristo@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        s-anna@ti.com
References: <20220530101031.11357-1-r-ravikumar@ti.com>
 <20220530101031.11357-2-r-ravikumar@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220530101031.11357-2-r-ravikumar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2022 12:10, Rahul T R wrote:
> Add a pattern property for clock-controller, also update the example
> with a clock-controller node
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> ---
>  .../bindings/mfd/ti,j721e-system-controller.yaml     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
