Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64BCB65746E
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 10:07:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232634AbiL1JHT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 04:07:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbiL1JHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 04:07:18 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8141B7E1
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 01:07:16 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id b3so22830523lfv.2
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 01:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oh65FXjCWAwyP79+/vrzZvQeGGHMxBBP8jJk770rSK8=;
        b=pXOWDmBhmA6HC5EVCNFeArfhGxQe+kMSdPJp/1XqA9ZWx02rTeEGlv1QzAUeWw54rb
         Pe4UksIILEv78JeARhLL6iR4d/KfK7pVsXveKAzHUXTIzswkWidgBT6T6uwsDMiVYJJR
         cDf6Qd05db5zsG9aNgef3LSRPGj9/kK48ef/b8ZDrELwUQOq0lHbef/JVJol2hMwIR0b
         F/Ay3jqY4fyh806VruaHb+bNO/TwUJCtGa3dr8W982qHfXU6z0K8MSBKh0DE1fxxfALW
         mGY8O8OAIPL5YIopfl0rx5oeOvM0KJpUbWVpnVDCDzHfzpYqYr8RDxFOayrAF03vRRA2
         VbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oh65FXjCWAwyP79+/vrzZvQeGGHMxBBP8jJk770rSK8=;
        b=lMn/jDlodEz26PZzA2dIokkJvkgXhd8Joajmqabaf+H9u0adIr70ZxN3YIoeZ68FjT
         sEygmbW/dd3u5xeCaMn9fQhdljtXCdDuW3oPQM+NONZhW/5IEbiKFiWkcLMJ4Xmkp+NY
         FrDrh1H87uLvmC3u/cfdzEeMIbnYIpHUNyUPVwBRhr8spYFdoM3oDORpq7apBhUt6jy8
         zfQ+oQgRfGqtnhbPwoS8jkD/9VuL6HkqnojmmDZP34PR0mCvaABpC5qmQ17nKXK3ssbx
         nIqcLgc9XslHVsIU5k7veJpAUXt/0WpLd42LhUp1fPcAvIKNwz1PDvNHuWpEFyrPasIH
         L4zA==
X-Gm-Message-State: AFqh2koYaKZsyjo0eVZziYLlOjaQOdvKJIN8Fw25Gr1/rjRfvqFd+jQs
        YVnF+PfB57a+snzde4LhZI5IDY9v+yB0pgYl
X-Google-Smtp-Source: AMrXdXvjAOViEM8pna0LEosao806X0PY7+H/x6mLffTcWoSQnbPPML/6Cl+0YwP8cb3h4eWFo07euQ==
X-Received: by 2002:a05:6512:25a2:b0:4bc:a66e:9aa7 with SMTP id bf34-20020a05651225a200b004bca66e9aa7mr6623846lfb.6.1672218435095;
        Wed, 28 Dec 2022 01:07:15 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v14-20020a056512348e00b00497a61453a9sm2578871lfr.243.2022.12.28.01.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 01:07:14 -0800 (PST)
Message-ID: <c4046ed8-f84c-f1d7-2687-7e5c00b1304b@linaro.org>
Date:   Wed, 28 Dec 2022 10:07:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: ARM: dts: n900: switch accelerometer to iio driver
To:     "Sicelo A. Mhlongo" <absicsz@gmail.com>, linux-omap@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, tony@atomide.com,
        devicetree@vger.kernel.org
References: <20221227223841.2990847-1-absicsz@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227223841.2990847-1-absicsz@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 23:38, Sicelo A. Mhlongo wrote:
> [PATCH] ARM: dts: n900: switch accelerometer to iio driver

That's not correct placement of title. This should be in the subject.

> 
> The lis302dl accelerometer is now supported by an iio driver, so the N900 can
> work with modern iio-based userspace. This patch provides the required dts
> changes for the switch

You miss the actual patch here...

Best regards,
Krzysztof

