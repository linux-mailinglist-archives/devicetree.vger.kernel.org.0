Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05136629E1C
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 16:52:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbiKOPwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 10:52:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238511AbiKOPwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 10:52:34 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD1422DAAD
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:52:30 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id l8so18032999ljh.13
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qv1jQJ+HAdTvDoHEWeiJyxCYUc1W0oMj7+9QSvPLhVc=;
        b=by67cHmdJG/Y3MLIFsigEaHI6UU+//XXwrX3/Ut83VA+Cmpe8/MUNVfjV21llKKtiI
         nx7MbqtWD/pTgQIjfINnM778dG6FGptovgryInpbKTk5tzwwEhALKRvxrnybAjqGoZCW
         VtmgjdS7Z4M7h2d43uAphVjmqQyPldFRAbVBW6O3ErHeYluHYPet2100OI5zksptMpI8
         Ol6EAbdBAhP1H7yR9auIqrabT3cBB5yO+mc1a82AR4U092w4gXTHo/y4lFjCsTzNRkAr
         +PpmDROj/OzHQMft5k3DIgL62g4gc2asRAQCKKTB+fqkd6rycNH5GF3EimYh+tNPfDd5
         YhmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qv1jQJ+HAdTvDoHEWeiJyxCYUc1W0oMj7+9QSvPLhVc=;
        b=xqkQaCP1SoBP59py4FWvnIbaElhGyN5mzKQq5x1uWfQPBdFsZD9B8ZPnJSgwa1Ww+m
         C7iCuIb5PKTwWFu2MyVmZ6SZgO7fxVJuR3tjtKSoGgC0kU7HQUvkzqK77DHY7h5VCuzj
         4UI2Hi9a64sCXPzYNeF2mH9M/SbEjscAgEMCjCXWCL7bf5buLaSsaal6BmNodtZV73+o
         S6vtPlhMz7AOSOIChvUL/3s6EhxuCf4XoMfT1CSsBRN6p6aaif25sROS/WKlTjFwgiQm
         8oKG1oYFMAJA7IL0ByjbM9UrCtT1a1YjTlvtN5Bnhe8gN2FKiI5rx6iKqOG0n8X72PBq
         zIeQ==
X-Gm-Message-State: ANoB5pl9GouO5Azvruz4nxCnEz5o6jV+6FT2ntwIgw478YYNoKg80LeV
        /Q3IG1bjuEnRBQ2XDfEQQNTJjQ==
X-Google-Smtp-Source: AA0mqf7gWLAjDp2it8ozEEeNxtZ/0E2c3yVOGMOdPqQ9nMgKSfpCDyG2szboeSX/KAVBrxbsqEMLzw==
X-Received: by 2002:a2e:a401:0:b0:277:37a8:ba87 with SMTP id p1-20020a2ea401000000b0027737a8ba87mr5799824ljn.14.1668527549201;
        Tue, 15 Nov 2022 07:52:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f27-20020a19381b000000b004a45ed1ae21sm2243842lfa.224.2022.11.15.07.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 07:52:28 -0800 (PST)
Message-ID: <63f4d2eb-d681-a523-1a5c-9f727c3ddc7f@linaro.org>
Date:   Tue, 15 Nov 2022 16:52:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/9] dt-bindings: arm-smmu: Allow 3 power domains on
 SM6375 MMU500
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     patches@linaro.org, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221115152727.9736-1-konrad.dybcio@linaro.org>
 <20221115152727.9736-2-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115152727.9736-2-konrad.dybcio@linaro.org>
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

On 15/11/2022 16:27, Konrad Dybcio wrote:
> The SMMU on SM6375 requires 3 power domains to be active. Add an
> appropriate description of that.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

