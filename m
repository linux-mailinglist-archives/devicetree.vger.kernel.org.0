Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3CC86B8BB1
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 08:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbjCNHHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 03:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbjCNHHM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 03:07:12 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D361C9748F
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 00:07:01 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id ek18so26806295edb.6
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 00:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678777620;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4sFLavUHAMh1IQxIpbpFJtMNXPLw7bY5otu9tI9R2Sg=;
        b=XfURMzXATRPipmFfGGgyrF3NKMR7h/ZqTObj4UHx0CbZ/f3Z1dH8dGsvRcGoDmLC+G
         Llp5HZItrX/o1W61nGV7ZohJzRZGh0HkHiz28/7KQ4wJEhQPQ17Bvr0eOIHso+eICWhf
         N9isL9sx74GPRoYNnwRem7sNoLutdqEZs8+rqrLwoprnhfYMCwferebnES3jGvebvNxb
         wwdvgPBK1iCWvLpKjZToMB4TfZQhCZM1kU6zgUgD8ey/NSggVUNsjHVH0vm9UqTzkjK/
         wJRi8MZkF+FiwEW6mrTjtI6k0D1Zt0r8RcF3HYCS+X8fuZk/m6yxlbPWIiwOKhEfp2Ah
         aL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678777620;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4sFLavUHAMh1IQxIpbpFJtMNXPLw7bY5otu9tI9R2Sg=;
        b=EdTVeqetosDbDnm5TAu7utSMa6LN9iL+po+BvkF5s4eFwRGHudAW68LF38PcljHsAA
         bYFxq3nvyylkCsWkDIJ1FwZ+2+YaQrpomzXqlMOxTdUJTDMQy883icoJJpEGs7Ep1/KV
         9K/XGAFYu/AuhDuNksgs8pvZpwl3VZmppskLUyylcsuT3Cv0S0/oQVVMkEUfAxVcs3B7
         yPmWR0dLyqZtsuUoVUDbfA1IRNsSLTlXXBb2q69GK0jRQB9JQIGzsmGe7/+dY77wzRCD
         S8nmjQ8Wpw2Fb+0+HTnBkJ07J7vf1hqLS4G3brZfOywntG55bPsQVC7QzgvYbLubTOKo
         TxjA==
X-Gm-Message-State: AO0yUKUekMJ/65aShX8/vR4tyhEZDekCSxwvozP4lkJN6/YHy/MZfEnb
        NA2GUx07vpv66SokvYz3QDny3w==
X-Google-Smtp-Source: AK7set8U99+mq75J5GtKQc4t82yZ1IrkpBsEb5vgcGJlUOAuxDWskEQ/uwRrMM95SD1CMp3pjvkEOQ==
X-Received: by 2002:a17:906:345b:b0:8f1:939b:9701 with SMTP id d27-20020a170906345b00b008f1939b9701mr1052876ejb.66.1678777620161;
        Tue, 14 Mar 2023 00:07:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6932:5570:6254:9edd? ([2a02:810d:15c0:828:6932:5570:6254:9edd])
        by smtp.gmail.com with ESMTPSA id sd5-20020a170906ce2500b009222eec8097sm698911ejb.75.2023.03.14.00.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 00:06:59 -0700 (PDT)
Message-ID: <342f6f8a-a6d4-eda0-0a66-05926ce127d0@linaro.org>
Date:   Tue, 14 Mar 2023 08:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3] dt-bindings: mailbox: qcom: use fallback for IPQ8074
 SoC
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        jassisinghbrar@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230314041515.15883-1-quic_kathirav@quicinc.com>
 <20230314041515.15883-2-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314041515.15883-2-quic_kathirav@quicinc.com>
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

On 14/03/2023 05:15, Kathiravan T wrote:
> Since the IPQ8074 mailbox is compatible with the IPQ6018, lets create
> the fallback to ipq6018 compatible, so that we don't bloat the of_device_id
> table in the driver.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---

Why do you send conflicting patches and take out some pieces of my
patchset into yours?

This was send already 1.5 months ago:
https://lore.kernel.org/all/20230202161856.385825-1-krzysztof.kozlowski@linaro.org/

NAK.

Best regards,
Krzysztof

