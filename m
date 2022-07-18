Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 678B7577D06
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 10:02:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233384AbiGRICA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 04:02:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232898AbiGRICA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 04:02:00 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E99FD15
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 01:01:58 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v16so8952wrr.6
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 01:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=EK/PyrCNkBnlX66xu/A86VOtZLOGQOnQ3EAsI4jwwLs=;
        b=E/xeUuNs05KUVADZyJyNFUpKuJxRdu9NEFLMOZCBcuN952j/Owkme851aSvCKNGbTI
         J82pNKaUZXW3MsXfgYQkmqYPtSSJRpnlnIKW1x6ZXbsHb0QgX/4a7Y/Nl8QEG8JfdyrX
         NxF2jaTlYAQL/ftGR2uVIoyjx7hIbhS2IBdKUkYSWpMZlvIjyuXBK4LF3T3WAeD/37Di
         qR6hhfA2QZgCGfuRR5PK5Nb9girdvMVAY2f8Z29sfAvoAzz1jjp/Z6FRUDdtqW4xjJcu
         UZo6H8KySzH/MzRnoxUadpkyPBoUZ6hBepSGg/z4fIxR8vY2An1ILVTGNJvk3B+haKIJ
         YJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EK/PyrCNkBnlX66xu/A86VOtZLOGQOnQ3EAsI4jwwLs=;
        b=B5kqyelrZdWhh6g33d/aidoiVQB/2kQMf/yJfb3AmyWCNQZSIuXPZWL12+CUUHEVww
         Io4niZft0wGEDBONzWVkBygvQ3ZXxoVNh66AohiqpWioVeucMvmmIHbCD8gvq25AQlF8
         XPFwHB8I6vZZAiRRk6CARw+IkrBbw/sPQzIkyFPtjt0Z7KYYgW6wKZVmnnwUEzdqqefp
         eZAInhsxCLvgmLSLhf7KHt+GXH0+sEqm7Jbpgg54+M4QBdcv+5HPaAMBAtuGV3qd+yHL
         /mo03LGWK0BI7n5vOAGen8T9f6QsEz4Dk3xtAsmeFGfatsuBIxjsvi6djK3R4BurbE3v
         Pamw==
X-Gm-Message-State: AJIora9HkYeLtXNEjbb5jfcAbFlrQwYLfnmSUGBhvbmwgZcD7oi1cY3q
        mTcseSISAI0CmhWpR5NGfj0qjw==
X-Google-Smtp-Source: AGRyM1unlywfMyuuEeydp83qp+LPcuTnNl9wvgjw97RxHNFjcTn8eB3huN0ScUhpFPsixl9pOgD0Yg==
X-Received: by 2002:a05:6000:2a7:b0:21d:bbda:4fcd with SMTP id l7-20020a05600002a700b0021dbbda4fcdmr21765520wry.316.1658131317400;
        Mon, 18 Jul 2022 01:01:57 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id z24-20020a05600c221800b003a310fe1d75sm8681894wml.38.2022.07.18.01.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 01:01:57 -0700 (PDT)
Date:   Mon, 18 Jul 2022 09:01:55 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Lee Jones <lee@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 6/8] dt-bindings: backlight: Update Lee Jones' email
 address
Message-ID: <YtUTc4rUQLb6dYrM@google.com>
References: <20220714112533.539910-1-lee@kernel.org>
 <20220714112533.539910-7-lee@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220714112533.539910-7-lee@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jul 2022, Lee Jones wrote:

> Going forward, I'll be using my kernel.org for upstream work.
> 
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-leds@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Lee Jones <lee@kernel.org>
> ---
>  Documentation/devicetree/bindings/leds/backlight/common.yaml    | 2 +-
>  .../devicetree/bindings/leds/backlight/gpio-backlight.yaml      | 2 +-
>  .../devicetree/bindings/leds/backlight/led-backlight.yaml       | 2 +-
>  .../devicetree/bindings/leds/backlight/lm3630a-backlight.yaml   | 2 +-
>  .../devicetree/bindings/leds/backlight/pwm-backlight.yaml       | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
