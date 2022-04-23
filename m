Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C83A50CC95
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 19:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236595AbiDWReo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 13:34:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236591AbiDWRen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 13:34:43 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9855218C466
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 10:31:44 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id l7so22061342ejn.2
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 10:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=bKsmqXRYpqUwhmofQJ981p6h75uLhrlYANKDZeRH3Yw=;
        b=AsyhZT5G7Rn1USmiBSUJqjC54KlsVFEdM+LUYDHVCYDWT2uMibekpBmYtuUoUApjvC
         li+cxCy+MjPt4k5Ly6BP1nKgLPiYO92qskFvBmO/yu01Q9G6ftIaVnxSI1NJZITAr5SZ
         RVmU6IQltV8QyJEf99e1IAw3H725Z4goBXgzN6F//2aTelMEMiC4hlyJ9b5+PRpt+rhq
         hzHeDco0ztmw+YZQO/dST6kcgF+EMNWwq/5zp1DsdcD9h5zdr6ETU1d4hnygyqKBNVuU
         wI1XEl9420F6q7aTcQLGUsmajZha053Y5YikkHxdDHh97bARDumge1nYnfW/hWHkBefk
         4bqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=bKsmqXRYpqUwhmofQJ981p6h75uLhrlYANKDZeRH3Yw=;
        b=SWjxXYacs0X8+dDdBp7wABzLNzAs0/45vPWDyx97FpVGlpJ//tXQmCkVI+6A3Z91jL
         AL4XyoSo2BCE0UTadIZ931h3uptl+HWPHhZux5Dtje40g7xZwcwlNWW3H/Giqkmag4iY
         tJST6tbPceA0sbZU/ScOZAaLGn9nEhSs4NeZEZn48vadw6qjGhN/Ja06mgZy5uEtb87S
         HCizWOvgdKdYUlaRcDvL+aU6i6SzZ3v6MR+v7v6qA/kHfuWOU3XTtJdrmQ0mVqBsu4ux
         KBxM58Rjh05HqMCAY5j4170F0Y1UDN030S1YTqDpOw3kJkMIERpHyIWf217qhudPZF5l
         VH6g==
X-Gm-Message-State: AOAM530E9lfNfvn043pKBccI/OZprWCAApTmWQPr1BSnTXBeCOdRbfe6
        ZXFMK7b/ZuCB6giMRa1beMMlrg==
X-Google-Smtp-Source: ABdhPJxUIwgdy6uOQIKxuP9OG0OknA6P6MQwfXJgUv6/3CSZgK3CreXhlN5R95v7e9nLbVweqm/4xA==
X-Received: by 2002:a17:906:6a0f:b0:6f0:1d08:3640 with SMTP id qw15-20020a1709066a0f00b006f01d083640mr9294977ejc.264.1650735103121;
        Sat, 23 Apr 2022 10:31:43 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r16-20020a056402019000b00418ed60c332sm2422395edv.65.2022.04.23.10.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 10:31:42 -0700 (PDT)
Message-ID: <34819690-5cb7-bbce-a2f5-3f6e66661049@linaro.org>
Date:   Sat, 23 Apr 2022 19:31:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Christopher Obbard <chris.obbard@collabora.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Alex Bee <knaerzche@gmail.com>,
        Elaine Zhang <zhangqing@rock-chips.com>
Cc:     linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
 <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
In-Reply-To: <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/04/2022 13:10, Krzysztof Kozlowski wrote:
> On 22/04/2022 15:38, Christopher Obbard wrote:
>> Document the RK3328 compatible for rockchip-vdec.
>>
>> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
>> ---
>>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
>>  1 file changed, 1 insertion(+)
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I acked this but Johan pointed out that your intention was different and
missing patch context is quite important here. Please explain what
exactly you wanted in the patch? Now it looks actually wrong, so my ack
is not correct.

Best regards,
Krzysztof
