Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C28C235F46D
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 15:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351078AbhDNNAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 09:00:39 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:36367 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351017AbhDNNA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 09:00:28 -0400
Received: from mail-ed1-f70.google.com ([209.85.208.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lWf7k-000187-Tt
        for devicetree@vger.kernel.org; Wed, 14 Apr 2021 13:00:05 +0000
Received: by mail-ed1-f70.google.com with SMTP id m2-20020aa7c4820000b0290382b0bad9e7so3289778edq.9
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 06:00:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=irHnM0N6YXz5tYQ++DF6/Rjy5fbDV4uUdW4SKyf56fY=;
        b=FQRJyMf5uQ9HljjUHm1/IXx0qGpsNZHNbZuIb61Oy4RDYXM+ByEHp556Ru6s0Pro8L
         v7WO/p5uVY7aH/+GeyQovotf6LsBMVUBEAgeGZiwwH3+Dw6YiQYcWFCjJGA4Q6aegyXV
         c9RKtpxC5weotJ3a2l5nowAVo/wQfkjWAUrbvS1Zs2OQ0V2xaJM6TO5fAWLGYmDqxk+L
         1/A2JS5hlDtCO4DBcEv+xRolmUnD/vsjDalxELR6kHhLGMQ+xFDI9REIxX6AgbDWJRjO
         5wZ8+sHTs1dAywOoXs368N5NdWi8NI6rqbxxbxibu+A4CczLvwJkCHb43+uOtKheQOEz
         JFjQ==
X-Gm-Message-State: AOAM532Hduq7MnJSnuBotZWARtNZnCv8mxfnZ53uliQa+qybfmiCT/mq
        yIzB9O33LihspKfXhgbdcBlCxcyy0LbHbtNXlazrU6qKELT2C9/iYmzD8b161ydTly/8oe+0h06
        R/+Sih7p98ZIOyd9dEYldbqYrVycO4vpTxIus8dk=
X-Received: by 2002:a17:906:af84:: with SMTP id mj4mr18235700ejb.195.1618405204470;
        Wed, 14 Apr 2021 06:00:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxTkebU3A/QNq+HZhYySOXaAmDUrYhKt4+4jSXk3XZFDrf7d4xCgORuv00qre/OyoVQMCTqzA==
X-Received: by 2002:a17:906:af84:: with SMTP id mj4mr18235656ejb.195.1618405204218;
        Wed, 14 Apr 2021 06:00:04 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id gb22sm9891595ejc.78.2021.04.14.06.00.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:00:03 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: imx: Add i.mx6q DaSheng COM-9XX
 SBC board dts support
To:     dillon.minfei@gmail.com, robh+dt@kernel.org, shawnguo@kernel.org,
        krzk@kernel.org, linux@rempel-privat.de, s.riedmueller@phytec.de,
        matthias.schiffer@ew.tq-group.com, leoyang.li@nxp.com,
        arnd@arndb.de, olof@lixom.net, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com,
        prabhakar.csengg@gmail.com, mchehab@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        linux-media@vger.kernel.org
References: <1618383117-17179-1-git-send-email-dillon.minfei@gmail.com>
 <1618383117-17179-2-git-send-email-dillon.minfei@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <6d8a5d4c-b741-dc7a-7cfb-eb66a642cb6f@canonical.com>
Date:   Wed, 14 Apr 2021 15:00:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1618383117-17179-2-git-send-email-dillon.minfei@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2021 08:51, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> The DaSheng Com-9xx is and ARM based signle board computer (SBC)
> featuring:
> - i.MX6Q
> - 2GiB LPDDR3 DRAM
> - 8GiB eMMC 5.0 FLASH
> - 4MiB SPI Flash
> - USB 2.0 Host/Device
> - Multiple multi-protocol RS232/RS485 Serial ports
> - microSD socket
> - 5V DC power input
> - HDMI1.4a,1080p@60
> - RGMIIx1 Gigabit Ethernet
> - CSI0x1, connect with ov2659
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
> v2: no changes
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 297c87f45db8..24bdfbd4853f 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -206,6 +206,7 @@ properties:
>                - fsl,imx6q-sabreauto
>                - fsl,imx6q-sabrelite
>                - fsl,imx6q-sabresd
> +              - ds,imx6q-sbc              # Da Sheng COM-9XX Modules

You break here the alphabetical order. Should be after dmo,imx6q-edmqmx6.


Best regards,
Krzysztof
