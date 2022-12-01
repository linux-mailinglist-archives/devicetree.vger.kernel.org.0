Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C1AA63F08B
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 13:32:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231408AbiLAMcS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 07:32:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231394AbiLAMcR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 07:32:17 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E580DBA0A5
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 04:32:14 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id q7so2454514wrr.8
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 04:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=oxqmNG8QVZimK11GUSa3uC8aKzXNCTd3Uy233UpMikw=;
        b=brwGJiSQB2PgNAjfjeVDu2Lw4MXR3s7nddenvTEzsUvZVZpSThxWO2TuzR83KNl5fK
         whfr1WCo/41xOH9uRtOu3NhP+0vGJRGnHwE2Uv0J1RCcKN6TGIu+NjJLgTaHypV56Khj
         0nRxGt1XUJ4gZ5GabHNRrhqdzdEZW4Nhht0C0necxV2EM588kqp5SDnqTLHokxCfu1Uu
         cWIaH6d5iPBdWQviZ7in2WlrvUPYEgpoQi1NQNeGhESO79KEqc9AhlCB6RKu40EzchSQ
         4kOLf0xfYhxQtja1gXaPHrrP87i1EK5Y6aX43uwLnst81HsBGT5vTYBkf1Ryo/bT3Y8k
         ISCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oxqmNG8QVZimK11GUSa3uC8aKzXNCTd3Uy233UpMikw=;
        b=e1qZqsHVpoLf7YvcQ4UxU65E0qybClcz3sdav/h+jF1ffl5hE++jVHm1T0nR5zL+cj
         Y7yFk20NDjcDcv5vMh7/1tpurtZQX3nScaGSFgUYsUsFHFKsdthCZ5HHIidngBSLNvAL
         qN+dKVoIt6jfb5OpXojlm9l0IAhRSFMO+obD3IYhionj5Ww6GLT4dhjy0KeUr5RG1qVR
         q7T2noBUAfBtC2W5Pl7pCPTfhOhG3runGW1ve8+TKFIZ8/Uzn4Tbn24raJl22cgb9vWC
         6vWWmfLzWOvVCwsiU+VlxNSJe4I1yZsK83p9wE2co+A0+GJVJ/pCg6C6jlM7xdkH4HTU
         zDXQ==
X-Gm-Message-State: ANoB5pmrVjTokQkTFCbk80Hnw48VbPg10UBxiCXCmS5npwizBQlYwMhc
        4oTNwqaEJo8dskQJwlRC+Id53A==
X-Google-Smtp-Source: AA0mqf4Nr9iAQ6o9/0h2mpgVlskb2Nt6UNuURrnkxoah0H1FYMkvfzCFRPuJEr+vCGMNJGkDcVSSQw==
X-Received: by 2002:adf:ea0a:0:b0:241:fcd5:6b94 with SMTP id q10-20020adfea0a000000b00241fcd56b94mr22579342wrm.592.1669897933467;
        Thu, 01 Dec 2022 04:32:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bec0:73a:70e1:228f? ([2a01:e0a:982:cbb0:bec0:73a:70e1:228f])
        by smtp.gmail.com with ESMTPSA id l5-20020a5d5605000000b002367ad808a9sm4316424wrv.30.2022.12.01.04.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 04:32:13 -0800 (PST)
Message-ID: <16642605-2842-2210-440e-44f37cf06783@linaro.org>
Date:   Thu, 1 Dec 2022 13:32:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 1/7] dt-bindings: reset: meson-g12a: Add missing NNA
 reset
Content-Language: en-US
To:     Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc:     italonicola@collabora.com, Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Amlogic Meson SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson SoC support" 
        <linux-amlogic@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20221201103026.53234-1-tomeu.vizoso@collabora.com>
 <20221201103026.53234-2-tomeu.vizoso@collabora.com>
Organization: Linaro Developer Services
In-Reply-To: <20221201103026.53234-2-tomeu.vizoso@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2022 11:30, Tomeu Vizoso wrote:
> Doesn't appear in the TRM I have, but it is used by the downstream
> galcore driver.
> 
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   include/dt-bindings/reset/amlogic,meson-g12a-reset.h | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/reset/amlogic,meson-g12a-reset.h b/include/dt-bindings/reset/amlogic,meson-g12a-reset.h
> index 6d487c5eba2c..45f6b8a951d0 100644
> --- a/include/dt-bindings/reset/amlogic,meson-g12a-reset.h
> +++ b/include/dt-bindings/reset/amlogic,meson-g12a-reset.h
> @@ -69,7 +69,9 @@
>   #define RESET_PARSER_FETCH		72
>   #define RESET_CTL			73
>   #define RESET_PARSER_TOP		74
> -/*					75-77	*/
> +/*					75	*/
> +#define RESET_NNA			76
> +/*					77	*/
>   #define RESET_DVALIN			78
>   #define RESET_HDMITX			79
>   /*					80-95	*/

Missing from https://lore.kernel.org/all/98517f65e600cddf585e53d1ca98cbb7b0b43aee.camel@pengutronix.de/ :
Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

No need to send to send a v6 for that, I'll add it while applying after next rc1.

Neil

