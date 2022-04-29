Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3494951560A
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 22:46:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380921AbiD2Utb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 16:49:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381132AbiD2UtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 16:49:20 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1701D80BF5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 13:46:01 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id e23so10321711eda.11
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 13:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=ochQJGvAfnV9VCduFrexGwXrShT60JDPrJL2+ME4cQ4=;
        b=LSJ/V0b2j/fqVDcMnrT6FBN1mebxobirc9EAxiHC/FZdOkrohbioYBEybtnAnQ8cMc
         r2SjDMHDLXyypSR732Vvb71UA7FCP6q7yBXTPEIF71DZdCK7liUdGPeNyMeF3Oe7KJfO
         XP+OgECXvpkyta1sSC2EvgY8GAi0w+qdVUyd4yMb2Xw9S320MO2HELFDVxaZuAuzvl1t
         OYH5rCu8JkJWYJdRawU7tp9Qpp97LVlWncVaZVhSyG1E4GQ5f8MmVJoTiB9aV8gSWqsk
         lGRHAdA/EpQyKGxRAl0fTzlqykh82YOzsPBYOLSS5GANO8dIuPM/pGaT/cqRIbBBhDsd
         YtvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ochQJGvAfnV9VCduFrexGwXrShT60JDPrJL2+ME4cQ4=;
        b=S2sLr29dv54R/48owCkm67Zsp6sdMi17RO5u9kFiVOggGS44BLb+82IZmy/PLEAyqe
         8uCVdNA96DExhHCFZGfxyzv+zI3oEH0ZOFeyL8OZHomhvWdigbkpGbdlv3MxGiTKd0gm
         ttOV/dvFskRDWehB975jmO3QTg2tBbdbOtERRIZmd3SOtGac7xLzlqH6iUlisF3q60MC
         OjClmStSkXub+N0Dfp0qO1rVLbOCisA/08RqyuOjd15Wcace5BqkVWtXqJa1X8Bp7Whu
         cwWk4zmRIf6V+GaLVQD65CqsGTML8Kdc9dp+hLkkfyz8I1qkGHTHGravvHkeR01vWAKD
         gUJA==
X-Gm-Message-State: AOAM5333TrhxhLYnco6DUYJPbUpzEn/bbLrUJko7lv9HkwEl1u1+/HXu
        XHc1OLlrwL5Akhyq2dxhVt213Q==
X-Google-Smtp-Source: ABdhPJyi1MDo1zRub/Ovah2DsFuZ1Cs98xS2bAOhuo/XVUB+gAAw2pNRnHke/CISIJe1ILdOLtbb/w==
X-Received: by 2002:a05:6402:11c9:b0:425:ef56:a1dd with SMTP id j9-20020a05640211c900b00425ef56a1ddmr1099914edw.143.1651265159632;
        Fri, 29 Apr 2022 13:45:59 -0700 (PDT)
Received: from [192.168.0.176] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz24-20020a17090775f800b006f3ef214de1sm959183ejc.71.2022.04.29.13.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 13:45:59 -0700 (PDT)
Message-ID: <1b545fbb-eaca-fb98-f77a-15326a7a2e4e@linaro.org>
Date:   Fri, 29 Apr 2022 22:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/6] clk: qcom: Add DT bindings for IPQ8074 APSS clock
 controller
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20220429114330.59026-1-robimarko@gmail.com>
 <20220429114330.59026-2-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220429114330.59026-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 13:43, Robert Marko wrote:
> Add DT-binding for the IPQ8074 APSS clock controller.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>

These are dt-bindings, so prefix the title matching dt-bindings
subsystem and remove "DT bindings" words form the title. Instead "Add
clock ID headers for..."

> ---
>  include/dt-bindings/clock/qcom,apss-ipq8074.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/clock/qcom,apss-ipq8074.h
> 
> diff --git a/include/dt-bindings/clock/qcom,apss-ipq8074.h b/include/dt-bindings/clock/qcom,apss-ipq8074.h
> new file mode 100644
> index 000000000000..df07766b0146
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,apss-ipq8074.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

This should be licensed the same as bindings, so GPL|BSD, unless it's a
derivative of some other work?

Best regards,
Krzysztof
