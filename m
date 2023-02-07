Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64F4068DD05
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 16:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232147AbjBGP2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 10:28:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231383AbjBGP2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 10:28:47 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE6C10275
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 07:28:46 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso11759367wms.4
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 07:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kO3g6tMzeksffKItSMhNAfHH5Mpd7ePKisYPK9hzGZA=;
        b=dl/z/Tb4LsogbIi6ENpWJYW69dvAzo/eaQY7ZbHPrPKC5qgjTViA3+CLv9j4R2Z74P
         4h/FGuMZc4f5ZHfRawSLOiO9DibjiQ2D3082ZYe4Anw0OlaWUzMkBk4ihEEIT+QHfg+M
         cDI+KbilrRJ7RjlMRiTCAjUMiJFNAm0AsYVlDsUTDbSViFAAsiKaiC0WcNlTJ9a2FdSK
         dR4tH5SCgE7vjOdZ3Sjbs8wU3BdlMByocIHOSW9PU3K37WfpRD9vjW+X+U60o4hmKOgm
         nL8XbGM0UcKYwQCZZUnUK8GdayJXekKNMMz2M1xmaVW1D5pkMwEWPlq6MkTGEurdkxnH
         zKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kO3g6tMzeksffKItSMhNAfHH5Mpd7ePKisYPK9hzGZA=;
        b=1tA/Q2Ycvn5b2mjS307O+kEIFUc0uMWjYXd3m6UGm/iZPVWhYRLSZlxzwxlxebyP0E
         n7k2DNg+Z5bQPuFsbhqBJrVAnM3q46fpUmDMEwZZDvBpDLsmU+N0mnEVTI1GkoxnSQbZ
         GhqxtJT+yrSySVKxVW/xj3VYeXnn867D7s5oqRW5lDOOGAQUZiXIVlqJVFBlJM3V4mIB
         xokteDBtUbPf/xGByeYfNr0epF+0+4lJ2dIFohc1JiPnZ0r8ZIXW/oKGMpJsDLHwmRFE
         kip8A7cEpE2J0O39PTB/znHKrRNrLwR887wsglbCGMNs4YULVLlZjbNPQ8CVYD4whsRV
         kexg==
X-Gm-Message-State: AO0yUKVyBAEqseTA+c7oX69qK1qpL6qHDtj+U0TjjERvkJh9p/dh+xiM
        2LicXaJ/qWN3glv/GfTxteBaMw==
X-Google-Smtp-Source: AK7set+1ajp6SAml8UxWiVQB7HudkRig9quzQFy6PDGQW+8qnJR3N3QvWDxd3OFTjwRRNy3hna0gFg==
X-Received: by 2002:a05:600c:2b46:b0:3dc:50dd:361b with SMTP id e6-20020a05600c2b4600b003dc50dd361bmr3374354wmf.5.1675783724981;
        Tue, 07 Feb 2023 07:28:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id he7-20020a05600c540700b003df5be8987esm17200336wmb.20.2023.02.07.07.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 07:28:44 -0800 (PST)
Message-ID: <db2bdbf0-7e43-d8e7-70f8-532021a15c35@linaro.org>
Date:   Tue, 7 Feb 2023 16:28:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: display: panel: visionox,vtdr6130: add
 missing reg property
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230207-topic-sm8550-upstream-vtdr6130-bindings-fix-v1-1-0ba2323420c5@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207-topic-sm8550-upstream-vtdr6130-bindings-fix-v1-1-0ba2323420c5@linaro.org>
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

On 07/02/2023 11:04, Neil Armstrong wrote:
> Add missing reg property and update example to add dsi top node.
> 
> Fixes: ef85db911134 ("dt-bindings: display: panel: document the Visionox VTDR6130 AMOLED DSI Panel")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

