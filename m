Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDCF272FE41
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 14:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244192AbjFNMR5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 08:17:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244007AbjFNMR4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 08:17:56 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267EE1BF9
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:17:54 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f655293a38so8101033e87.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686745072; x=1689337072;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PsRY4aANLa6Mi+dIS1dxGXSMzJVgCbBa+bXdBBLuVF8=;
        b=xnXSpu3p+N+cbGeM3AxjSFFwlpuNHpn3yBGVoDtYAjmNGa9dMcM2kU1zk/5apkUXuP
         7Tdz1kuAsWQBluLKajWi5UqjKQomRjjFVDYQjJEaAha8kHVMX5EPiTDAMC7+TqoIVas2
         eqKr0vcvwMlICgPdvGTLm+Xwz5HNKigr4KdolQ8LWxBsUvoPwRjAKAJH/FWTBMomVgdm
         nqMFPzVS2VwGS4GsZdQcHIkCR4uC5MLGXf7U1RV9yG0eWOWDKgH2u+m+tciyh3AyO42M
         Ux2WXbCMkto1ahyKczeCCbaIv08wo8bZb5y8x/s8aBPU+AWdEmZ+bOC9MK108flpReGJ
         sMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686745072; x=1689337072;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PsRY4aANLa6Mi+dIS1dxGXSMzJVgCbBa+bXdBBLuVF8=;
        b=kJJ8zjj83NPvhSdBv/OsGGxxcbcuO9jkqANvZLpz67jNbATL1QCoSvzC6aSFezn9Li
         5lmwIxzln9kYBRm10vo+PzAK5uXBHevgqKniD7/s/nWziES7RHdoFf+B8AqRj70JHs/h
         p30lRDEleWca+lMk9IgkgjXNtneVQXX/15T7BfbBi0dRyfQbBnII+oZNt0ErgfIfJxkd
         Tal4xti0cqyWc7uiVgh32/NmKdcreGpgBBm+O5b2KzEpxhQFZdH1j8BdC+lDXWvf17EZ
         IPPyLO4ndgQazkufIRXzXooMr6sxx9TLrmFvDXrrJGxXyFI8hHnxkq8G5V2yzCVS7//E
         bo1Q==
X-Gm-Message-State: AC+VfDzNx/T1+HEWPCaBLpIea4gPI4DXBooT0ipFtFESCT3MuwDKspqY
        VCXQfxHYpsd0+4YJjCCeYDT9kA==
X-Google-Smtp-Source: ACHHUZ5RYhceqPoVXxZnTB7MfqdebB20yRQPuWLYTr9/d/As8K2WwnJ2Whq1y/+A3rKZkQL5CHJunQ==
X-Received: by 2002:a19:7117:0:b0:4f6:25cb:5910 with SMTP id m23-20020a197117000000b004f625cb5910mr6658476lfc.42.1686745072394;
        Wed, 14 Jun 2023 05:17:52 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id v27-20020a056512049b00b004f74160c9cesm1237305lfq.130.2023.06.14.05.17.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 05:17:51 -0700 (PDT)
Message-ID: <eb046338-6b3d-cc67-7f28-477bedb818fa@linaro.org>
Date:   Wed, 14 Jun 2023 14:17:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v4 2/8] clk: qcom: Add Global Clock controller (GCC)
 driver for IPQ5018
Content-Language: en-US
To:     Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, ulf.hansson@linaro.org, linus.walleij@linaro.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230510134121.1232286-1-quic_srichara@quicinc.com>
 <20230510134121.1232286-3-quic_srichara@quicinc.com>
 <21a5642c-e6e5-9323-7db1-383a18616ac0@linaro.org>
 <410b0991-30b6-c87d-9b25-5f51f6c08671@quicinc.com>
 <1631b3cd-dc24-0024-5291-fa9bdacc82bc@linaro.org>
 <1e83efba-5fce-f149-6022-c1893866fcca@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1e83efba-5fce-f149-6022-c1893866fcca@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.06.2023 13:00, Sricharan Ramabadhran wrote:
> Hi Konrad,
> 
> On 6/13/2023 8:53 PM, Konrad Dybcio wrote:
>> Oh that's new. I suppose you'll be interested in clk-interconnect for
>> voting on bus resources then.
> 
>  Yeah, its there in the plan to add the interconnect data.
>  So is this good to get this clk data merged before that now ?
Yeah I think it's fine.

Konrad
> 
> Regards,
>  Sricharan
