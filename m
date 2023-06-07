Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68E30725650
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 09:48:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238561AbjFGHsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 03:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239389AbjFGHru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 03:47:50 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F32A52697
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 00:46:30 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-977c89c47bdso729352766b.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 00:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686123989; x=1688715989;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aqsEzFqUgOVZQzpckmPA7QYky+nCMGAOocJxXSgiBwk=;
        b=aVQBd/L+gFSHbciCPHrq2Jw+Vdc0fz+VuiYH0t5mtgbnZI+CylhNF1IjYCJF7K+fDk
         jays2/s44/Bun2QJli+RcJFBc4xVh0K9d5v3xnRfstXG+bdxVGRbHBAWbu7W1CbIOcOX
         8jGRt80BhzbAkkB4UZDICNmVGFQ+Y3CEAbmpNCQ3l2qPTp5HkJ99qerTDFs8UcPMCK1G
         gIWzKvNkRGPmrP0BZhNiii/ZwHk5Hb16oBMFQNCOhzhU8DgSLrd094MkgAVMbfTF0gsx
         CRpJDv1a7Z0om7jAXcHwsmK9DGvPzN2YR6iXlcD5babDT9RtLrTt7LcuBvAqNlqPzaF6
         QyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686123989; x=1688715989;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aqsEzFqUgOVZQzpckmPA7QYky+nCMGAOocJxXSgiBwk=;
        b=gz7atvEhhQ9B5To2/6bOh1//7EnWnRG/1jHUwA5mVddvmZNNtXhskj/VyFyXgD+bT0
         LO/nzbBgJe6YDdzAHOTUvkou/EdXtGP5odkCYVc2tmGaH76qyw/w4oBDFZzLmcA2KEb4
         /ulXBJV3jqEHqJtshU4pCLrVIDVQTBwSNt+MLFdVcL0h4yLLx8F0Ph7J7Ub96ZJfZ95k
         FwgWazir/epTIgF6UI2zLRjGz3YJT89O37hVkEOcxFcJH8iIQnC4sWZcef/ldZaCjYH5
         67zZl6LdrXDENmIuLSoC49HlnpEKnZpT+csac7qt1JbKd5rl54ZsvDQrHnYJnhPK8mp1
         lTrA==
X-Gm-Message-State: AC+VfDwhEuMkYbUos/X9DL2XElsjDmQcLlcFQLSprhbu6nks0Cnh5frL
        O5rq5dTAX6XaNU7QWzbdD4f17g==
X-Google-Smtp-Source: ACHHUZ4kcZo5MjWf9lYD7Xmfamt0m6nLHk5TvmssVtzCrdVn0j5JqN0jhvh5zR8i+TWc79PPFEQtjQ==
X-Received: by 2002:a17:907:9403:b0:96a:ff7f:692 with SMTP id dk3-20020a170907940300b0096aff7f0692mr4186582ejc.68.1686123989313;
        Wed, 07 Jun 2023 00:46:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i15-20020a170906a28f00b00968242f8c37sm6479031ejz.50.2023.06.07.00.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 00:46:28 -0700 (PDT)
Message-ID: <407ace5b-5c63-a6de-ff41-24d5cd1d4eb8@linaro.org>
Date:   Wed, 7 Jun 2023 09:46:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-db845c: Move LVS regulator nodes
 up
Content-Language: en-US
To:     Amit Pundir <amit.pundir@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     regressions <regressions@lists.linux.dev>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
References: <20230602161246.1855448-1-amit.pundir@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230602161246.1855448-1-amit.pundir@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2023 18:12, Amit Pundir wrote:
> Move lvs1 and lvs2 regulator nodes up in the rpmh-regulators
> list to workaround a boot regression uncovered by the upstream
> commit ad44ac082fdf ("regulator: qcom-rpmh: Revert "regulator:
> qcom-rpmh: Use PROBE_FORCE_SYNCHRONOUS"").
> 
> Without this fix DB845c fail to boot at times because one of the
> lvs1 or lvs2 regulators fail to turn ON in time.

Why regulator would fail to turn on time? If it has ramp-up delay, add
it to DT. Otherwise how is it possible? You have a consumer, right?

This is not the correct solution and it is hiding real issue.

Best regards,
Krzysztof

