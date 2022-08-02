Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51325587B20
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 12:56:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236089AbiHBK4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 06:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236087AbiHBK4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 06:56:20 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F8F611443
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 03:56:18 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id m22so9566188lfl.9
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 03:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UbN6jiKFBX9si3SM5c3nDEeyT8d+xQL8LB23OeItQGs=;
        b=xGP8ARuEcU/pGrYXAMuXogjETiQGvO6LKtq16P/CdKEcY6FoGmH3tv9kefy6omFARl
         Yq76O/j+MXKsX2obVJhcuEfq57hTDeS2zDAK8lr1aXuG5MU6121yTJcp2bsaRkHLLZac
         HxpY905FngmUUKYMunpgBqNrniDs5UdFZ6J4nKYZrM0474o2idHohgcDAtFlyI7PQXoO
         PteJ7gTmx7fBrTVEtoBBzRaGeCT3TVZ1oT3oxhi8842MiKFKUHMw9hFeXWkP9YYVOcAc
         TbCB0Z3N4ScJaAzgLwllpWiPz0CxHdT0naeaYYAv8THzP3kE8IeaCzQgZF3/OL3BB2SJ
         RjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UbN6jiKFBX9si3SM5c3nDEeyT8d+xQL8LB23OeItQGs=;
        b=Gy1R/uNHthvbaEVoaA7Km2htgN63kqWVeZ8dQV5+7Kz+Lt7M+SFN6F2gPs1cQ8o0Qb
         kIOc9+4K2byxDRlgKxN71mTo+mivpk3EBB/m9XRMsb/ql8ziqsM782liHBy0GR8UQwDA
         lx6ku30VChanJgswkwYJDtYIWW2BczBIRTO0xSQgpvRS73OcRzK/xTwrWjEU+ulHC34D
         669ZBRb0cuohQaGWw1JvVV5+q+6/3rUZRax89AW7s9xQ72Vq8+ipiJV49w4jvKD/kP5H
         heUlpbxfFA1D/Gmg/oop3jN9PFuez8uUrbwpP+3IsVnciY7EQXPsOsm/tRjpD/BaVE3C
         mk9w==
X-Gm-Message-State: AJIora8ebmacvV3MLdluDdltyrompwOwX/i5F73zsFPpp9e4Bb6XAtrM
        vfY/qVwpWWTmeMfZAHbmMHp+Fw==
X-Google-Smtp-Source: AGRyM1sWQfz7Q7J81YoNB/znHMkITwL3mvZMFE/OwPlVKv9SK3yBIdl3TOSQM+vKPVLLwcKEOWYldA==
X-Received: by 2002:a05:6512:e90:b0:489:cd56:4610 with SMTP id bi16-20020a0565120e9000b00489cd564610mr7590188lfb.483.1659437776794;
        Tue, 02 Aug 2022 03:56:16 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id c7-20020a056512238700b0048af47aefecsm959582lfv.290.2022.08.02.03.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 03:56:16 -0700 (PDT)
Message-ID: <7b0d5f68-491e-ace4-5970-92ef795ec5a7@linaro.org>
Date:   Tue, 2 Aug 2022 12:56:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/3] drivers: bus: simple-pm-bus: Use clocks
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, saravanak@google.com,
        gregkh@linuxfoundation.org, geert+renesas@glider.be
References: <20220802071310.2650864-1-victor.liu@nxp.com>
 <20220802071310.2650864-3-victor.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220802071310.2650864-3-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/08/2022 09:13, Liu Ying wrote:
> Simple Power-Managed bus controller may need functional clock(s)
> to be enabled before child devices connected to the bus can be
> accessed.  Get the clock(s) as a bulk and enable/disable the
> clock(s) when the bus is being power managed.
> 
> One example is that Freescale i.MX8qxp pixel link MSI bus controller
> needs MSI clock and AHB clock to be enabled before accessing child
> devices.

No, because it is not simple bus anymore.


Best regards,
Krzysztof
