Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 898756BC7C8
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:54:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230076AbjCPHyK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:54:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230026AbjCPHyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:54:09 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99E4AA73B
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:53:59 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id y4so4113516edo.2
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678953238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HFQwkWuIPLhANuYUvhywICWBQYBHEb6BjuEn8MCRSMw=;
        b=NHl3+dw6m1m50tXINN8FQmsNsRt4P8KjV8lFehNOHWbeBo4j79PbkGl51Oy5Rn3tS+
         ddMB3jf8VtYgvvr/46PdYii4YnYfbmfV3fyhNlvdWzmZ0B3R4RkG/lZv3iAr1tspAs+M
         ec7KJJsQK/ibyWX6Ncig+hpfUa87Bc6C6VeZtk94Xdy6chS7uY1yJ774VscYPmIwWVqu
         Y5nLFm6MN5H26aFgIUYX2gCDg5n6P9TGnV+WakAvZgVJKi/cK8HwKgNFuFfMP+xXklr4
         7iQgcmuA38nErCPniO1AR0LWhrGB9J2RhvfYqBeromr81ErxMerde2wMglgY6A8O82Xy
         JiFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678953238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HFQwkWuIPLhANuYUvhywICWBQYBHEb6BjuEn8MCRSMw=;
        b=PYc47SgZKiRNxUcFPcatYWHvjLpsU66kbC16BMSdDJ4SjYvykDJDlaTOgqZzeNH6R+
         YfTd63phf29TNOK44q4/MA6vy5btGMhZagr4SPGxrIKVOlJrp9wDLDqr4ah+7UPdSRp/
         QpPL1qIc+mPx/TS4zt+cHYl3UMPcAsi6aTSuofuml7D7IPB7kzUAZcJEHSd71g9mTAPW
         dYOGXsV0VZTtgLGLz+Z9KgbVUkHrWeN117idQGFJyJ4oOXmxXpFP1iyR6lDM8ZEoCpOS
         ECoIOM3ngXwEA0kC46kI0spzFseKnhg7xPmTbF1pFwL2B0bNeDPQbnY7GjFWfjn9dTH6
         UZiw==
X-Gm-Message-State: AO0yUKWyWqxS8yzoAppBDN0mfEWWjtDsoiByfsG6O+SCmFUi0sdx3inq
        8436JD0yHBrJy5Ey0R2TtkD81A==
X-Google-Smtp-Source: AK7set+G75VW9HakAphUnmMKCv5p/iTIC6FhPVwMg2fOsJgRGVygjb33Je6jR7WM/PxUFY9pdglF1A==
X-Received: by 2002:a17:906:17ca:b0:925:5549:f81c with SMTP id u10-20020a17090617ca00b009255549f81cmr10372490eje.6.1678953238324;
        Thu, 16 Mar 2023 00:53:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id le20-20020a170906ae1400b00921c608b737sm3474163ejb.126.2023.03.16.00.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:53:57 -0700 (PDT)
Message-ID: <b72e06c1-2f46-3e4a-25a2-eaf25510b7c4@linaro.org>
Date:   Thu, 16 Mar 2023 08:53:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/4] dt-bindings: trivial-devices: Add acbel,crps
Content-Language: en-US
To:     Lakshmi Yadlapati <lakshmiy@us.ibm.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ylakshmi@yahoo.com
References: <20230315184921.846813-1-lakshmiy@us.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315184921.846813-1-lakshmiy@us.ibm.com>
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

On 15/03/2023 19:49, Lakshmi Yadlapati wrote:
> Add Acbel CRPS Series power supply to trivial devices.
> 
> Signed-off-by: Lakshmi Yadlapati <lakshmiy@us.ibm.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++

Your patches are not threaded correctly which messes with review process
and our tools. Fix this before sending next version.

>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 6f482a254a1d..ae2cf4411b39 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



Best regards,
Krzysztof

