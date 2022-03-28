Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53BD94E9F37
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 20:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240633AbiC1S4f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 14:56:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239998AbiC1S4e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 14:56:34 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E72DDF17
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 11:54:51 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id bq8so16646335ejb.10
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 11:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YKoR+e/GrjM52E8G+JTTcFwNtFZ8/9KHD/VDYOBjeO4=;
        b=lSnavIs0cbxkKsqn9Nw3BRst/v8KBYlIgL2teGdykuDbE9i+S8zkrm+0WzoKww5d4P
         +NMXGRFq7Ezv3HmEKgAX2ZjnQmYsQaSlOC+plRza2K9sqOJ78ODD8ahMpGDjT2UukCNh
         Wg1RUFx4kmAxsz9KQpvWe+psLy0koNsBh2wT+6rC71UWCOW+KYj+HvrZ2QKFOlDKrcQA
         4i0ofcJyByEsbCvwdpUC8X9aZT1PXBkaPqLfuBQFEtsHrXV5PI6xXZUYwMS63UPb8VAu
         ts9VmdMrx5IIQsnHodQmcHzPeC0PnjZyruTHm9ZXCyYPqWbV3x2GThsufEKhRktTMfuA
         WCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YKoR+e/GrjM52E8G+JTTcFwNtFZ8/9KHD/VDYOBjeO4=;
        b=b8KMmOjs20NU8BoGGQhx6TJvxbOI/e+L6lgU26Fc2knD5WPupRAVEndCtrb02vfZF6
         4xS3ZwmXhaiI9aOTKGa3iOWstAV30YBoyNqpVeug70kBaC+uF7dOhRRtCIxuWNNWAutD
         pFwwXDIFBcCp94YQJFfGXbsJfY+QjDaEBYJKwhEM6/bws2pkbbv2y9+ov2t3OnyHPf5H
         8Gzec8qIYgACVcmYFcIxsKN2f0r4WIfe+kYYG0/HTZ5pRk2VFmNZmIY31gZPVnLYEDku
         niFH56ZZPuNWwRShd1HdOTgeo94nqgUqkJsQiKKld4lmoa1TlcA39F/5LBHCyf2Ffzj2
         Eueg==
X-Gm-Message-State: AOAM530aqfPGX5jONHx5uuGAGuE/Glm4+K1Br7Uxx3OfZdCDj35m+0aB
        tr0H+uOBS/SQbf2hfnYfdvDT2w==
X-Google-Smtp-Source: ABdhPJy5sAnHNkVsyYYVNVCfDMiIWt0TETihQMnruxrz0QAoOlYixizv0GXli5vsFsvsJy6Yyekn3A==
X-Received: by 2002:a17:907:980d:b0:6d6:f910:513a with SMTP id ji13-20020a170907980d00b006d6f910513amr28118362ejc.643.1648493689717;
        Mon, 28 Mar 2022 11:54:49 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id g13-20020a50bf4d000000b00410d407da2esm7508561edk.13.2022.03.28.11.54.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 11:54:49 -0700 (PDT)
Message-ID: <43fe2864-5d11-d562-25a1-a2c92ee76f8a@linaro.org>
Date:   Mon, 28 Mar 2022 20:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/3] dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply
 as optional
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-3-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648433152-23126-3-git-send-email-hayashi.kunihiko@socionext.com>
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

On 28/03/2022 04:05, Kunihiko Hayashi wrote:
> The usb-device doesn't need "vbus-supply" property, so the property should
> be removed from required.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
