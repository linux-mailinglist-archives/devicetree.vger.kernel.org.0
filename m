Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE50608E5E
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 18:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiJVQIX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 12:08:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiJVQIW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 12:08:22 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66E6C13C1C6
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:08:21 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id j21so3821533qkk.9
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I0p+oQ1M6EtK8DgXQshbn1CCbBGt5UFmRE78AD8DMrg=;
        b=zEqU40yYAUOWyZaERGuu6yjDI4xmGEdbi/Wb/xDI6FvU37BiGbL9jIZXrhTFVWGGOg
         cLeAaR/nm5/WY55ki7Tw+PpSagbJrK/GmkVJ0EbDMUr9424gEqoTcE+QSTexfmbZ+Sol
         sV5EQDF02LUFNdDfSpdDEWsAHY8YzeYoMn+MUlD0hA07nnCVNLOz1HARHb9mrsyZ6kdI
         24PqY4rSzEB9ELjhuYI+2K/ybKnE+4zxkLwT2X5l37XlBNP7ulr0/DvjsKHsojRNrtJf
         oxPLOviZi4aG+e9XwpMbhv2ASRpFwSZyNl84g0a+bWARQZDnTF+fMYojK5USLydY9pTD
         wNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I0p+oQ1M6EtK8DgXQshbn1CCbBGt5UFmRE78AD8DMrg=;
        b=nGfbWMoC0G/Q+c+20+83cQo8tJ7/dNyWFObZ+lcT3D4DV6KMuAoNRD9ivddvrROzbT
         PKbu533+mqjGecB/PJ/jsfUidL1Wl48bkn6Jt95deXm7XtOlbkAxIlsszoH7rrugBxJ+
         b0kbfDLsxctLpsMuezaihJq6Elich9OpTFqRSdOZ6p52kJJqdRnQbXso8DzcOpx+edYr
         PPZ8ORtLqvL4wpwL1A0C9CTOwb9aE9jJYWf2f5Silg4P2/ox+LU8A/HNQzJmErrkA4X3
         wLogrr5dH6Iqz+zuoZqdiZxCXgCqFumF4H0aRbiGG0k6WTvwOETQPVuFZxK5maJSCVmI
         iTFg==
X-Gm-Message-State: ACrzQf0eOp9Whdp250RpHX76JyLhhLgs/U+hxGiGYDNlZnJSv7xksqNY
        OCt/m65QYpkNhvUMzFgR6BBDxGkbb8S+KA==
X-Google-Smtp-Source: AMsMyM4wonpIqSs3FDigKQsP5RS3n1Fzgc4+kxV5kTBF2fzG12lV+S2xEv85AamamAuM5KCSbhFXCQ==
X-Received: by 2002:a05:620a:2443:b0:6ee:b1f0:3798 with SMTP id h3-20020a05620a244300b006eeb1f03798mr17010684qkn.444.1666454900546;
        Sat, 22 Oct 2022 09:08:20 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id l12-20020a05620a28cc00b006ecf030ef15sm11704035qkp.65.2022.10.22.09.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:08:19 -0700 (PDT)
Message-ID: <5726693b-367c-8070-c296-710c2e828151@linaro.org>
Date:   Sat, 22 Oct 2022 12:08:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20221021171405.86509-1-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021171405.86509-1-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 13:14, Sebastian Reichel wrote:
> On RK3588 some power domains require multiple qos blocks to be
> saved. The maximum required number for RK3588 is 8 (for VDPU).
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 0d5e999a58f1..cf0f2946fea1 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -134,7 +134,7 @@ $defs:
>        pm_qos:
>          $ref: /schemas/types.yaml#/definitions/phandle-array
>          items:
> -          maxItems: 1
> +          maxItems: 8

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

You now require minItems 8. It's not what your commit msg is saying. You
miss here minItems: 1.

>          description: |
>            A number of phandles to qos blocks which need to be saved and restored
>            while power domain switches state.

Best regards,
Krzysztof

