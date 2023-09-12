Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42CB279CA07
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:34:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232421AbjILIec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232443AbjILIea (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:34:30 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78315BF
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:34:26 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-31c3df710bdso4850054f8f.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507665; x=1695112465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jZvKqBaU4e4WD8mB1xT88Es2jtZVUQdj16yBjpkbVYc=;
        b=VlkZf4K58xTww18yD4b/loFIpkkqzXxT3GgMdnQWInuwFsoM/KOEwJYHumYoBH4UT3
         qKP+hRUpqRNKWI1wbqqOLXAP3Ik+j70HhS7+5c9Rq+UpwsrjWV4VfJXr8MAgtCliHFto
         +YSvXQIZJuAbqjHIFViudKMxe2yu5ievI16xoyZ3gOudorc5pSCb8YzPRSayOeTElbwj
         aypPzEJOOQey5nb3EQGfrIq3JCUyJFnLL+Ox8l6oi7hzT/JHyEjs040kZvZclclPxXWh
         oaPcPnJnYobVCe17wJMP4yUDKyJNYV7ydItUMWjepYnz7nDppIpYbl+q5Zh7J7ySei6K
         iVlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507665; x=1695112465;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jZvKqBaU4e4WD8mB1xT88Es2jtZVUQdj16yBjpkbVYc=;
        b=QnAk5aq8qOojb98RLME42OG7zoIGvuOVaw30CVk2rVg7qoQkwfnkZNBDIX/hg7B4F9
         K5C5KKynppZzbb5owIYRgOO4BNyF6F+B2RMD2NDnuNJyFISYJb9dRiQdjvdktoKCRjqT
         +ja/MgA599wnUCZVeIGUljrIu9KAI1gwPwiui/DrXbhWhWm3qhTpPLdUEa6dSelNURvB
         /LomZ3nysbMDzPxbgkIOFBfTWoxrBOFsF3ttljsaWGi5x9B1a13lx9jET6dIJlh32K2G
         yB0XVm4hdmxzl84wsntq/+l8Jd2dEOodmwOiYcHEtPr5nT8MINdLSRf0r1eSCvskoAic
         61+A==
X-Gm-Message-State: AOJu0YxjjSc10+B0DDG10pktpmMKRDs6rEBd2yRms9CZ9thnrL7t7Qha
        5TfhUhm9evio363LwXEVMKD64g==
X-Google-Smtp-Source: AGHT+IHJQK90JH3+xHWBNtHQSR0x/K4NnVj0gmTIUO5wTXQhBzgDr0ltTsybCqkeEJtUQ3ET6M2d2Q==
X-Received: by 2002:a5d:630a:0:b0:31c:67a3:520d with SMTP id i10-20020a5d630a000000b0031c67a3520dmr9875852wru.34.1694507664937;
        Tue, 12 Sep 2023 01:34:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id m6-20020a7bca46000000b00401dc20a070sm15321763wml.43.2023.09.12.01.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:34:24 -0700 (PDT)
Message-ID: <f456aa64-6b0f-7a25-07e0-6d5569956910@linaro.org>
Date:   Tue, 12 Sep 2023 10:34:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230908141238.642398-1-festevam@gmail.com>
 <2fb8c43c-c079-e04e-f727-3bc1dc29996e@linaro.org>
In-Reply-To: <2fb8c43c-c079-e04e-f727-3bc1dc29996e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 10:32, Krzysztof Kozlowski wrote:
> On 08/09/2023 16:12, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@denx.de>
>>
>> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need
> 
> Subject: media: dt-bindings: nxp,imx8-jpeg:
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Now I spotted Rob's answer, so obviously:
Un-reviewed

Best regards,
Krzysztof

