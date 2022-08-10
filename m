Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E70958EEC0
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 16:48:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232802AbiHJOsx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 10:48:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232903AbiHJOsw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 10:48:52 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5361274359
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 07:48:51 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id r17so21523649lfm.11
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 07:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Q7MGG/JhDz1hCo+Yj3+IF7giB4w6hr60tquTBJCK01o=;
        b=LinhzaJsrpvYmtMhRVN1UMKuEdrrqt9uV753Bf6YBB22ZtW8JNLVWZLHCtxz1pV7df
         fRkrLH1dyiBv0DFqagWT8Jl2KRvHHtq30GIurffTxrHSZxHznOqyADkiON5LbKe59b43
         dNSAxRVXYKPZl92mscObu5YDeRw8Li/oZsp54iAis+5e/vh7nnduL1Br9dg+NTQSFaEG
         J54/gw9Svfq/d9rZlI3Sji+vSzHlyWkEzeKtxdRF17z2AWhBFPHz3E8eqPbrXJ+cBSdL
         CjLqmg0defBo+g8rENt7nQO+wlguN8x1soSaUJxgIjtyhy5dy88XiCD/VvFES8DA3xnI
         CjBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Q7MGG/JhDz1hCo+Yj3+IF7giB4w6hr60tquTBJCK01o=;
        b=wuMY4poH0Q6Z+HkFxs/V8ZNA77qeJzQMiUu7qYwRaaDPnKENMAe1bZu/PRTmvsYuJk
         2AQASadQTkfIlWipESiEi3hozgbTXHa9IZI28ZG7zeXEIt5k8M/m05Ip45SAmauSB+uA
         mB/jbIp7qfVdXlJQT8pyDvFpIQweehH18ubIETQQb51z8fbwz2Z2/tsJ38lqcCls3DYx
         7T+Z2/z5mK2XWGk61DhnIYF5uWP6Yb4yPtUGXKNvGQSFUnsebViU8bxpQXYNT1pjxFVm
         MKCGXl6VdkhLXhLReBdCLJlLt8y2dfMQDdpv97IJTEygdocD+5BmMme3YLJH/hftZ82A
         qi+Q==
X-Gm-Message-State: ACgBeo0EHpV3bRe2WZbGnC3tlGACx5F1GCdMqPeLjr5HE25zCsRTloeu
        WyEnmsekuPCtcPeTZW0TLWyJtg==
X-Google-Smtp-Source: AA6agR6mphtaBT4wBqYjxE2rrsNOOPH2FORhjukhTqlukW+3+UIzqtcrK9a42UTUOUyrpaXuBUQd7A==
X-Received: by 2002:a05:6512:3501:b0:48a:ef16:2b5d with SMTP id h1-20020a056512350100b0048aef162b5dmr9223152lfs.186.1660142929726;
        Wed, 10 Aug 2022 07:48:49 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id v19-20020ac25593000000b0048a828b6b2dsm363258lfg.182.2022.08.10.07.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 07:48:49 -0700 (PDT)
Message-ID: <7cf24606-e216-994e-9056-6dc5a274e5d4@linaro.org>
Date:   Wed, 10 Aug 2022 17:48:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom-edp: Add SC8280XP PHY
 compatibles
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
 <20220810040745.3582985-2-bjorn.andersson@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810040745.3582985-2-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/08/2022 07:07, Bjorn Andersson wrote:
> The Qualcomm SC8280XP platform has both eDP and DP PHYs, add compatibles
> for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
