Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85C075501AA
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 03:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383221AbiFRBaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 21:30:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235547AbiFRBaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 21:30:21 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 002BB6B082
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 18:30:19 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id i15so5206289plr.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 18:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kccO1sMt4IVQr6gw8NGeYzykFCi2kqGNpB812cIxBxQ=;
        b=Ioe5DkyWJUeiwfoMr7ODaDKGOesLncavP6wtKSksJhHVKrDVOXesQ0nqm3M2VNRMTX
         HCzrQOQHFlgjq9HVLmGOcyH8Ofc5weCssmQqWl3CvELT8LuSt6N3O/a48rBLHG1l+Q1V
         rRHG+2hYR5g+QlL2bCVnFPVsWVNTUAs40w6Edon0+xyj/NfoMbnSvNYUeqLEifMUySa8
         u4c6DSZBK76Vxw8Vcj7Hp1ucf4yVYNl5JQQopScaE8cB8cxp13rMev5/L2vH/1B64sMa
         l5boefw0GopANX4I/3v8I4Vb+9wmJAtL1BXYvIumfUZVCmKzZ4AKqYSaqiNgxj2KYr8h
         2WxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kccO1sMt4IVQr6gw8NGeYzykFCi2kqGNpB812cIxBxQ=;
        b=153slWL1DDJCse8ifTawU1nJ+hC4C2gQU7OK1D6Vh8cMdtTlGbpatVADDT/YCrDxTT
         eRANqwv0l+pX2mdL2AQn1ZKHS5O/uNekma8IoWPCZN0Z0R2Md3KbyAou4HUR8NSOndFm
         X8MZRPdTB4Vd9lfIC8/4dH0d35x5zV09z2GHwU98TdroJvDpTObrxZ8AqGl11cynUHid
         KJHkFo7w0Jll3kfFFAta5wMP16e0kL8ALZxiNgZVhFL/CAEyuoK+mi7m/KrAzLmNqyKL
         63Wk+84QW+NWtO+E43+9+GKI9c6feeWzTQ9fH/1cOCoBnRE88dHHkVgHdh7mLaK56f+m
         mY/g==
X-Gm-Message-State: AJIora8gwZAU04cl9zgLu05ucqIQxfMbk/VziLHVyfsMP+/QXtSq7h6a
        ecmXoiZAdaAmdjr+XMCQekuYTw==
X-Google-Smtp-Source: AGRyM1sBVJ08gwwl+dJAYTd5lGbcy+Oefegkj+zaP8dzefkur/3JBpSgRNNzTpRceEfMuwaL/ag7og==
X-Received: by 2002:a17:90a:17a6:b0:1ec:74e4:d7a3 with SMTP id q35-20020a17090a17a600b001ec74e4d7a3mr6495840pja.115.1655515819514;
        Fri, 17 Jun 2022 18:30:19 -0700 (PDT)
Received: from [172.31.235.92] ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id j3-20020a170903024300b0016378bfeb90sm4157527plh.227.2022.06.17.18.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 18:30:19 -0700 (PDT)
Message-ID: <8959f1ae-22e4-7a21-2fe3-4b668d83ee97@linaro.org>
Date:   Fri, 17 Jun 2022 18:30:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] dt-bindings: usb: mtk-xhci: Allow wakeup
 interrupt-names to be optional
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-usb@vger.kernel.org
References: <20220617222916.2435618-1-nfraprado@collabora.com>
 <20220617222916.2435618-2-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220617222916.2435618-2-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2022 15:29, Nícolas F. R. A. Prado wrote:
> Add missing "minItems: 1" to the interrupt-names property to allow the
> second interrupt-names, "wakeup", to be optional.
> 
> Fixes: fe8e488058c4 ("dt-bindings: usb: mtk-xhci: add wakeup interrupt")
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
