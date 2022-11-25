Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C159B638EE4
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 18:16:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiKYRQ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 12:16:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229967AbiKYRQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 12:16:26 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F1A5215A
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 09:16:25 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso3878915wmo.1
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 09:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=47IViwB02OvhSucg0Ac9RBJB2CEi9LYnQsnlhOV4/Dc=;
        b=k+QNQ6ArRaSCIYlpyHOjcAdzHLXEbOX4EWSHmtIlbjASNH1LVCpmwAVozTErJQYpWr
         9nJxw6U8Ern0FTBK7R5UweSYBbiw51PeKFAW77S2waqhW2u7NX8Ha9O8rc1O9Jsc2lrS
         +3SOJq9WC2o9qcXHIz/e8EOvbL68K9VCF+V2msmlSbsbGPS/KW+XY2oBhl7aOsTjwepu
         nNSIsp40btxpgQ171iV6HPzopEsL3UcHIkJY/RqYRuMygCpxTGcVQfNfMnlRGw+kSRKq
         FhUyDTcAM5WBh0DkG3EZPYaymeGwf4YJFMmmmfzdRi+74CN0YBqQxHHzCbZF9B6e0OKI
         /TWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47IViwB02OvhSucg0Ac9RBJB2CEi9LYnQsnlhOV4/Dc=;
        b=6k0eNTZ7KkYIHV5AkeN56KfB7LQjyCktywRLaoW+ClGAB8QXxjYt1y8X97xP0W9hgp
         XK8gZwXa4o7jZvpy/tBDN30adXTVZBq5d2teW5aZE7j0UzjFp1Kg6D+0BMdW885+3HH6
         motrSMw+PS7RfInYspn9GsLPbTTK6S4XE1P6X+zIusIcAg8uMdxQ1Fc0eDkoTcYfSoDL
         E8NeJ5MWQT8Mkdt1ywSv1BZqE+rfKipfJyBt865hA0wNF/cLD+jKFqcrwig7II/4QbZT
         SEybC4HhIpuBRbio8nzyxQPnNN6QNyIaMnhvOqxsD/zdyCUB8gfiYU3jJbLtHNdhtQXH
         xNug==
X-Gm-Message-State: ANoB5plHK3DvUNwYZIrF9KMn0EmCqZXSnKbbIzPBJQUEP5zSQ/zBwS+P
        EOiIyo5FlVEym0THwVIyvUAuAA==
X-Google-Smtp-Source: AA0mqf69w6Yfu0TTbOHoIejvP3nOKghM7cjzJMlbSt2JYFq8gseJKVxI0YYjK3qo2In2faT5105xeA==
X-Received: by 2002:a7b:cd18:0:b0:3cf:a359:de90 with SMTP id f24-20020a7bcd18000000b003cfa359de90mr18862740wmj.122.1669396584441;
        Fri, 25 Nov 2022 09:16:24 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:84a5:7e09:b15:f1fe? ([2a01:e0a:982:cbb0:84a5:7e09:b15:f1fe])
        by smtp.gmail.com with ESMTPSA id d8-20020a5d6dc8000000b002415dd45320sm4071606wrz.112.2022.11.25.09.16.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 09:16:24 -0800 (PST)
Message-ID: <3719828c-0ac5-34c9-a04b-251cbeb5f6ef@linaro.org>
Date:   Fri, 25 Nov 2022 18:16:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: align LED node names with dtschema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 15:41, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern:
> 
>    amlogic/meson-sm1-bananapi-m5.dtb: leds: 'blue' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 


<snip>


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

