Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B4875F09A2
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 13:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbiI3LMl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 07:12:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbiI3LMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 07:12:22 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B503A183
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:49:34 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id l12so4370373ljg.9
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=LQmSfvmdYcsQ3TJepFnKd/I61iUETxbyLBYaG0YvPbI=;
        b=Y+JUJPVygm/ITXHKeSfUaFFgpAaI72Jh2PqOZmcQbr7wEp/T21V1m1zqkb7bdugTVK
         zVG/Ozek+Mr1dlouceNXls+BAU5UiECu/CgM0WtVvmeR/QJ3rlRuI7vVGgpmn8LOQQ8f
         Ndfs34MSlH6zNitvV4S5VBKBARAUvcqT6J31HXC0rxISSqZnAq7KXyyOyZUmU8QfeNnW
         Yk/3yUBxsPhKkdhpJ5hjvPPGt07fYg1kc3TKX5JsLbgXqKleWz2ouwU+vIKk+W8ffCR7
         odxsWCkgiCLk77IjVeadGAgft4V82TUO+QfaO9ydbejomjCQ7bBsIMKjdI+ixkFTd43K
         kYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LQmSfvmdYcsQ3TJepFnKd/I61iUETxbyLBYaG0YvPbI=;
        b=EgrgboDKlG9UxIQojqMNMTb2PBaeJB1bHqFzaeQi8pe7CEfVpYk9GDV5JfJt0ylZkk
         KfTC5noVf2Iv/YZFw1Oov1B9TMFT665xVTReNgpGK9slI0oOpNi8BrfSdaqxG5TCZC5z
         b2z/ZhtLBxEJAuwe3MH1afHezx/D2w+VR3lCz3jzaPZMApexTbLY1sry3Jj8wPRP8zcV
         sXFjN1X9HNY5jbCQRp4e90gY2AqZS9G+wqxzxBGrJAEyJbtCsZXDN2KZui34zigxihrN
         Iv0XvuAA0ooRp8SadQbuxy8G9UeW7H1awdBV8Eg4aR9MaOQhQURgTyda/qQmv3x5GQe/
         FjMw==
X-Gm-Message-State: ACrzQf3F8ix5Qgp66YDC4jDpOUr0KYKv3ZP/jKiRFeuCQMeAWi6fkoCi
        8/6JJm6WIWIa71yUFUirecouJg==
X-Google-Smtp-Source: AMsMyM7iRCfgwHnj4h/qw1Yb45TDQhUYhGG/iT/OtytoacNNDFFRxQ8wUpFxhvqSHgxpX4K25dcMfg==
X-Received: by 2002:a2e:86cf:0:b0:26b:fe50:8c4c with SMTP id n15-20020a2e86cf000000b0026bfe508c4cmr2557212ljj.17.1664534972789;
        Fri, 30 Sep 2022 03:49:32 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q12-20020ac246ec000000b004945c1c5cccsm253083lfo.268.2022.09.30.03.49.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 03:49:32 -0700 (PDT)
Message-ID: <efa2f644-0a1d-00f7-970c-f17ceb0cc550@linaro.org>
Date:   Fri, 30 Sep 2022 12:49:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/4] dt-bindings: display: Add bindings for JDI
 LPM102A188A
Content-Language: en-US
To:     Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jonathanh@nvidia.com,
        arnd@arndb.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20220929170502.1034040-1-diogo.ivo@tecnico.ulisboa.pt>
 <20220929170502.1034040-2-diogo.ivo@tecnico.ulisboa.pt>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220929170502.1034040-2-diogo.ivo@tecnico.ulisboa.pt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 19:04, Diogo Ivo wrote:
> The LPM102A188A is a 10.2" 2560x1800 IPS panel found in
> the Google Pixel C.
> 


Thank you for your patch. There is something to discuss/improve.

> +  Each of the DSI channels controls a separate DSI peripheral. The peripheral
> +  driven by the first link (DSI-LINK1) is considered the primary peripheral
> +  and controls the device. The 'link2' property contains a phandle to the
> +  peripheral driven by the second link (DSI-LINK2).
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: jdi,lpm102a188a
> +
> +  reg: true
> +  enable-gpios: true
> +  reset-gpios: true
> +  power-supply: true
> +  backlight: true
> +
> +  ts-reset-gpios:
> +    maxItems: 1
> +    description: |
> +      Specifier for a GPIO connected to the touchscreen reset control signal.
> +      The reset signal is active low.

Isn't touchscreen a separate (input) device?

> +
> +  ddi-supply:
> +    description: The regulator that provides IOVCC (1.8V).
> +
> +  link2:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: |
> +      phandle to the DSI peripheral on the secondary link. Note that the
> +      presence of this property marks the containing node as DSI-LINK1.

Best regards,
Krzysztof

