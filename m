Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B65005820C9
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 09:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbiG0HLa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 03:11:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230221AbiG0HLO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 03:11:14 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F2A419AD
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:11:06 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t17so13577821lfk.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TCXkWbY8lCYRPmOMxv0DgX48H2ZdZczdOZ5oxlfsFak=;
        b=J4iDTUiJQy5dAeJrha+6shDJ2AkQyDLrIwg7dMsXnMJ1Q+4nr53y7sbAea1r8ROYQr
         ak3MchS6eBsh+TSpp53K1JS2uKCQh+c/3thhM0i1cEXq0ELWVZyBGtRRtIYlEbXxN6LW
         ZoO7Wfq9L+1YLIfdRsB6zEdJxDW2f31IV7uqwIEbMYtypYrYmN+Eg17LE8FADDcu05mV
         8VRhuiCbIxVHXmuPOaivoXncnpWOr4snSpwyxr9hLVLF6QSg8Vgor2HvCO1HRdBZsRtD
         WwgMbM4v3ryfZ1N/HIBz+vcVYkFbjHVbHK5yXjH+gl2MUI0fLRElCX8GbNFgA7cuxLVk
         hTRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TCXkWbY8lCYRPmOMxv0DgX48H2ZdZczdOZ5oxlfsFak=;
        b=1InC/DdjA+bjCm68WOsuZRK74NFUqWnrceW4oI3uUMX1iTqUk/hBxqmTrNWq2ELOY5
         iZPgtFIWxhjpvaqJ2QXCZWEjZelJ4DTkybJhAGsGYTVXMisIuZbZYGh9YTiL+uP0cs6g
         JLOIpcqy7a3VNjb2sdocXKsURnMbtoY0Fx00e+F4T7wFaglYPhwN1snhZ0coZdSQuwj6
         zsImiqKjZnBuoQIyL06JYdHnKAp8Z4RM+NLBm7ruxPiIntt80RnIndMtgG4Z04MFJ+dt
         LUL0WJymuL4SEphScCdShWu4JizQOkgQR/6IMJttzkSc9mqWaLNmPnyuG0NBdKpunvV8
         P0vg==
X-Gm-Message-State: AJIora8o9QYqrTZeQfZ0KbtPmSMjv0hhwIT8utJpd/kqe2eUe1ribHoO
        nmgRwKJzmWNJQlvEvsCERTBWFssI0RsuQY90
X-Google-Smtp-Source: AGRyM1uHY8NtW7/LAJE2Jp+gTe3RPQPdbFUMSfPop/WKRclZ/C9ElcfCMhhRkKS+F3+U55AVNz4qvw==
X-Received: by 2002:a05:6512:2246:b0:48a:9a7a:3a62 with SMTP id i6-20020a056512224600b0048a9a7a3a62mr3478958lfu.173.1658905865789;
        Wed, 27 Jul 2022 00:11:05 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id w2-20020a05651234c200b0048aa6228f07sm715512lfr.43.2022.07.27.00.11.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 00:11:05 -0700 (PDT)
Message-ID: <a947cd45-c3ef-6fae-82cc-c906f96a939c@linaro.org>
Date:   Wed, 27 Jul 2022 09:11:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/2] ARM: dts: qcom: msm8974: add rpm-stats device node
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220726205355.598874-1-dmitry.baryshkov@linaro.org>
 <20220726205355.598874-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726205355.598874-2-dmitry.baryshkov@linaro.org>
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

On 26/07/2022 22:53, Dmitry Baryshkov wrote:
> Add device node for the rpm-stats pseudo device.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-msm8974.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
