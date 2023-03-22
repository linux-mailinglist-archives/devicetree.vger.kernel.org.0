Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2803C6C509D
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 17:27:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230083AbjCVQ1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 12:27:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbjCVQ1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 12:27:42 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEA4760AA5
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 09:27:24 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id w9so75349484edc.3
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 09:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679502443;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ycyENMdFF2CzvQbQDOTRVEeRhFxhD958v+PK2qLS/rA=;
        b=XnwQ71LENmBJUSgIhcJW0wRK5YRU9HunpXIDvks06eW2P56ged43ro5SCA7tEC7rlc
         IZC4F8dJ9psSZcS5rrUUXczjpoJ15xmQ61HqpZ8bODxUiVyID4MDnbccpv2qCqffWKm/
         strkFgHpWhYSxgONwkyqzk2X+lNXnv6/XN3DKlt+NuNLFotcCNsb5mDCQMbJZZ1XHSfc
         bg+vocnKIz0ZiaWI7sw+MqJu8PnYYtR25zC0lu+ugu2QlbHI0TcgycLv6Ftmz+iPNDgu
         qYDiQwAHMJpxNHvNKZl57LjZex1JUt6U9DQpiMvQ9X4Yu0VvX+WPBSP+ehFSbIQhC8dO
         BNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679502443;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ycyENMdFF2CzvQbQDOTRVEeRhFxhD958v+PK2qLS/rA=;
        b=4+wGJbwyvVu/TQtTA6RY7YcPK/mCRPYpQSIwpH7I0IbsOj2pK65xqGx5kq1K2ZoQSp
         J8bXp7YvZLLJ4zH47lCMebixPaLHsbl5JQTymdcmPARJPwmxD7CO7/4qT63h8+RHzNEo
         LMStxprXLARLJJBENzpLXDKqjLQfda6UtXmJa1bRQ2X1aQSsVIZ06Yn4MjyOeC3ekAAY
         Cwu+gWIwVNKbqW2AsDyKIH0ZvyNd4VqdGDXP4K7xcwxQxhVHsOjMXDxXdgxlbBoV7VN4
         HKpyeCbf6JWJTDx9Bt1IPm2Cgg3g8CW+IyYVKj/CBvf+0l+yLzEy0w577Cin4Br2c3Qr
         UXWA==
X-Gm-Message-State: AO0yUKWLIpbMmmFC5nY6kI/A3AHIQANgodK9dkr6MofXj8oHsOdLmD5H
        YBiVOVSmS/9olIEFzhrXLtn3CA==
X-Google-Smtp-Source: AK7set8LzK5u+Ph6/0aJMK6sntiDB6rs2QcNpTYFEg1/IjOeLFTvgvc2SMYKGCEqfQgGujE9DLjp+g==
X-Received: by 2002:a05:6402:219:b0:4fb:9fd4:6ac5 with SMTP id t25-20020a056402021900b004fb9fd46ac5mr7449880edv.14.1679502442936;
        Wed, 22 Mar 2023 09:27:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5050:151b:e755:1c6? ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id p23-20020a1709066a9700b008d53ea69227sm7402394ejr.224.2023.03.22.09.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 09:27:22 -0700 (PDT)
Message-ID: <e1d53083-82b6-d193-517e-02af281a066a@linaro.org>
Date:   Wed, 22 Mar 2023 17:27:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V1 1/4] dt-bindings: sram: qcom,imem: Add Boot Stat region
 within IMEM
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1679403696.git.quic_schowdhu@quicinc.com>
 <1589f33deda07cb9f9e6c3c26bce6e02e53c168e.1679403696.git.quic_schowdhu@quicinc.com>
 <c0c6c79b-ac77-cdbf-5b08-38b89e4fe481@linaro.org>
 <260cf3ae-1acd-c4ac-a42d-4ca848ec5664@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <260cf3ae-1acd-c4ac-a42d-4ca848ec5664@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 14:34, Souradeep Chowdhury wrote:
>>
>>> +          - const: qcom,imem-boot_stats
>>
>> No underscores in compatibles. Why this is not SoC specific compatible?
> 
> Ack. The boot_stats module is not specific to a device. It is written to
> read some values from this imem region which is present for almost all 
> QCOM SoCs. So SoC specific compatible is not given in this case.

Yeah, but the generic rule is that we always want SoC specific
compatibles. If this is not specific to a device, then you do not need
anything in DT and just instantiate it from some soc-driver...

Best regards,
Krzysztof

