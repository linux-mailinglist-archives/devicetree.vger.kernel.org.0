Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 165DD72D47A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 00:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236337AbjFLWez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 18:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238853AbjFLWe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 18:34:28 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 032091711
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 15:34:27 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f619c2ba18so5552656e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 15:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686609265; x=1689201265;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AMzDj/q1eIjk7M79aX8VGojHbvwXO9AfJ5KwS9cBGs0=;
        b=wgsAL/197qczBxJWD18I4yAooytw30VwTsa6qRv5mDpYzIu/ZfS2MbQmUwvXqIizU+
         8WmSBNgO1RaIiODczLrFdPll/ACsvPafXCtFeJB2Ub+m3Q8ZvrpzDbabLgl+bzDRo5ib
         7pE/VUwFMfkDgnHfSLEQYwtsFpMHeqICa+d7yGu/wQoM4Z6E+XU1dBWvi4pI+un+1eKr
         yz6xzHGZH/6Ds+x6eVC9fKg80VCmXokvq2p0C2pT762ADSPfX6JgGiQcczuF44/020ZV
         ETb1MIXXs9QQO/XO9sPW0oAkV9O2xoS5P8CaAnUxu5Wj9CSgvLixgdZzLwN+yqVFJBIi
         D/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686609265; x=1689201265;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AMzDj/q1eIjk7M79aX8VGojHbvwXO9AfJ5KwS9cBGs0=;
        b=Pk73QZG7pSLEqMM4nCuTy0r9jnFM+5bz51vR1GoFdswbsi4cUc2HFjIk8YdP0guza9
         wsrDdw1xGEznuoXqRwmrk80JAwWXUykDCAomw5pHkocJN6IzpKB0uZjN0vzkojiztMbH
         XAC4UF86V4ocoXJ/BkdY59klbJAndXtXL52op4FgUSXp/4yTfVAwNyTIJlSzO6OKPL/x
         ViWeyPJl7cxLS85mxsrMOvZKFRjVKIpdTjv0h0QZTaGHwQmI+DuqASuG+ESAI1z+m15G
         GrNmL7ZH1eWwYXZfYSEYS1ee3SEYw3ZOUWHO+ldYvLu2JSmwsqN2HsRoMR390Fl+UZYw
         S2rw==
X-Gm-Message-State: AC+VfDz3nhs77BA56RaEY9ejXO/aFjH8pMQAoXOa3CZ1kHK8PPXsiYdG
        F8iw6DAspfOl8jHbXVjeUtV3Zg==
X-Google-Smtp-Source: ACHHUZ6UI1fRdH9gSZ2JapXVW7nQb7AeEy+C+K2sFiRn0FnbaGSfAxnNdsclZLAJZ0HUOI+T8BwkBw==
X-Received: by 2002:a2e:9ccf:0:b0:2b1:bacc:b3de with SMTP id g15-20020a2e9ccf000000b002b1baccb3demr3665344ljj.4.1686609265238;
        Mon, 12 Jun 2023 15:34:25 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id j15-20020a2e800f000000b002ab017899e8sm1930200ljg.39.2023.06.12.15.34.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 15:34:24 -0700 (PDT)
Message-ID: <8f70c58c-15e5-cc69-1bbd-bdd36fe0e248@linaro.org>
Date:   Tue, 13 Jun 2023 01:34:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Move DisplayPort for MMCX
Content-Language: en-GB
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612220739.1886155-1-quic_bjorande@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230612220739.1886155-1-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 01:07, Bjorn Andersson wrote:
> The DisplayPort blocks are powered by MMCX and should be described as
> such to ensure that power votes are done on the right resource.
> 
> This also solves the problem that sync_state is unaware of the DP
> controllers needing MMCX to be kept alive during boot. As such this
> change also fixes occasionally seen crashes during boot due to
> undervoltage of MMCX.
> 
> Fixes: 494dec9b6f54 ("arm64: dts: qcom: sc8180x: Add display and gpu nodes")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

