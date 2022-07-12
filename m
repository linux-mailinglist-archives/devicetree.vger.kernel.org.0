Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFF82571B2A
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 15:27:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbiGLN1I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 09:27:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbiGLN1H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 09:27:07 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 240DFA2ECD
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 06:27:06 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id z25so13951404lfr.2
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 06:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gq0wH5vmV1ZhzQHv6wskPp+9rbt497AshKhkdFthSS0=;
        b=i1cZitI/qU/uF8X/S6ILySXGVoa8rPF1QiqE8qJ2k7Px78NE2xf59hOcFwr2cpi+Qj
         uzZmHhup+VOOjaWZfIsBVADPtwZaKD5wFvJm5CXmQUcJwcgy7AjK+06HKfBuOcLSBTgp
         J0WyMoC1eEn7GDaUixgZub2AqdSQAC9CDKzFIAI6JufOu+YBxo8VtcleIeIcXjLzfIkM
         7W8FBDtA+I2c9sBz9J9yJwDt/+s5aPz7N216da+j7m+f8SGs4wEgvkLNnhV+rR8H/kWD
         NvzydLUL0eTXpNd346BwTU3OvupYjWrnngDw6YQ8ThFywTW491e4L1qXVCwYe62y7AXm
         yHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gq0wH5vmV1ZhzQHv6wskPp+9rbt497AshKhkdFthSS0=;
        b=giDhLk/K/qG6iONrAKNw/ekZL3ZXWSvcZqK9IwTRnj9MgC1hEjz8mUgb1rs10RdbF5
         ZvQgF+UKzuuVy26enfUdoqkSuMN0ixmajvx4ozAajBgzHQGL/5eEBp06fnEdMrVZmpin
         0NPdvHUNO0CfgEcKW9Ejk9n23knR93zeqyJ0YMxdePOEYCu804QcQEXHiHyRJcEG9IKz
         V6Au13sALRDjTzjm2Wp2WTwCg8d+8xrJThwM/Df1h1093LpIs7sOvFnuocnCsqwDIfta
         aaF9HUksKrahANAMPYtv6O/V38a4IEugFB0/ThbY6KqivD7b8coTaYjgz6BwjCh1Nr+L
         wS/Q==
X-Gm-Message-State: AJIora/hRgh9gnniLzI1kx+QL6O6sF3cN7YvpJIuL+hpflplnTMIBs3R
        DsdofCXClH+5J0jQIp0sgfcaqzDu2XeVu0ok
X-Google-Smtp-Source: AGRyM1sWm1BNKGI6GSzhbgEXcdu1G7LjnBhmE8T3/83bialcpt43Sgg+e1hc5ScPFpCXCi3CfVdO1A==
X-Received: by 2002:a05:6512:3125:b0:489:f4ba:d5a9 with SMTP id p5-20020a056512312500b00489f4bad5a9mr1800051lfd.348.1657632424490;
        Tue, 12 Jul 2022 06:27:04 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id h23-20020a2ea497000000b0025d5889d19csm2448568lji.38.2022.07.12.06.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 06:27:04 -0700 (PDT)
Message-ID: <b1829902-c271-a677-f423-99dbc85cba89@linaro.org>
Date:   Tue, 12 Jul 2022 15:27:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 0/5] Add support for Xiaomi Poco F1 EBBG variant
Content-Language: en-US
To:     Joel Selvaraj <jo@jsfamily.in>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <MN2PR02MB702415D7BF12B7B7A41B2D38D9829@MN2PR02MB7024.namprd02.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MN2PR02MB702415D7BF12B7B7A41B2D38D9829@MN2PR02MB7024.namprd02.prod.outlook.com>
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

On 08/07/2022 13:12, Joel Selvaraj wrote:
> There are two variants of Xiaomi Poco F1.
> - Tianma variant with NOVATEK NT36672A panel + touchscreen manufactured
>   by Tianma
> - EBBG variant with Focaltech FT8719 panel + touchscreen manufactured
>   by EBBG
> 
> The current sdm845-xiaomi-beryllium.dts represents tianma panel variant.
> 
> To add support for the EBBG variant, let's split this into 3 files,
> - sdm845-xiaomi-beryllium-common.dtsi which contains all the common nodes
> - sdm845-xiaomi-beryllium-tianma.dts for the tianma variant
> - sdm845-xiaomi-beryllium-ebbg.dts for the ebbg variant
> 
> Note:
> -----
> Both the panels are already upstreamed and the split is based on them.
> There were patches earlier for both the touchscreens, but they are not
> accepted upstream yet. Once they are accepted, we will add them to
> respective variants.
> 
> Joel Selvaraj (5):
>   arm64: dts: sdm845-xiaomi-beryllium: rename beryllium.dts into
>     beryllium-common.dtsi
>   arm64: dts: qcom: sdm845-xiaomi-beryllium-common: generalize the
>     display panel node
>   arm64: dts: qcom: sdm845-xiaomi-beryllium: introduce tianma variant
>   arm64: dts: qcom: sdm845-xiaomi-beryllium: introduce ebbg variant
>   arm64: dts: qcom: Makefile: split beryllium into tianma and ebbg
>     variant


None of your patches reached recipients and mailing lists.

Best regards,
Krzysztof
