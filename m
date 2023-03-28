Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 488796CB761
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 08:43:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbjC1Gmz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 02:42:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232616AbjC1Gmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 02:42:44 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA9BA3C14
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:42:41 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id eh3so45269522edb.11
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679985760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4USwIO7rQUMdTt0AvopWzJfAqIt2lpjOmFwk/o1NlOc=;
        b=ngtTT0iRYVCM4ZmXXvc+yseTWLI4wIQU2+APRsRBPySpZFVA1MwZnkwLGEEKrFgCfw
         LvnXxESZbnMMkqwDMUhTGPmaXlu6SI6lnRmDARnCW63t1a4FYZ3qKt5yfYh3VfPhFlWF
         ygbLWiqgv8fRRbBXPfQu4oBCEM/AMk695VCbusjPjNrz8MEQCOdgfTd2y82fOjPn8vTl
         j2AT2JOB11J2vU1CivPHbhvpRwBIEDm6ccYQ8gnJ+aruDoFgf97niPi0Hwcb1U9VA+cG
         lJQqjIGM1LepCTAMvEKQItzrKG9yRdLovpq1Qx52ZBSMLEEZGjo4zA2YEDMvcbr4S6Tg
         jhAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679985760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4USwIO7rQUMdTt0AvopWzJfAqIt2lpjOmFwk/o1NlOc=;
        b=uql0Pra1LbrtSCBwnOXoorqyWksg+SUS+1epy1s/g7JQ44698DGFWUh59wuwj/c+6B
         qNDJOJNX9D9HfFSo7K+MHNyOV9QBIkXvTvgG1CWynzrVFwvXUzIE0yug0NejWN2aPoBz
         /6qvupXA9YYq3ECc8sIqRWaXmw+RjNqLDHClwmdoT7xrpkunzLto107xmUNPVt9EmoM6
         E2vzVtLuztJgsBIr2DzJytt6wCZT5cfQ90rYaTJMpHlXC6PE7T07FoDc43/g73njHoRA
         FQjaIlRxbWntwRzpx2CzLyh3bQdLd+zLF/+S5tcs7vrhKdz3rP8adEzPlR2J/bZwaFGl
         Mk/g==
X-Gm-Message-State: AAQBX9dEMxFTJZRTDZgfBLHXncznNIBECYKlj8nNhyIEVRWEUc/AoN2n
        VSIggV8+zbrmpzS+93zUOpYpFg==
X-Google-Smtp-Source: AKy350a81urn20Et8YB+owcqnHygl1VpRFKCDJT6BT6dQnx9oNwzuS8eEcPoFHWDcWPPvJ2ZjBACyA==
X-Received: by 2002:a17:907:10cc:b0:932:2874:cc5 with SMTP id rv12-20020a17090710cc00b0093228740cc5mr13989964ejb.16.1679985760090;
        Mon, 27 Mar 2023 23:42:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id xh1-20020a170906da8100b0093f83562f09sm3860161ejb.87.2023.03.27.23.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 23:42:39 -0700 (PDT)
Message-ID: <33448f1a-ff6d-46b2-b181-d4e57983fbd4@linaro.org>
Date:   Tue, 28 Mar 2023 08:42:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: soc: qcom: Drop unneeded quotes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230327170205.4106310-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327170205.4106310-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 19:02, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

