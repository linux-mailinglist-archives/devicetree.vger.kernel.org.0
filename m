Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B520D6E9892
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 17:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbjDTPmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 11:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231817AbjDTPmG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 11:42:06 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3A03C3C
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 08:42:03 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id dm2so7334792ejc.8
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 08:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682005322; x=1684597322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KnJpp8n/D0kUuMw5srBtiHxWnY5agaKj5jAEcqN8M30=;
        b=d7l1XYePBoWBNgg+K9TiUXnEeE1sNHrY5RlzHQid8iJYdL41erTXfy7aPeIm4TeOFX
         9RkBJBANWPmKeZXEJLBg22JkFYJPaK2qH+GnUQ9KUKjHJ2TJ1IkVkIZ21Tn6lb7Hz0vB
         HhtpVKng1rKja4iFnwW7odp1E5EHbCV47OLlPiTmNLHMRrbLzepCvMgM1ETRgmvqdZpU
         fNV/PuLVsgBerGE6ikKNNXeCBrxwuu+MLin13ualf7pm82WlE5pJWO9ggd850PQohLcg
         wZI9SAHcXop2U2VXX5C9CDNsquagEwYH+zZ5yrNyh2nVC0XTnut3uvHr2sGgkwNL/+a9
         bNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682005322; x=1684597322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KnJpp8n/D0kUuMw5srBtiHxWnY5agaKj5jAEcqN8M30=;
        b=bGVKixzigQSpb2JiXfaRnuXWhPhgE+jirB6Ztm7LxJNU9NWesjPZcskNEuK4DYG2cy
         PKX3keLzCItmLw4/4G/ndwjJHZfAWhFyzVQY4OK5Y2vMECa+It8deO+y6f+tQu5tW8Ms
         7A3IFaMMI75L/tL90rIFfusuKKDJqG5X7PMli9Yxs9TIk5/rzGydrMW7W9BaHhYfsS2A
         ODTiXU/k2XQekUc/JCPFoiHQM+OX9siAFzb4swE17KDvFpicJdVeh0Z6gksApHLkgT9H
         Tb3c+mLn27yySSzfFbJYZ7PHvAiANUMbYGmKfuSa4sX3fZeZefb6Yd7z/HR2qERGlBuO
         QZgQ==
X-Gm-Message-State: AAQBX9cJZ+XbngijKCxDJUFBYbF7BEHyiVOZRSmPKQ8Hcz1QpCJhsdtg
        MMj5GUknRm/5I2CB5b4wXhqOzqQtVJMSis3rY7cN8w==
X-Google-Smtp-Source: AKy350aUUUuiHPcRVrmXlKjxRMAKQP2h9+Dfv/GAZvKgaHmZyTTXiJnohkiGrcI/uqV5UoEmIm3qzQ==
X-Received: by 2002:a17:906:5281:b0:956:f636:cc93 with SMTP id c1-20020a170906528100b00956f636cc93mr878092ejm.15.1682005322054;
        Thu, 20 Apr 2023 08:42:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bcb8:77e6:8f45:4771? ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906805000b00953285b937asm842463ejw.189.2023.04.20.08.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 08:42:01 -0700 (PDT)
Message-ID: <0d096ba8-1bb2-249e-153f-eb430a9f5e8e@linaro.org>
Date:   Thu, 20 Apr 2023 17:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: sunxi: add ICnova A20 ADB4006
 binding
Content-Language: en-US
To:     Ludwig Kormann <ludwig.kormann@in-circuit.de>, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andre.przywara@arm.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20230420102409.1394618-1-ludwig.kormann@in-circuit.de>
 <20230420102409.1394618-2-ludwig.kormann@in-circuit.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230420102409.1394618-2-ludwig.kormann@in-circuit.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 12:24, Ludwig Kormann wrote:
> Document board compatible names for In-Circuit ICnova A20 ADB4006
> development board.
> 
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Ludwig Kormann <ludwig.kormann@in-circuit.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

