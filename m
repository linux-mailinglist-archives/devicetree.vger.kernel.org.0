Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A2F4FFF5B
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 21:31:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237470AbiDMTdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 15:33:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235849AbiDMTdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 15:33:39 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BFA476282
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:31:17 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id d10so3740929edj.0
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 12:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=frTEyC0/+CfTIF4PYPNiHQ4Gsfm5fIkYJSxFNrCEuso=;
        b=USSnSZtoD5qwvH/yvxHC79p7rIcFBfYSAwCS/8l+UAOQVYZUKJ+vDuBaAJB/nJmEPx
         g7xJs94b53G9SqzrTEyV7LiPRqY0+FlEUHXsFaG0byJs5XO9935tw+7S/EMAJuTtQhFu
         VjfWoAx3Fgh06C/08DWnLONaqlnuWzNwZGJHbJI9za5M55H9pRP/jioGj6z6SD5mSuf5
         OhqjpbUnqQeW/s2ZVSve+5lCImK8h2qDomy0YIMCtTsk3zqfpMMDy2LoFmTLoUjvNvp4
         WpBvZbIOz7I46fmHuumVjEpqpu1SEQkwedZ3gusL5+0cPXdh1QTDfn/NzBsWi6w2TCm3
         pPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=frTEyC0/+CfTIF4PYPNiHQ4Gsfm5fIkYJSxFNrCEuso=;
        b=FTTwJEDQkTEfWFnerWwJwJu6128W+Xk5mOZY++clDLxNFLG95QeezCqGgrVwv/id3U
         bDi2K5PvXBRHrRjOphml6G+5xyNUJZQEwymsBdEDeXs0QDxqDqtXmxBDw5jnnM46owTC
         OA/7Lu6sCPvtjW2lS4B/GcskWWn52ESayNc51QfrMG/f7IPN3YqJbGGYQoN58cN84CPm
         zNWX/6I7s4PflHP4h073nzIJOsCKhPfveVu+qaO7TGRtxu5FOWTrVFZPkQZCRw1EVSGh
         0CeuhlcLflvZHNe2ToKkrrbJG/qDrqjEh6OKx/x8rU6B/Oa6FbasqXkapGjNZDGUGtdj
         38xA==
X-Gm-Message-State: AOAM5303d4gVg2GK3QC62NRbJtZwY8mFiszFpL/M3qYKs1g8mBYGvlZO
        CLwm7SeFeA6da35x1YfiAqXEKw==
X-Google-Smtp-Source: ABdhPJxCWuXB+xuTb6sKG9nbhRjhHzVASERrwIqlT8IubgeDh/aIhOShiVtJmLn6LiaKB+HEOkgWow==
X-Received: by 2002:a05:6402:5250:b0:41d:8556:4191 with SMTP id t16-20020a056402525000b0041d85564191mr14027035edd.269.1649878275612;
        Wed, 13 Apr 2022 12:31:15 -0700 (PDT)
Received: from [192.168.0.207] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id e26-20020a50ec9a000000b004193fe50151sm1584782edr.9.2022.04.13.12.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 12:31:15 -0700 (PDT)
Message-ID: <44efe8b6-1712-5b87-f030-2f1328533ee8@linaro.org>
Date:   Wed, 13 Apr 2022 21:31:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
        herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220413190713.1427956-1-clabbe@baylibre.com>
 <20220413190713.1427956-25-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220413190713.1427956-25-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2022 21:07, Corentin Labbe wrote:
> Convert rockchip-crypto to YAML.

Thank you for your patch. There is something to discuss/improve.

> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3288-crypto
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    maxItems: 4

This is not needed and dt_bindings_check should complain.

> +    items:
> +      const: aclk
> +      const: hclk
> +      const: sclk
> +      const: apb_pclk
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    maxItems: 1

The same.


Best regards,
Krzysztof
