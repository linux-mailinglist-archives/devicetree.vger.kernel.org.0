Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDC3E64A1C6
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 14:45:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232989AbiLLNpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 08:45:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232972AbiLLNpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 08:45:11 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A255214D27
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:44:29 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id b13so18658205lfo.3
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zHiKffR78TQm2drFlpAGS/qoww/hvaTuXfC1hf+5dBc=;
        b=s01zQqA8WlClp1xDYLNBuxnkJ3UG4KODJFvMh35ZqrCqN4E4h3sgmyXJJ0d5UCI3Ys
         JnhLL4qMAemepJM7xEceFZ8ZnlEpVJJjyBHqZmM3g+pKNTeh6B03m738/eMYiEeyKuw4
         H5pEkuCr0XEwPGGd6v3UdbeoxBeF7YWd4qZDtUwD5VMDO2I0OJYivaehrjVpT5Hjm1ET
         gfh8CppFtY5rYQehxgCBIowAdtdW7tFjbaLr8V50SEQK5O9QLcwF6ri0IDdXpJGWc2tl
         Ml1PAbmXwfML1Bhhaba100CaORf7+i3pJgE5KPYrkHdT7QcJfKgMWFOXSQGYaXnHCen8
         RZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zHiKffR78TQm2drFlpAGS/qoww/hvaTuXfC1hf+5dBc=;
        b=nZ6mxHmz2YNtYl7dQNyU+q67FnB/SFWHhWA5Z58tTgnbDo8uzqWT/R5oYlH6YJaLDT
         pmhmeO8eiDcMxyHgl8TMC8PubrL1o33O0BuWo/vnZMgXD/h4yNoSTfRKE0YJI0w7wPq7
         90Hyc4I+5EiTh+hXKpW6dqfJEXvGOqCkZDbTijjqmudSn38ebLm3+59SpU7l6Zze8oxO
         Vr5KJJS0XPhgyHr8FgvXpXjOvGWyZFyag4mQLWvMI/dvc0fNz/KPVBXX7qME3NuXaB8W
         Ah1NfZAzgl6SiehRqfr0djiBeuNerlr+/kL604DSOS+H+A0Z59DydibTaqccv2B5BuQF
         FYEA==
X-Gm-Message-State: ANoB5pmM9OCx7gRfeLsodczGylAUWpRlS6YvFcjRZIh2zXsR6n65J/Cd
        wSBaAlgsYg55Q/rwqLp55uFNbA==
X-Google-Smtp-Source: AA0mqf5GOca6Yz6tdzS6k9U/mHdrRc6WjqFv22z/KGI+vQ5DkEhLGEW6xMb8aPCLwcoCTPYOxdvvxg==
X-Received: by 2002:ac2:51af:0:b0:4b5:91b9:4d8d with SMTP id f15-20020ac251af000000b004b591b94d8dmr5531891lfk.19.1670852668002;
        Mon, 12 Dec 2022 05:44:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v27-20020ac2559b000000b0049a4862966fsm1632385lfg.146.2022.12.12.05.44.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 05:44:27 -0800 (PST)
Message-ID: <827ab36b-fe72-6d57-2ff8-66b78251c6f7@linaro.org>
Date:   Mon, 12 Dec 2022 14:44:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sc7180: correct SPMI bus address
 cells
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221212133303.39610-1-krzysztof.kozlowski@linaro.org>
 <93ad9c5d-784e-3cba-a34b-84f2ce4d3964@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <93ad9c5d-784e-3cba-a34b-84f2ce4d3964@linaro.org>
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

On 12/12/2022 14:35, Konrad Dybcio wrote:
> 
> 
> On 12.12.2022 14:32, Krzysztof Kozlowski wrote:
>> The SPMI bus uses two address cells and zero size cells (secoond reg
> secoond sounds very Dutch ;)

Indeed...

Best regards,
Krzysztof

