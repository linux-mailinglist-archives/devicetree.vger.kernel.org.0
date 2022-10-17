Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDD87601926
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:15:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbiJQUPf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:15:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbiJQUPL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:15:11 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5D4D13F69
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:14:38 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id a5so7399220qkl.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AJNYfqxtZnChw9cbOfNCDV05T7F1NoqGmT3O3gZzEBM=;
        b=VfJr3OlRU13ehHMlkxPfDyfREWIYoxHXSKik6aOMvOcvPIw/0IOmWCv04ArbYSCBgX
         gjCWQ27fY/UUfgK5FAoGirDZpg6Yfcah0UB+2Idf5V5HHrzhNI5tAq8rlqhA/kdznWeL
         guBj2o4XMZ63T9/P8pTshLuniEEAIRwqCSv8xsgNdlJz+gsL/9zpI40eDVibOWal2QvB
         wRR3ZCodiBADpKHKF0fU1fxv34l7JV1tR3xmEC9oxDfAbQOPxmkHHdgQm6s4Q4SUBOil
         3uDBSw9AbMBrJhjJkP47Gtf91PIhOaIN79/jX9so3PFdJeq0qoktVrGT9ULI4T7+W0lj
         nIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AJNYfqxtZnChw9cbOfNCDV05T7F1NoqGmT3O3gZzEBM=;
        b=YeGApmrIGUXQzv6777eeObOKWTtDSPEptpLPd+o35cReYylHWWHvOIOxOt7VqYvNFM
         cHwG60B7R5EDUM5LtdWZa4Tz91SuaYQ3REuIi1b36E/xfLxO+Ne9poeuZoM0nXcnG0mH
         Siz/kNCR0XGuKoIFc58mtSXyUMHaoE00L7r/YComiQZxOjdocekYOjudpALKBc+vu00A
         FtTzWau7TIAhPGmPk9zDxlVBRckMbSTispTuhcKglRxFT0WY7cBCDuVlq7MAtXJEjVSG
         YGxuPErGPoIOAzSfOWnnPQNcGBsEJx7Cw4QfvakzVqqKLokZdJVLWBIbcLSaBTsO+isn
         Udjw==
X-Gm-Message-State: ACrzQf1VBIW1QgT7Isj2g8nh4MK0rzVVxGbTMRK08xN0IfQsE+RGJgqZ
        hsUJuZZ7Q6GQQAYoqjr9P1TbMg==
X-Google-Smtp-Source: AMsMyM6nbM3QyrJQkf2xsIjrCZ17eCwlmopsJMFJeXQXdnYELAZ/yXqmTnhCtFDRYPk0U3iHfdmd7Q==
X-Received: by 2002:a05:620a:d8c:b0:6a7:91a4:2669 with SMTP id q12-20020a05620a0d8c00b006a791a42669mr9007086qkl.269.1666037596372;
        Mon, 17 Oct 2022 13:13:16 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id x7-20020ac85387000000b0039cc944ebdasm489188qtp.54.2022.10.17.13.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 13:13:15 -0700 (PDT)
Message-ID: <3e7e6b3d-1ba7-ca89-60a9-e63d9856e497@linaro.org>
Date:   Mon, 17 Oct 2022 16:13:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2] dt-bindings: mfd: qcom,spmi-pmic: document rradc node
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>
References: <20221017185105.2279129-1-caleb.connolly@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017185105.2279129-1-caleb.connolly@linaro.org>
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

On 17/10/2022 14:51, Caleb Connolly wrote:
> Document the rradc node name, like adc-tm it's only used on a few
> platforms, so differentiate it from the standard adc node.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> 
> V1: https://lore.kernel.org/linux-arm-msm/20221016175757.1911016-1-caleb.connolly@linaro.org/
> Changes since v1:
>  * Add a new node instead of using the adc@ node
>  * no longer depend on Luca's patch

This is not what I proposed. The node name should stay adc as it is
generic. I propose to do it the same way as in
f4b632da13cf0ee39cdbd4ff08d1961ed50e3c14

Best regards,
Krzysztof

