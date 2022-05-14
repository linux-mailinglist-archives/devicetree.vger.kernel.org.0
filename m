Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E27D8527412
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 22:47:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235174AbiENUrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 16:47:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbiENUrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 16:47:06 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78987193D1
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 13:47:03 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id v4so13970598ljd.10
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 13:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vkIuSYKrz8ZFbqKShoYn2OhXNaHk2kJsQ+3uoygAFFs=;
        b=APBV9SdgfYvo6oCDhokyjtP48+lCreGBXG4/i+hM1L8ba8bo86yB8o8ax9iZVwoHwL
         wCvBCJ4HUiRW5DolwItjyIOPGoZg2rIsVDh9MnUDDtknWdPzCf48MwPx91WoiQTmlJgY
         7wPD8JUs5ZkhAzvIo6O/0JWi7aR2LyGniMgVI29usT/cuCkJ7CJ6voHJI/mMrub1pOLY
         74jIy3eXg9giusDuMZ4KFxAfFRq64qnLyenHRhRC5m5rc6ul6GTvwya5Kgn/r3chZJvV
         xvLLO+Ag/wn2b4VaBUlyymRxwU68wKUPeMCzSW/mfuAwxq/ZG3YdXN3E9erlliGn3qvg
         E4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vkIuSYKrz8ZFbqKShoYn2OhXNaHk2kJsQ+3uoygAFFs=;
        b=bMPqrKlJdbFkrKXtNZ0VfL8DkcXC6tyUmnf7g66YT6T/jAu+A6CCw9UR2qEGnvAXRa
         ZxZSLEyOLcSfEh1W1uGdO64VOU4eYsOqQDBE0YNC9j9ijtfxSy7OirgEia45vMm4XkjL
         QmOV/RBNi3t8nhY2TT4NGKuSmN/e+pdz4lQ2UxuE8gBQDSaVg/0eIHao0eiqCeUZAk0x
         lUspjSHi39DZSUrASRXklaGYE9wPoTEQpUXQWmYUb1qD3Fvt38fc8PLPuQ1f8PNiuiAw
         rB7fdRNd9hG9Nhx+UjVIrn0PejJrjObnIqNNIA7DESULycHHmmE/POfZsTkHKjX6qPLB
         QmVQ==
X-Gm-Message-State: AOAM531Bkdgra9p38qfrP+e0pBZxacBToaVlabwFrNCcsuhKVmQfAf/a
        teuhQwUCYVxqgWFc4QY3hG4vsQ==
X-Google-Smtp-Source: ABdhPJySoeQwgdqYdRztU+39p5R4ELYu4tHBxYUwxaMpHH5z47kDtFxgqkJ5Cg3iQweVN9R2Vw8jSQ==
X-Received: by 2002:a05:651c:a0b:b0:24f:4e42:3694 with SMTP id k11-20020a05651c0a0b00b0024f4e423694mr6407910ljq.103.1652561221768;
        Sat, 14 May 2022 13:47:01 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q7-20020ac25a07000000b0047255d211aesm807427lfn.221.2022.05.14.13.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 13:47:01 -0700 (PDT)
Message-ID: <8fbc6bca-1f48-3e09-32dc-f25a6eda2017@linaro.org>
Date:   Sat, 14 May 2022 22:47:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH V3 1/2] dt-bindings: rtc: Add TI K3 RTC description
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Andrew Davis <afd@ti.com>
References: <20220513194457.25942-1-nm@ti.com>
 <20220513194457.25942-2-nm@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220513194457.25942-2-nm@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 21:44, Nishanth Menon wrote:
> This adds the documentation for the devicetree bindings of the Texas
> Instruments RTC modules on K3 family of SoCs such as AM62x SoCs or
> newer.
> 
> Signed-off-by: Nishanth Menon <nm@ti.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
