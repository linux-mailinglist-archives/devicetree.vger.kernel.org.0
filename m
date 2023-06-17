Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E171E733FC0
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 10:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbjFQIwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 04:52:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjFQIwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 04:52:04 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3441E76
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:52:03 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51a21185130so1990774a12.0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686991922; x=1689583922;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bB2U9UJNGuntWbNrhEHRVmsURRct8gsXOHbMcYwpz70=;
        b=YQxduGMANuZklpLtUfhq9DrUYdCxs6pAk1NAvhKzy9hWuoRPbsH1nwg73I2w4yftUO
         3QM2XOPbD92M4ZC9hwi0rcFXFiFfojemhNIrDfL0PUAPhA+wz5Wejxu/FUUvKbuKFsNG
         juOaBAYopVSpzijb6IrRbeA/sXu1R3/be41kvRImbopaSqqkUMb1OVxq1R9WR8WZUED1
         vhDGLmaCwSU8Mem8xnVBvtLk6nkYAD2u+q/jdsXE3YgNESDZHOw/mZ/ox2u6iXmuGWGS
         okAgAfRG+yqR3oZGt7ymenC2i4HK5+aVJXL8Rb4U3OQM5qDAG1OdCNrbYHY69G8YNiZU
         69PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686991922; x=1689583922;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bB2U9UJNGuntWbNrhEHRVmsURRct8gsXOHbMcYwpz70=;
        b=C84gjGY/kflq2IEYrUNBkY737HTMK+JeZiiYlpeSSzO06wO/ZM1vLzFPCbyl03JuNC
         68Szyq2WGz0+ysa9mj7tG6NVTwmWJ+Grt8EVM+5u4wm982gM4xLzcjQ6xXdhTona4dOK
         gkkRfS4JI2K7rUq9CnO/U7WshyjTIeQaick4FRvX0KzYq6kiBjBNo6qPpI9A36zwa7Pn
         rkv+FNaSupljaelXv1H/W2rvPxkmpdVmvScJ/9UzCbiEZtzeIH37rkN772yar8qRneWv
         d+WHN6vkGXnU4X90iM6pnmRuBmc6I2sLWvaBhOIpQ2DAX7pX9piCcbSM1JzttVOHr8If
         RzQw==
X-Gm-Message-State: AC+VfDxyVGL2gQPuWbyePrR6XIit7CtYpof+3cVXWrRZY9NnI/VhWL3A
        hXooiN8wTlDlRIL7bp9jtHqk+A==
X-Google-Smtp-Source: ACHHUZ47jVgEROZ1LtZo+4fKsAWabEGtadZtaswTh6d+iai7QL4aCJpOsebvaKSuV/kdE4HUc6bl8A==
X-Received: by 2002:aa7:d7d4:0:b0:518:7954:d082 with SMTP id e20-20020aa7d7d4000000b005187954d082mr3220697eds.10.1686991922181;
        Sat, 17 Jun 2023 01:52:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r13-20020aa7d58d000000b00514b2a9ce60sm10742423edq.81.2023.06.17.01.52.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:52:01 -0700 (PDT)
Message-ID: <958c6d46-d713-e701-29bd-f84d2b8790a2@linaro.org>
Date:   Sat, 17 Jun 2023 10:51:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 1/6] dt-bindings: display: st7789v: Add the
 edt,et028013dma panel compatible
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
 <20230616163255.2804163-2-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616163255.2804163-2-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 18:32, Miquel Raynal wrote:
> The ST7789V LCD controller is also embedded in the ET028013DMA
> panel. Add a compatible string to describe this other panel.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/panel/sitronix,st7789v.yaml      | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

