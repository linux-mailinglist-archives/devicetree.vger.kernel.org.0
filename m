Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18E2A5AE29A
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 10:30:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239023AbiIFIam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 04:30:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239044AbiIFIaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 04:30:19 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0322A6279
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 01:29:46 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id c10so1979967ljj.2
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 01:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=eZmxXgHJXdgFMKIz5p2FbAR+53IIfucrS164Tgcj3tA=;
        b=U6BuOk5lX2zNRmwrUGUNquG8mjL1UetWHN9Ufxlm9iDRuUYbo37VMcZxj0WhRn0+8I
         L6/22pr1DAP1uywr7/Ed6HMGSqAAYg8UTfX0RqYL9OdZK5AsPJhmeo/HWnWebxJOVYgo
         VJZetLfgW0da0CntsHwV/FvBV1i0bYdmdQpszxiz1WwbejxtUoyexLN1IZFgboqyBclC
         TSxuLXRXgrZL8zPMbARtO2PENiqnXXELjKdmNyYeA7b3J3vUbWB31NQqIFnEsUHCeFxU
         EpwNAuv8ycxJ1ZxFnllVVchMTSfKX50iFVdVZh4e+c0QJCdaVE6593Bc0CGaG+HezO/6
         qidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=eZmxXgHJXdgFMKIz5p2FbAR+53IIfucrS164Tgcj3tA=;
        b=QEPJNvfo//pSJ8F7cPzFLMllHt3fZFO+wDiMDl4GOYrR68OohOaRfvtIjJ7L66TH6N
         UBS547hpkQOWAYpPFFnAqcsO8BZCgIwC/ISsE8Z7AC4WTK1aQp1fGpZs0FQjRmXgCOnu
         f/zjHHPSjFUA+wHwFXJocW0zIujn1O/h/YTiImAZtxc7JTyMCg4yA7VhkXn5YU7z0vE7
         oi+aKoQB8l+YcLYlPnA/njQ//X0S83ePiWqkgwGxkmyzJO6N37txhEmbpmdpLIMTn3hl
         osen854WgZOSWj8TT1rJW0dbK1aTRUEavC0Jb7V/BRs3rXG3qiS5Jru+zwrnpW9fSuoZ
         SQVg==
X-Gm-Message-State: ACgBeo3uwpPhNP5i9i7sdfzBtOAYclerzTATGZMb/SBGTN2nEBjLSPz2
        m+q7AW27VxfVNMBz1s4+S2MTAg==
X-Google-Smtp-Source: AA6agR6Gw/VKeIdLq6nNen6IXooe3Xz45L4UaHxcawpyb78jakwf/lIImSam4aDh5PAEfJBCo9INAw==
X-Received: by 2002:a05:651c:516:b0:25f:f52b:3c86 with SMTP id o22-20020a05651c051600b0025ff52b3c86mr15620883ljp.523.1662452985055;
        Tue, 06 Sep 2022 01:29:45 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i22-20020a056512341600b00497a123d8b7sm1583lfr.172.2022.09.06.01.29.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 01:29:44 -0700 (PDT)
Message-ID: <26b96770-ddb4-94f7-c205-3c7b55bfe9c1@linaro.org>
Date:   Tue, 6 Sep 2022 10:29:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: sm4250: Add soc dtsi
Content-Language: en-US
To:     Iskren Chernev <iskren.chernev@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20220903174150.3566935-1-iskren.chernev@gmail.com>
 <20220903174150.3566935-9-iskren.chernev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220903174150.3566935-9-iskren.chernev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/09/2022 19:41, Iskren Chernev wrote:
> The SM4250 is a downclocked version of the SM6115.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4250.dtsi | 38 ++++++++++++++++++++++++++++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
