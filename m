Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCFF76E810F
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 20:14:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233173AbjDSSOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 14:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233576AbjDSSOh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 14:14:37 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B4893E2
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 11:14:09 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id ud9so473583ejc.7
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681928047; x=1684520047;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xg3K3M8j59tMsqtihbLK8heSWq7f1ie0foKRcCv+H/w=;
        b=fnNwTRGi9HUBN2zEvwQ89hYmX+LWWW+J9Mp12/44/oBqIHMuqwdCS2HyfeiTqh5VH+
         qjpjGIetaBELAI3SHuQ+ojgsm1a4SIP5XMylYmr/XRzVs4pYauH7FG3NlCajoHEVbv0U
         a1u0Lt2jjFwrzaZ0Wdzo+Vy9EehOdS4EU2JFVaDqy8vFLr0qAJDBNsV9rKJ4G/3IBR2K
         3TZX088sudpRL8KiaRO4QDOld6A1JOcp0vIcUvJDLbVGbvpO6b5J1lao0+8KDG9MNMN3
         HIwVy6cN+TFw8oSgBVe4gTPszFeSYxXwt6TosTUcsKbBzEtWys5A7ezEF6x9ozCF0RbM
         2euQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681928047; x=1684520047;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xg3K3M8j59tMsqtihbLK8heSWq7f1ie0foKRcCv+H/w=;
        b=kvfTSa7L/J2LQlYADVK28JQdigAhfDdqloaF535juwlsAYYXZ/B/WblyRzUKVt+NGa
         SW41B9QhJudWM0quMruOaWTXSoIIl35/RnOjcKPXMrzShJWwenuY8OBr8CD1aPWpp5jf
         XB592/80WJUFSZTXrDsvT+K6ifi2QWQ9TJrEZL8R1FFBgGT17dpcsInmgREaTHULHJaq
         lEvkTmSdXTjt3beQadKJH/HORkeKtPgT71x3Mcm70GRCRUkvdP3Ioo+mzdv+xz1+7nEw
         mfXbUg2X6nrdnXJzFPIFMcWcgNs/RFa0WC99zB4MaeunYm4tvMPFKjMtLJw/+4XNmAC7
         Wn4Q==
X-Gm-Message-State: AAQBX9fm1cYOWtuYf+3OPs+0pQ5o3Tr5EKHHiJ0xqKL3m9xuO/9urNMo
        r6x0kVt+tqpEQYs23cggHEVhvg==
X-Google-Smtp-Source: AKy350br1hRHPBQPh7/yhSG6kX2cW268D8yfyrjD0fO5T5B5egerpgp7UimoCyx83w1tZFm4KXxfMg==
X-Received: by 2002:a17:906:a1c7:b0:94a:97dd:aed9 with SMTP id bx7-20020a170906a1c700b0094a97ddaed9mr17222396ejb.70.1681928047045;
        Wed, 19 Apr 2023 11:14:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:b7d8:d88b:1fac:c802? ([2a02:810d:15c0:828:b7d8:d88b:1fac:c802])
        by smtp.gmail.com with ESMTPSA id f4-20020a170906ef0400b0094f969e877bsm3847134ejs.43.2023.04.19.11.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 11:14:06 -0700 (PDT)
Message-ID: <9070d030-088c-f917-93bb-bc3bffceaaab@linaro.org>
Date:   Wed, 19 Apr 2023 20:14:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v13 2/4] dt-bindings: i2c: Add Maxim MAX735x/MAX736x
 variants
Content-Language: en-US
To:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        Peter Rosin <peda@axentia.se>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230418103430.966278-1-patrick.rudolph@9elements.com>
 <20230418103430.966278-3-patrick.rudolph@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418103430.966278-3-patrick.rudolph@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 12:34, Patrick Rudolph wrote:
> Update the pca954x bindings to add support for the Maxim MAX735x/MAX736x
> chips. The functionality will be provided by the existing pca954x driver.
> 
> For chips that are powered off by default add a regulator called vdd-supply.
> 
> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

