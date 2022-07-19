Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F95857981E
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 13:04:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235203AbiGSLEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 07:04:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235108AbiGSLEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 07:04:54 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 166F225C47
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 04:04:54 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id by8so13332822ljb.13
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EX19RpTLgpzKcCJO8mDxPYr2eZCUlJJYLs40GJ/aDtE=;
        b=s3SRJ6/kPB9R99UVkk665l3uCz1jjAO4bxRMm6Mp1nfnXdVeb6zW6map6ov6BrtRCZ
         clj/jGjEay1UIEB1sXQgCKGLyOAFolccLC8dyjBzdoS8q5v0O9fmM6h2cdkLj/hvtpLt
         MrAHDSxWRVUBZwwnJ7sQCrnJSdNvMmu2xV89kRvtGFq+IZ9Q6uYqmOBRJ4d1WUQkkYPP
         WSBkkv8JHfyf0O887nmYU9G7zbMBaymD9ajnX6OprjEJi2PnNfVqr19PijTrcfPx0qcU
         PxeQ68n7NpjWOpI56FSSX04lOw9L8TZk+CuySjX3CbQY+BZrIQLkrXt8AWwhEphwa90R
         ti6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EX19RpTLgpzKcCJO8mDxPYr2eZCUlJJYLs40GJ/aDtE=;
        b=HNdBeY40GyLIZUE1ZAatEepO0R4oDKpy/bLQu1pl42D4txlynFHRQ7Byld3MEkM50V
         +mTfxw0c4v+MJu1K+U8oohM7B/8uwIifzZtc3rCL6696ey2n+/3pGrdOJdrEcNo4PNCo
         L6saDPwOi04dXPMVoF7KzLgo7Y/mVrxColHWdumWuLlWDTuC8lRHp61xMmFcVujanTrX
         +dMtwY+eT1UmUWlslSBBKC93OdaaiBmKMLnhV8fD5LaJATcm6xzk/yaeER8O2PLu9dql
         6Z8LGkU3gdG0tdiUjD00jsEqqeBqB1Y3MrvGQ+zC1dinL3oOLYnNKQIoq1a1N/WCAtPg
         +1PQ==
X-Gm-Message-State: AJIora+UzTXjQGzgLlqD974gA4S5IaJyR0GGVfeDQB3BWWCFC64xrWZw
        frRb65VIYEqBp8f861zg0vuAJA==
X-Google-Smtp-Source: AGRyM1t1ByyKQvuvfe41Tkvj/zYbbhsK14gV6ydWq1VeAlZ4j7rEjFY23wSBgIriw+qgh2nbPfxQnA==
X-Received: by 2002:a2e:a490:0:b0:25d:7609:1fbf with SMTP id h16-20020a2ea490000000b0025d76091fbfmr14767979lji.432.1658228692354;
        Tue, 19 Jul 2022 04:04:52 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id c3-20020a2ebf03000000b0025dabcba63csm1659273ljr.17.2022.07.19.04.04.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 04:04:51 -0700 (PDT)
Message-ID: <13fd6d44-c645-0935-9fc6-aeebcb96b9cf@linaro.org>
Date:   Tue, 19 Jul 2022 13:04:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: atmel-classd: PDMIC convert to
 json-schema
Content-Language: en-US
To:     Ryan.Wanner@microchip.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220715162922.660859-1-Ryan.Wanner@microchip.com>
 <20220715162922.660859-3-Ryan.Wanner@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220715162922.660859-3-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/07/2022 18:29, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Convert Atmel PDMIC devicetree binding to json-schema.
> Change file naming to match json-schema naming.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
> v1 -> v2:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
