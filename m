Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2564B6FCCD2
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:33:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234478AbjEIRdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:33:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235005AbjEIRdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:33:38 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A8E546B9
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:33:36 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so61083589a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 10:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653615; x=1686245615;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IUawUbEclVkFSWkDdatFwfaD7oPd7xnurWNNOrUMw2g=;
        b=hT0VxclnZ+fQxcynoRFujumgdhltCTC19CxX5DLjnn4pJxulVtw304MJaWUTeRdcXi
         C7dC7FAO+QnpXmHtBVyK1XPid0bEJvGB5W5Bk1UJCoHLLfR4HE/aJB2iALz8ptx1GFAO
         gAp84bF8QSUT4XwkvC8rCMEeZslw1usLGHoojLBEr0YZ4BHBU61PRG1qW3eZBqMZkujG
         xEV+Mz6c+vQ+Aja4zrz0IVaZchCoz/i08ry25J3908NQjVv/PskFEtKuxNLAT23AVtNb
         EDoKWT4qyXhysfpX/WBo5UAVuIzKIgOtVwf3DtgvXMpIoDkdTMJhs7sI74eULaN3Lu3N
         Ryyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653615; x=1686245615;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IUawUbEclVkFSWkDdatFwfaD7oPd7xnurWNNOrUMw2g=;
        b=fNmOYyIwqwkBbwUM6WfL/3ZImbc3vCfpc2ysLy3qlTvszOGscfVyfxqbeJ4TWDnR0D
         C2MZwUTOuCC2aDXlNjQtSYfwu9Qybv5nzmCayV+r3zenK/3atAdN8urfW+tvpTyROWfh
         gQn+1x1ONyTW87BOA8UcVVRb/ip8S+hv7yywo41nm9vRkWNYSRQJJrs8Uwzxa+pKbw6r
         k8CLgEPm9LzAylGgh2sdFhtsUWBaoCb52QJeIN1+qDkXefJVoGeF9vUavtl0mafKvl5b
         BAqQNV4o1xRHWAeOCbwTehmadlmxEAbBts1ZECI+sOyH1auKCnS744LMn0K0MSE3XiuG
         q2Dw==
X-Gm-Message-State: AC+VfDwg9oYgraeoQSUbgpNlN1mf02jz+qf2wOlQc7kfG7cZNXy9itTv
        FVP0LtvUvtA4W9omPa/SkDaiTg==
X-Google-Smtp-Source: ACHHUZ6WFiMt3dk/BzPRcu3Y6NXiTqRFSfVBopWlJH0LQDMiQjFCxTcqPOgMV+ZWRoTKply56AteKw==
X-Received: by 2002:a17:907:6d22:b0:965:d7c7:24db with SMTP id sa34-20020a1709076d2200b00965d7c724dbmr13312874ejc.32.1683653614751;
        Tue, 09 May 2023 10:33:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id bc15-20020a056402204f00b0050b2f588db6sm980998edb.16.2023.05.09.10.33.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:33:33 -0700 (PDT)
Message-ID: <6310c7a5-f541-b6b7-10bf-680b7c2458d6@linaro.org>
Date:   Tue, 9 May 2023 19:33:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq5332: add support for the RDP442
 variant
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230509160133.3794-1-quic_kathirav@quicinc.com>
 <20230509160133.3794-3-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230509160133.3794-3-quic_kathirav@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 18:01, Kathiravan T wrote:
> Add the initial device tree support for the Reference Design
> Platform(RDP) 442 based on IPQ5332 family of SoC. This patch carries
> the support for Console UART, SPI NOR, eMMC and I2C.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/ipq5332-rdp442.dts | 117 ++++++++++++++++++++
>  2 files changed, 118 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq5332-rdp442.dts

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

