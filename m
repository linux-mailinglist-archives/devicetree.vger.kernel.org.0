Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A741505323
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 14:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240334AbiDRMzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 08:55:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240261AbiDRMzJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 08:55:09 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ECEF65DA
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:36:20 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id s18so26698871ejr.0
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KIwsXQoVYuaJT+XhBvopyVp04YidsTycNWZlsexYoV8=;
        b=TDZPLnwCwj43QLyh01A29lvHe9rB0Yzy9mqnx7koLAdQ2GcZz1hXFcZe9lQ77HpV6p
         VuvSPHruw/fsTjhhmVnE+15WnETzgfSkF56IFI/nlaffQzJqcuOVoyHHtq3jAI6jRtmR
         bHqAoIR1KdYspNc1vE5hbtev2jK4G0rWGTUB1QYGxcU0VMOnrckaOimd9YE90mDRggVw
         sFaoz9Ls73gPsMBAZK3/phasY95gnv0EBMQcrmppO7Uf/zN7n/g3ondTXXj1Q+Bb9nMK
         p4e1c/5KqMmMr7cAYg21hZYR0TG6BHuswrce9gd3bkVuRV1Y8kmJBJr5/DKo3CWQNze9
         Plww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KIwsXQoVYuaJT+XhBvopyVp04YidsTycNWZlsexYoV8=;
        b=z5krUaRylBMoSWB6S0kU4QiiLOe8mDYlHd/rK82/BZnmj1wBBr5/SK0ft/5EELxuEE
         eAEiimSYPpEYFc7fq51EFLBf6KtLBjJlnaxn8OUvHgDjc9chYEa2w7AoR6/6GpwDAgSP
         pwfg7M2bIIEDiysUHHcPdFbLEilWH5GZY6X8w9jsCLGR+Bf/fbAzY3a9l+i5A3Je6hCo
         7eODGJS5MMe9k7LD3bhrKtBHTLQZrP81vpHMdfXDXjCdfsmWSaZ+p+VPQ0Z4SeMP4pjl
         alFec/s9hM082oA1A7JYQDGCqTAQA/86iCjis5iC/a0T0Z8wmkd1z1DAxSGJsx6Y0iSf
         dr7Q==
X-Gm-Message-State: AOAM532J2tgEN4AaLEs+y8TbGvNLhh7Aaq6XCjvFBkNST7U3X/9BNcVE
        51NYNJ6tMcKmEkj8NQUIdYA3ng==
X-Google-Smtp-Source: ABdhPJylYq9wtloVACt/9TIMLxl8PbADYHU7rrVgCfap+famI3Nog+m29OKqmQCeEkz5lghiq46Tug==
X-Received: by 2002:a17:907:2d90:b0:6e8:720c:d8e1 with SMTP id gt16-20020a1709072d9000b006e8720cd8e1mr8882601ejc.514.1650285378686;
        Mon, 18 Apr 2022 05:36:18 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a18-20020a170906671200b006e05929e66csm4539348ejp.20.2022.04.18.05.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Apr 2022 05:36:18 -0700 (PDT)
Message-ID: <2b0f8488-0fe2-80e8-1b49-a3eadbc8dad3@linaro.org>
Date:   Mon, 18 Apr 2022 14:36:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 09/23] ARM: dts: qcom-msm8974-fp2: Use &labels
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220415115633.575010-1-konrad.dybcio@somainline.org>
 <20220415115633.575010-10-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220415115633.575010-10-konrad.dybcio@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/04/2022 13:56, Konrad Dybcio wrote:
> Use &labels to align with the style used in new DTS and apply tiny
> style fixes.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  .../boot/dts/qcom-msm8974-fairphone-fp2.dts   | 579 +++++++++---------
>  arch/arm/boot/dts/qcom-msm8974.dtsi           |   2 +-
>  2 files changed, 277 insertions(+), 304 deletions(-)
> 

Unfortunately you duplicated quite a lot of work :(

https://lore.kernel.org/all/20220401201035.189106-7-krzysztof.kozlowski@linaro.org/


Best regards,
Krzysztof
