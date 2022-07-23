Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DEE557F0A4
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 19:34:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237897AbiGWRd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 13:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235989AbiGWRd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 13:33:57 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAB331900C
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:33:56 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id a13so8529376ljr.11
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gtQ14uIFjSRWKjyHokB//t8/r+71OfqgVuwkNcmPeoA=;
        b=ESMwFonERbuKy1tCSV1hQL5WH+aJhXNLZRY/Mbbh/cHLp5d87ZI0B/mbISmXRxxSzG
         NkKTrbmSHJ9XNEirQZA8NAF9oQZd1NKbHheggMUejjbj8x8fFj8bkxp7MyU5dpWKothH
         4J1NxZnLs+IkrOh2X1cNGvP6na0RnJ30+yLZ0L2RZdjMKn27lz5WocVbcr13nbaUmiEe
         fA8hI5/9xbAS+ZQcHzH5+Gj6U85RWj9+MHg4MKdIrxsQtNBqXc2IJT4xWrU2JnZdV53Q
         vK+edK+yMFXVOTLt7J/fO1KfG6vGuRk0GizAGrmzs1YwlxKuUfQHW1TefPBoiv/Qkz9s
         3suA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gtQ14uIFjSRWKjyHokB//t8/r+71OfqgVuwkNcmPeoA=;
        b=BEw58UXbEaOK9RI8sKi5ORtZ9ze5B+7/rGgj7BQd93ecnEdZrL/cGXxXuHEO+uOCL6
         mc/q4WW7pHc1LLfB468R2I8YobWKNLU60At81Se93N2PI4zvsbaRmhBDLm5JBnzRHhxz
         Wu1xX0T/jG8FYTHc4akWn/rENn9p2CyPFwkJ6jHBY219DOAVXpmFmUT5sS/fPvVbP4Ts
         6U/KkLshkaGcolqInYf88EFt2KY7Q/b43TG4P8TGSqcAieaKViQWfeCWuFXABAZ8gMZI
         +o19PTh0DHMVmyS1DELQsjIAkSQjQQ/QaCnYDAbSQXh9eC/XAgik0HTcsfHtZ6ppB1h1
         58vw==
X-Gm-Message-State: AJIora/jH6mN7f3t/RlNQXglBdBI7spj7vXEU/r5Z38Jh3XQKBfRIT4q
        BTXi22HLDJQlRZ/zai2g0IGhnQ==
X-Google-Smtp-Source: AGRyM1uU1eUauciMSqDhYkv5IwoplxEQwBcf8zmfZUOEgmhwKkBdpalR6T+snsJt3pQyFxc3nxS7QA==
X-Received: by 2002:a2e:9c86:0:b0:25d:fe25:3490 with SMTP id x6-20020a2e9c86000000b0025dfe253490mr588675lji.463.1658597634910;
        Sat, 23 Jul 2022 10:33:54 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id m2-20020a056512358200b00489d1896c06sm1756453lfr.125.2022.07.23.10.33.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 10:33:54 -0700 (PDT)
Message-ID: <576bcc5b-0587-1059-961c-4e35bbfcf392@linaro.org>
Date:   Sat, 23 Jul 2022 19:33:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/3] memory: mtk-smi: Add enable IOMMU SMC command for MM
 master
Content-Language: en-US
To:     "Chengci.Xu" <chengci.xu@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220723031955.12552-1-chengci.xu@mediatek.com>
 <20220723031955.12552-3-chengci.xu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723031955.12552-3-chengci.xu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
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

On 23/07/2022 05:19, Chengci.Xu wrote:
> For concerns about security, the register to enable/disable IOMMU of
> SMI LARB should only be configured in secure world. Thus, we add some
> SMC command for multimedia master to enable/disable MM IOMMU in ATF by
> setting the register of SMI LARB. This function is prepared for MT8188.

Could you not Cc non-existing email addresses? It causes annoying
bounces every time I deal with Mediatek:

 550 Relaying mail to srv_heupstream@mediatek.com is not allowed


Best regards,
Krzysztof
