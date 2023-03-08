Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 684AC6B0440
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:28:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbjCHK2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:28:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230500AbjCHK2g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:28:36 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9641058C3B
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:28:21 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id cw28so63700081edb.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678271300;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1OG3J60RHCc2r1ir85ZsObe+BU1ep/W/3YRsXRITHqQ=;
        b=CAg4yPXc1hAkyJPq46nUHn6QQRQAsc6gJziVcDTTidbDrAX+KasqGqXQH3WJ4dzAV/
         8GqLqIX/WjkBdb4Kzh1N8DkbxNeqJx4NTodt8NdLCB0SU3YRVq0bctvi5mLIRDjBx3ke
         CIMCudV4TouxnDZNdrwNw3/LQP0Dyk9AygvsMVMocxI1k9xOc0lfsDBl71jnJNs9Fm0k
         ZukAMQDzQk+rgplBMOkaFwjUHiqay322nivyJAkPbezAIW015m+lGBKysdXbCy9/v5iM
         5TnD22wAXZ5jFi1i5dfFisSjAx9s9VtLoMWd6L19ACamSp/sN9alaLuv4KsAGzhNAPfb
         yMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678271300;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1OG3J60RHCc2r1ir85ZsObe+BU1ep/W/3YRsXRITHqQ=;
        b=5N2S2tzEklZSbUnSBsVPQ+SM8wqV2Eo2gjdhgEwjCJxk71qDJblDV371l1cojWQlqq
         ei3+RFMv9DDlXYTOVZRVIeYuC0YaINlP5QakDecSvwprxpN1nhJ40GsPzICNGVm5IqMU
         14qWAPHsAJjn7A97cMyEtMZQZoPxCTovkw6zJ5gEGV8N4NeQioO6srwvI8Q/4UXAWuj7
         921UVt2DpEgcwHWN7oq1NJigvNNl3xu8dimnq13ZcVrpjtV5OiQkRc8skL6D/bHS0Vb6
         cFp78Ep5HKBnx2hfUWM87IULgLM1CwamWjLtWlHMNKewC+59YvDc+7dRoFcLej73r+uq
         j9kQ==
X-Gm-Message-State: AO0yUKUEO5aLBSLsC6OCbKdimW/xnAKaEPR2SfXK3g5hMuqWIDwmOXrc
        beMNVqhgctrC+OYaSlFffw7Eiw==
X-Google-Smtp-Source: AK7set8WyvelBt9Y1MNQfG/pxVtfOStjvSKUWETf6rfQm+aTq0StyZMgNgxnj5eohGhLD9faseRk5g==
X-Received: by 2002:a17:907:70e:b0:8f5:8da0:a482 with SMTP id xb14-20020a170907070e00b008f58da0a482mr18780865ejb.25.1678271299977;
        Wed, 08 Mar 2023 02:28:19 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id i24-20020a170906851800b008b95c1fe636sm7262882ejx.207.2023.03.08.02.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 02:28:19 -0800 (PST)
Message-ID: <94ee2d15-11b3-3a1a-1332-7db881e93fed@linaro.org>
Date:   Wed, 8 Mar 2023 11:28:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Allow
 #power-domain-cells
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230308011705.291337-1-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308011705.291337-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 02:17, Konrad Dybcio wrote:
> MPM provides a single genpd. Allow #power-domain-cells = <0>.
> 
> Fixes: 54fc9851c0e0 ("dt-bindings: interrupt-controller: Add Qualcomm MPM support")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/qcom,mpm.yaml     | 3 +++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

