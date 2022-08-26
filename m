Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A76225A2DAE
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 19:40:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241831AbiHZRk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 13:40:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344930AbiHZRkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 13:40:23 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FA7FE0E6
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:40:17 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id q7so2888541lfu.5
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 10:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=OTdc27ee6jSrb6BUWefWgtonG87QJUY3qmhGjbQcM9o=;
        b=RXmV26SRp6JLrCtA+SI6m7ulgY5sVdkzCAeNCuwfF+qmPjgknJENdubUmhtapnYta+
         P4aEeukQwfu2z6s2CP+hHyAE+ft4N9uWPhv1Ta84x/KsOCv2WYmyf/B0E1PsBMuBw0xZ
         Ci1aPK9D7DPbsAczrbVCmb/2govUqFOBsZl3pnsa0f2tgsUYsBD5PtDBMCBg31Mq9B5o
         DjgFFcKZxBq7D8nA9vk5bPvVgCexttrcbYrEqa8UEiRDtn+SLA8kS+O5m6utB1NZqYqx
         rvuAWtnj2uZkTETPDZ5G8G9uuCaxFfW9vRm2XAH+uTPfCWPY8Zrvwvl2ilH/uJn+yBhk
         yJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=OTdc27ee6jSrb6BUWefWgtonG87QJUY3qmhGjbQcM9o=;
        b=hR81Q0auucMT416eGfCqA8ZDD+pWqFRoBfLrCpn9FKkqwR7Bj9qTsnxMw53xaJm1CZ
         uMMbZG03q/31mryI7IOcI3/8lHqnr9i3c3z0emQREUwqFL3OdmpYI1cMkcpA8hyg16Wa
         vEix18C6oL8LkPNtdNBaVeNEuDATzQWJOyZK7gKqRYQeENADGTfvGdz9AcYHDxkGZT8K
         ifAHBoPIBF5EFePbSwcmrlucsGEY18LLVEYJOyCy3QgWAYJKz7YtifsWAq+lFyDOQvis
         pzQbrbtXOrDiaX6b4c8RlbyH9BXgiLrwQ27NUy/E1gCF8qEesALn7jgeMIA9GAa3Dj2x
         VONA==
X-Gm-Message-State: ACgBeo1tblkkEg+61efBhSxaEBV88tgJjH5S5YOYgxFtNqqnxDmkRtkO
        rYziONoNahofO7iogDl4yZG4uQ==
X-Google-Smtp-Source: AA6agR7LN4RGaM5qPxnsCAzc7OIKFH1FnfWKbhbLHWggszDp6UWrWAHHSAubsHoPD0z7IhpDHQRdpg==
X-Received: by 2002:a19:9149:0:b0:492:cb89:ecc4 with SMTP id y9-20020a199149000000b00492cb89ecc4mr2619171lfj.447.1661535614991;
        Fri, 26 Aug 2022 10:40:14 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id o10-20020ac24e8a000000b0048b08124139sm431721lfr.177.2022.08.26.10.40.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 10:40:14 -0700 (PDT)
Message-ID: <fd2c9ca1-5ff6-3c45-fc10-90167c413061@linaro.org>
Date:   Fri, 26 Aug 2022 20:40:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] arm64: dts: meson-s4: include meson-s4-gpio.h
Content-Language: en-US
To:     Huqiang Qin <huqiang.qin@amlogic.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, narmstrong@baylibre.com,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220826122338.2452433-1-huqiang.qin@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826122338.2452433-1-huqiang.qin@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 15:23, Huqiang Qin wrote:
> In the future, meson-s4.dtsi will have some nodes that need
> to use the meson-s4-gpio.h file.
> 
> e.g.
>   * Bluetooth enable pin:
>     bt_en-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
>   * Audio mute pin:
>     spk_mute-gpios = <&gpio GPIOH_8 GPIO_ACTIVE_LOW>;
>   * ...

Then the header should be added when the need is implemented. Do not add
unused headers to files.

Best regards,
Krzysztof
