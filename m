Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C80C15ED708
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 10:02:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbiI1ICY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 04:02:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiI1ICW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 04:02:22 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC99F1CE90F
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:02:20 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u18so19151902lfo.8
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sWrqv0/C3Xw/80S7MDLGuqnPRZ0UJtGJrRekrfjkTs4=;
        b=nwo4S9KAhpN/GNIOof7KcWwiUrw6CsMMBhfm2o5HTvftrdIbEpObYeDYb07fkt015K
         96usNALO4Fsrr5npKzQavY2vQ0PeVQDRQrKiPuifQky0GrdPEPUeIrHDAFMb7xcONRFM
         Wr6tN5+b2OqlUQsDAowh19hCiz2ioYx6ThTky+OwWBxRcVNCSGwqoUPf0EFoJMCSpCLc
         Zylw0CGxW6537gQy/QIG2z1X0mao/NxoFA6G/uS+kN6Ng2ve8Ik/4PVtVxJoaFOhAqhs
         oJUOrniSTIyIJ8eYsJEeoGHX2dNFKssZl/wqoXa5MmgRN3Z9zZjGbybDXHQPmnt+jpwW
         3cNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sWrqv0/C3Xw/80S7MDLGuqnPRZ0UJtGJrRekrfjkTs4=;
        b=y2TC7tXDzXRN1WtKVr7F2so2DdWOkiLVGZcJ9YYJOBukaJiaw2nOMOrqcUXn7gG/Eg
         xsEXcG6KQYNKG7E6FlcjA5Umfri86rw3ZisGKwx2PfW3jn8yp+HRPIgEzJIc9XKZWmCL
         tw/Sau1QxGI+U0/no5WuvLVZ3hJ3esxnAR65i3jmq1YHyVsevhfBBlXzDs87YSOV/KW0
         xfTD9F61Uic+qf95VlDV/q9LiyRGC8wPyBshdHtt9zZTo23zLD5kCqOrW/qYX8QAL/Vv
         pmsyolLK6mhKDxBZxOHpjDrJoku3pUpsokmz+xZC97yg2pS54uHyiz20alN6kfQHsx0S
         dKqw==
X-Gm-Message-State: ACrzQf1AVXasMam9P7VoQA7uTssi6xwdgxudfhESfIcolNF8EPtakxra
        RDiT8zoEoNxhwi3xgJENEsDNIA==
X-Google-Smtp-Source: AMsMyM462e2gzDRMcigpo0E6CoujlM0kS7F3rvPxqhQ4iJiCLr4zVMLsaxyFyUhvlxw/JsGTzjPYBw==
X-Received: by 2002:a05:6512:e9f:b0:498:f1e5:26e5 with SMTP id bi31-20020a0565120e9f00b00498f1e526e5mr13741248lfb.517.1664352138921;
        Wed, 28 Sep 2022 01:02:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t17-20020a2e5351000000b00266af46abccsm372086ljd.72.2022.09.28.01.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 01:02:17 -0700 (PDT)
Message-ID: <06a2d726-180b-19de-eea8-1a0432d6ea49@linaro.org>
Date:   Wed, 28 Sep 2022 10:02:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq6018: move ARMv8 timer out of
 SoC node
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220927201218.1264506-1-robimarko@gmail.com>
 <20220927201218.1264506-2-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220927201218.1264506-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 22:12, Robert Marko wrote:
> The ARM timer is usually considered not part of SoC node, just like
> other ARM designed blocks (PMU, PSCI).  This fixes dtbs_check warning:
> 
> arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dtb: soc: timer: {'compatible': ['arm,armv8-timer'], 'interrupts': [[1, 2, 3848], [1, 3, 3848], [1, 4, 3848], [1, 1, 3848]]} should not be valid under {'type': 'object'}
> 	From schema: dtschema/schemas/simple-bus.yaml
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 16 ++++++++--------


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

