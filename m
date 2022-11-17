Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDAEB62E24C
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 17:53:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234874AbiKQQx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 11:53:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234292AbiKQQxy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 11:53:54 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F5C762C7
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 08:53:53 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id k19so3499940lji.2
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 08:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q5lNAuUvq7KF2EWgSnnimOiwQgL6vwTn4K0OE0kO2Ow=;
        b=ilm3WcmvkNn3rG/wr1GQNhZThT1X4/i6wHYEaNqQL0pHdw+VVIi7HbxqQr4XHJIkcy
         SVby23sx9xMThmkcCrxHBbVGQodesod6Kw/KTiK8VsAOF9ZP6Ou477sij9uG+uws55FA
         GFrU9U1iIbUx9+c70sOwfmjEsHHS5Gw2y4QK61rqXECziQuTOTGYTFAqcaJpnaleVe2f
         9vtdXoXvymQlY2yneszclSJXvQsjNik56vl7FcaCoD+OvXWPJN4buLJV6mszSzFgip5q
         XlPJ1m6EAM5kpgsw93f/sytDzPViWzpaSV1ppBIc26sYZaWVymFanvhYA1AIzvznf8c+
         PVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q5lNAuUvq7KF2EWgSnnimOiwQgL6vwTn4K0OE0kO2Ow=;
        b=xWreHkw9q8KlOzFr9McV91eYu8AvozQTInM23/UiUVcS0dsskStTl0QyPXFCjm7Z7M
         aBZNeUcd7x0t9MLgFZGeA7CxpS/oxnIXvTZlRp2NR2UVxbfVVX03w25gt/gJFbqIGnHw
         lDkzmhoMnzWgN2Sm8/R519h0aYZKLvQTrIIw6lxzgLCsa78plBsa9iwhwXli7A7jaHjB
         phyFTtSFBPMTbDpLOT489F6SmxnM9XmOyD5nG24SqzUzYgVhmP4zVXVeKefvRIINPAjF
         mhOqU9AOmMmCQ4FkSHxp3NTDxX3oKULSHqZ+cd3tpljRtCERLaRwExeLjz8DUFZzAmIc
         K5LA==
X-Gm-Message-State: ANoB5pknTpdk26Npq7xSgntkvRfrzf4wQsoAQoEvpbHpJ5Hy3BPxt5T4
        Qr5vuow0TwOkeKtSAUms8/K8Yw==
X-Google-Smtp-Source: AA0mqf5KC6KorG2sJvPTb+4tuKfaT0KKzir/TN6xCxiSWS6oXAa6Oo6ShnYBsKouIK6DzccBTMOl3Q==
X-Received: by 2002:a2e:9d0b:0:b0:279:f7d:15cf with SMTP id t11-20020a2e9d0b000000b002790f7d15cfmr1223440lji.468.1668704031633;
        Thu, 17 Nov 2022 08:53:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v23-20020a05651203b700b004b40f2e25d3sm230446lfp.122.2022.11.17.08.53.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 08:53:51 -0800 (PST)
Message-ID: <545f15b2-941b-d3dd-f2e7-4a3a1cbfa6e5@linaro.org>
Date:   Thu, 17 Nov 2022 17:53:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v11 1/2] dt-bindings: mfd: Add MAX5970 and MAX5978
Content-Language: en-US
To:     Naresh Solanki <naresh.solanki@9elements.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Patrick Rudolph <patrick.rudolph@9elements.com>
Cc:     Marcello Sylvester Bauer <sylv@sylv.io>
References: <20221116205822.1128275-1-Naresh.Solanki@9elements.com>
 <20221116205822.1128275-2-Naresh.Solanki@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116205822.1128275-2-Naresh.Solanki@9elements.com>
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

On 16/11/2022 21:58, Naresh Solanki wrote:
> From: Marcello Sylvester Bauer <sylv@sylv.io>
> 
> The MAX597x is a hot swap controller with configurable fault protection.
> It also has 10bit ADC for current & voltage measurements.
> 
> Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
> Co-developed-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> Co-developed-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

