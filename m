Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD64260E3DE
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 16:57:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234501AbiJZO5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 10:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234443AbiJZO5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 10:57:16 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B292120EC5
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:57:05 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id z30so10665532qkz.13
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H6Eev9tNY1EscvH33xpILTCRgvvIkcCo5fp9pBkfKp8=;
        b=m5C802ytAi1yN6R+djCEaxTwKcotMupBTDIO274nqvY1eZdUdsqBOGHxfWnI8xbmHn
         fGx+40jhXY2iZIhtqvCBILEfdu1/AIeEJZ9g+DOjzRFxUwOZCQXFzGJbDWN6yb2lQjZC
         ATW9ABu1qGT8J6nB591VFxbFsPeQiWsYt+5WD8dK/aplCErYvYtoVNwEbIxzXxVhATGg
         lZ58Z1Wo22DHv08xmeCe1VJYMZ+T/p5IpjASEBeih4myp5O4mtgwZZAvyt1+mV+lfN4f
         7r2MP6uSLlpK8j9IpiiHr+2udJrY5F52fAvvd4JYMqTJE/CoW3XbOtKheMZfL0E/sslv
         dQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H6Eev9tNY1EscvH33xpILTCRgvvIkcCo5fp9pBkfKp8=;
        b=2SDyW5rcdcop7+hUo4GLduDYXzlXh0yyz2og07ANRO1++IrTFMRWEb1GnjL/x5Nbst
         SY9aMf/P7Bmv2A/qxHczc4TMnCTq3e3ciaOpPgoLjAJIhKcTlAeRnKH7tzr/X/jms5Pt
         9RHkkaiatMTteSNNr7sM2fVJkHGaHCH/YguwXMp3ju61jrNBgbsUGp7qoNNzUcbRExio
         eqcOiJmEOF+k2mFOZSrKWQ9pRTLUQ9o7dR5EyII2KTbdSgiU5lg7kjQP2u4GKD8LEnLj
         AoUruAQJ60uGSOcTx6x6adoOIeIqVwo1Ta1tDS5WjDRzWS1VQGkfvE48zMI0Wl4/0vHt
         1gFQ==
X-Gm-Message-State: ACrzQf3y8Gz8x4AsK38JnX7tPY+6Zx/393hdBr2a9iE3DJmCcyLHNww0
        GMYTL/s64aOrbSZYwxL2kw2BIcCp1LF0+A==
X-Google-Smtp-Source: AMsMyM6x/mkMzmJyWpbQqAZPzcgsywdXT8wCsrEckQU9qfFg2x7F6MjMaHwNDxr0UoDFRGeW1Tk1dw==
X-Received: by 2002:a05:620a:c12:b0:6ee:d3d0:fe20 with SMTP id l18-20020a05620a0c1200b006eed3d0fe20mr30450314qki.470.1666796224582;
        Wed, 26 Oct 2022 07:57:04 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id r11-20020a05620a298b00b006bba46e5eeasm4233394qkp.37.2022.10.26.07.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:57:03 -0700 (PDT)
Message-ID: <ecd2a50a-5017-23bc-7da0-73a5f240e97a@linaro.org>
Date:   Wed, 26 Oct 2022 10:57:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 1/4] dt-bindings: display: Add bindings for JDI
 LPM102A188A
Content-Language: en-US
To:     Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jonathanh@nvidia.com,
        arnd@arndb.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20221025153746.101278-1-diogo.ivo@tecnico.ulisboa.pt>
 <20221025153746.101278-2-diogo.ivo@tecnico.ulisboa.pt>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025153746.101278-2-diogo.ivo@tecnico.ulisboa.pt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/10/2022 11:37, Diogo Ivo wrote:
> The LPM102A188A is a 10.2" 2560x1800 IPS panel found in
> the Google Pixel C.
> 
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

