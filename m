Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E1DB4EEE66
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 15:44:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244648AbiDANqa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 09:46:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244526AbiDANq3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 09:46:29 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDD5E19C5A7
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 06:44:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id lr4so5904710ejb.11
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 06:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dXg0BEPoxux+zW0v1jfz5+2BtoCnLEGuBTvWBm9Wyb8=;
        b=gMQkHynZ9sEfJqF3clbblelIVMJmE4P2GB9CnUpmZVa+05XLiBeyYyG4m4Ke+7TEKj
         T6tbD0DkZ9M6vNnSoFXGkwTLf66XUlGNjhfT7HTVktWhQ/rxt+oimLhRbxCgIXNaPjZZ
         w9wA9pr6XnNDAYzD7eROPoL2znvhkzesaYphAkAztT9dg8/TZONcwFloW/RYEQ0Nifs9
         A7Q9hogCHgGoMeXJuCM3gDHSKibzYq6Ii+eoKQmYrRoMIN0lVFIXJYHVMhUc9p7YMblT
         XZwpryUSoQ+WHTB4cubOHbDqb29eC3RfWMP//dHhCtPKpp4JUO/pvRQqpNwQBrRE2Io5
         dMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dXg0BEPoxux+zW0v1jfz5+2BtoCnLEGuBTvWBm9Wyb8=;
        b=H4xTOEUjQkpVdbG2mmBiFo9BC5tF9IZKj+E+l1XlCxs4IeZGuI0YOVHkRxfhe/cvVe
         CQ1HYMFpYDxkuMAKNfiUK/Klva/r71URL1tAFIRUqa45+mqMp6d5HdRZ29ZNOA8ia40+
         booAJLi55MtdQQZrMxMpsI8A4jhEs3FHEB+ItKFV1E/Wo8YPxWoHrL0sOvq+dTjn2pSc
         JQ3eMiTFkXbZhcKuj1Pn3qDzg/3YCJvBVmpBswdDUXAFSnvDANvyp4bAskMgsNM4xKP4
         DXQglxYzIjw0uhjTsxUDFr6DIpJ4FFvf8KCmxYFgveNSpbn5JstJEG9GPm7v3jCrIqxA
         SxDg==
X-Gm-Message-State: AOAM532YXKmcBZCM6+/i4uxFiGURa3gCJsz/qcU3iVPDauvIyqE/ZjdV
        HwLL0u2llay/iuAZJfdZQEjqtQ==
X-Google-Smtp-Source: ABdhPJwihxSeskTAiciGW/SRE57is3wc8uCqoR1NFACh7coD/3vgO5wXAcx2Wk0MvUyPduOGFoVYFA==
X-Received: by 2002:a17:906:1be1:b0:6ce:b0a8:17d with SMTP id t1-20020a1709061be100b006ceb0a8017dmr9336353ejg.413.1648820677476;
        Fri, 01 Apr 2022 06:44:37 -0700 (PDT)
Received: from [192.168.0.170] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id x4-20020a170906b08400b006e493cb583esm1054581ejy.47.2022.04.01.06.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Apr 2022 06:44:37 -0700 (PDT)
Message-ID: <39d74fa6-275b-b2bf-c5ed-7bc3a91e7fba@linaro.org>
Date:   Fri, 1 Apr 2022 15:44:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/4] dt-bindings: display: ssd1307fb: Add entry for SINO
 WEALTH SH1106
Content-Language: en-US
To:     Chen-Yu Tsai <wens@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220330190846.13997-1-wens@kernel.org>
 <20220330190846.13997-3-wens@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330190846.13997-3-wens@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 21:08, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The SINO WEALTH SH1106 is an OLED display driver that is somewhat
> compatible with the SSD1306. It supports a slightly wider display,
> at 132 instead of 128 pixels. The basic commands are the same, but
> the SH1106 doesn't support the horizontal or vertical address modes.
> 
> Add a compatible string for it.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
> index 9baafd0c42dd..1ac016a2d847 100644
> --- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
> @@ -13,6 +13,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - sinowealth,sh1106-i2c
>        - solomon,ssd1305fb-i2c
>        - solomon,ssd1306fb-i2c
>        - solomon,ssd1307fb-i2c

Please update the allOf:if: blocks.

Best regards,
Krzysztof
