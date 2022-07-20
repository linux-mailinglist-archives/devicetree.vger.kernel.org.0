Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1A1A57B6F4
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 15:03:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238818AbiGTNDd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 09:03:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232958AbiGTNDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 09:03:31 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26508528B5
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 06:03:30 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id p6so21027004ljc.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 06:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oS9S0ewjWGe4uqnnpaCel1o8MvWZNDvKgAm19k3XX+g=;
        b=H37uszrJW67c+UkJjrwbxG0D8SLe6gn5lw9zrWXJ13I4daTrldbqF7UQTd94IcNujL
         jrrzG7L2TI8KonkNoAJtsa+ks/6vUNZs5gxMkHaAb4kdARoeFNAUHp7ADWGVh/gCWt6T
         NqF875MtNhTZbPmvLjQrn7uIsOj3M1Nmf4x+pLOvvZvud8YaPvkVBny7lAlDfFNk70wD
         hOQYCFVm/tgeVEK9FBfpHC5KG/l1i+ZcjEScTfn640sp7h0v993GMFlz099yj/qfIeq9
         Z50W2SLnUCMENb/G0Crmvr4DWH5epLDhasogjJ/JdreCRBAx6Q1g9HRwCEaZyjXW/yPK
         VSCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oS9S0ewjWGe4uqnnpaCel1o8MvWZNDvKgAm19k3XX+g=;
        b=BUF8bUUEyLPOAzL46RxVKQWH1ZstkZtK4jctPVeEDNCjG4TAjPaNg0Dz/bkKtRr1EI
         KAxGZtC7et5C4YKpgOEdrOCzWGgpHlLMwv1t5JGuWlM1ExCoeKn5E1ZceVR5x6+plSM0
         aSAQ/SrzTNRpuadwfqLlJSfL+iU9+s3BH6G6wjVl4IV8azvgwICdzFU0MnC7Hbuci8pW
         TvteEteDS8uLsnyfV7eFPo+svKzofJMaNm/B7typjKDLal1zN18wbdQdLVfK6sH62Xag
         hMyyYG4qNQiK43cjkvqNeP4mPC9pLOKSFMufzF/YKDDe5fuStNshF/cN7VKooeL2pgZx
         fOjQ==
X-Gm-Message-State: AJIora/F0Z59reFOLl6vq+FW2hX9AxXxf9TMBy7Zz+7/zrY67CigOxTI
        Yz6STgrYJyoKGr9o4ZF4+Phw8g==
X-Google-Smtp-Source: AGRyM1sfY4f9ZydlfjO4OnX8I0kU/3y87JaLZvtwOWJV7KCaMZm6sYliFZmtqvGvRd7BemumOq7T/g==
X-Received: by 2002:a05:651c:102d:b0:25d:50bd:a976 with SMTP id w13-20020a05651c102d00b0025d50bda976mr17777334ljm.326.1658322208475;
        Wed, 20 Jul 2022 06:03:28 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id i10-20020a2ea22a000000b0025d9552fcafsm3224064ljm.97.2022.07.20.06.03.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 06:03:27 -0700 (PDT)
Message-ID: <d96f8f71-0207-4d28-5bb2-222a528e5b6a@linaro.org>
Date:   Wed, 20 Jul 2022 15:03:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/6] dt-bindings: arm: renesas: Document R-Car H3Ne-1.7G
 SoC and boards
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1656072871.git.geert+renesas@glider.be>
 <f816f58d1c3fbd0605589e7648a43d78a4e1e694.1656072871.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f816f58d1c3fbd0605589e7648a43d78a4e1e694.1656072871.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 10:08, Geert Uytterhoeven wrote:
> Document the compatible values for the R-Car H3Ne-1.7G (R8A779MB)
> SoC.  This is a different grading of the R-Car H3-N (R8A77951) SoC.
> 
> All R-Car H3Ne-1.7G on-SoC devices are identical to the corresponding
> devices on the R-Car H3-N SoC, and thus just use the compatible values
> for the latter.  The root compatible property does gain an additional
> value, to sort out integration issues if they ever arise.
> 
> Document the use of this SoC on the Salvator-XS and ULCB (with and
> without Kingfisher) development boards.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
