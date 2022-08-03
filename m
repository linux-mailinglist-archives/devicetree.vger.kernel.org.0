Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48D4B588870
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 10:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235905AbiHCIGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 04:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233310AbiHCIGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 04:06:13 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38A122BC2
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 01:06:11 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id e15so15261838lfs.0
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 01:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ZWDDdDUD/SeLY4Y1864eieW1iTgOf5yvfzhjZam9Gdo=;
        b=UNQND0cz6Sg0ZYwWcksx3XWvJ3WA4eaJxJp4yui/nV3EMdbkFSaBpOGwZnon5itiyZ
         eywb/D5cj+hY1KS92HUbT03Xzas2PMYxD5h5Q0Y0DXf4MLApk1H/im+q2nbWQuI/3srA
         JbcxOqZhrwiuK+nf5i/uzmxpRWcKaxLW84wVDO6hw8G1VTgEX9mUuFsTcRgXNuqhqmED
         QejTlDnrX6hYUCBUgZEX4fTFRURYsPw2lSkBZ7uWPUVZXutxAK4LsNlnQ14O34pEI+NI
         I7UYa7XeYFObT79SeRKCG9CY6UvSMaYOTBdtpWbCHenXA7328Ga6gOZ+RoxN5Xg3UHFk
         H/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ZWDDdDUD/SeLY4Y1864eieW1iTgOf5yvfzhjZam9Gdo=;
        b=CiB0U5sYOTs742KwKZrLj2F2izXEYj5VauYgVeffHtrEbWLSgbO00shTKK3dtWSpW5
         k4+ELK2+RnXlMSw86WvA0y1rEnCu54/GUn7Y0DlRUtBFi55KA3B/8G6Ktc9FfHMncRpg
         s4p0UUS+102q5dakE2oibp8NY8oDT+5jpZY70NN2fny4tmYWR3bh8XITB2cjeHVCINQM
         Da1jzN37NKC85QfUDpqR+O3mzwWcQZw2ayMJq1O2gupVjvON2cSB1CH07j5IeOBsbdLx
         2So+gjZ8qLFd7d+VYD8fjnbKQ3HSomHIL1EpxF61crskqjv7UdX8L2tsoBIPWHqb+CvQ
         Bc9g==
X-Gm-Message-State: ACgBeo2q9Rd3MDtbA6yjjy9puz8VzR0E6kwmBFoOOj8X9zGsWFM1qyjx
        88GWThHgJNKYCHRtWxNpZGS6iA==
X-Google-Smtp-Source: AA6agR6YIKvmWjYaexviQIzgrn1Fy4OPtC8l6gFirTc4+daaC5Q/9KztGMbcs4zaIhmKkO0ln/EelA==
X-Received: by 2002:ac2:43c8:0:b0:48a:f0e9:fc06 with SMTP id u8-20020ac243c8000000b0048af0e9fc06mr6238061lfl.458.1659513970078;
        Wed, 03 Aug 2022 01:06:10 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t9-20020ac24c09000000b0048a8586293asm2368309lfq.48.2022.08.03.01.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 01:06:09 -0700 (PDT)
Message-ID: <89469b0d-e6aa-4d60-c93c-a99256f65445@linaro.org>
Date:   Wed, 3 Aug 2022 11:06:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 00/13] PM6125 regulator support
Content-Language: en-GB
To:     Iskren Chernev <iskren.chernev@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Marko <robimarko@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20220731223736.1036286-1-iskren.chernev@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220731223736.1036286-1-iskren.chernev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/08/2022 01:37, Iskren Chernev wrote:
> This patch series adds SPMI and SMD regulator support for the PM6125 found on
> SM4250/SM6115 SoCs from QCom.
> 
> This code has been tested on:
> * OnePlus Nord N100 (oneplus,billie2, SoC sm4250)
> * Redmi 9T (redmi,lemon, SoC sm6115)
> 
> The main source used for this change is qpnp pm6125 support patch from caf [1]:
> 
> [1]: https://source.codeaurora.org/quic/la/kernel/msm-5.4/commit/?h=kernel.lnx.5.4.r1-rel&id=d1220daeffaa440ffff0a8c47322eb0033bf54f5
> 
> v2: https://lkml.org/lkml/2022/7/26/885
> v1: https://lkml.org/lkml/2021/8/28/144
> 
> Changes from v2:
> - split spmi new regulator support in 2 patches
> - FTS and LDOs now have set_load and set_pull_down ops
> - add better commit messages on spmi patches
> - fix sob header order
> - fix tested device info (Redmi 9T, NOT Xiaomi 9T)
> - improve formatting in spmi binding docs
> - sort alphabetically in smd binding docs
> - sort alphabetically spmi pmics
> - sort alphabetically smd pmics
> Changes from v1:
> - add dt-bindings
> - split SPMI patch into new reg types and the new PMIC
> - add correct supply mapping
> 
> Iskren Chernev (13):
>    dt-bindings: regulator: qcom_spmi: Improve formatting of if-then
>      blocks
>    dt-bindings: regulator: qcom_spmi: Document PM6125 PMIC
>    dt-bindings: regulator: qcom_smd: Sort compatibles alphabetically
>    dt-bindings: regulator: qcom_smd: Document PM6125 PMIC
>    regulator: qcom_spmi: Add support for new regulator types
>    regulator: qcom_spmi: Add support for HFSMPS regulator type
>    regulator: qcom_spmi: Sort pmics alphabetically (part 1)
>    regulator: qcom_spmi: Sort pmics alphabetically (part 2)
>    regulator: qcom_spmi: Add PM6125 PMIC support
>    regulator: qcom_smd: Sort pmics alphabetically (part 1)
>    regulator: qcom_smd: Sort pmics alphabetically (part 2)
>    regulator: qcom_smd: Sort pmics alphabetically (part 3)

What is the reason for these part1/2 and part1/2/3 splits? I think you 
can collapse them into two respective patches, one sorting of spmi, 
another one sorting the smd regulators

>    regulator: qcom_smd: Add PM6125 regulators support
> 
>   .../regulator/qcom,smd-rpm-regulator.yaml     |  26 +-
>   .../regulator/qcom,spmi-regulator.yaml        |  32 ++
>   drivers/regulator/qcom_smd-regulator.c        | 400 ++++++++++--------
>   drivers/regulator/qcom_spmi-regulator.c       | 383 ++++++++++++-----
>   4 files changed, 556 insertions(+), 285 deletions(-)
> 


-- 
With best wishes
Dmitry
