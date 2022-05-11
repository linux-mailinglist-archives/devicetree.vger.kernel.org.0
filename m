Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1D88523805
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 18:04:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344230AbiEKQEN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 12:04:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344246AbiEKQEK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 12:04:10 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7851219C39F
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 09:04:08 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id j6so4957080ejc.13
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 09:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wQ+4WhV6k9PLSLRu2ycXl8Jd/rTXVtAwxYwfDpJmHeQ=;
        b=FQkLZaRRby2FjgefqVXwZG5cd45AVoW5mBxIPs4/ACAjlfIUckJBfr7AgNJi1sA2PE
         ReehVHy+e71raZyAeffWYbk7GbIefoArYARSe77wZVjnD+2Lo9wxrNlVlhwG9W+YXezH
         UKayJlTm+Q5LNRo3yWmDq1Oe0fUV42F59X2waMA6k5OADRwy1mCKDOztRyTvlDazQtKy
         ipFNeMcr3uMJvngEOqbq68KVUZ8xU9bvzXIeGbWMwzpaDofS6Snx/XEqAJgtqn44AU6+
         aUfO0pbfTmbtc5tf0dsM3GASHxBAoc1kg8Og7SFY40rubqtkzTDwV9bZQnurARlWEfaf
         rcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wQ+4WhV6k9PLSLRu2ycXl8Jd/rTXVtAwxYwfDpJmHeQ=;
        b=aGEFU/IKHbLo5j14DbqxUkCFbT4k+1IDUIc8wbs5/e5wcVijrrV3Lk3c/2KTBXZ9Ng
         XdngUuDxpFLEuHHniZTMifo8XAZVoQmRD4Gfj8Ik7oaX4MzjQ7/rtjAUW9k7epwk/j0L
         GYvwNMJMjZzTDpYtEeNDd/11Wsl1vAJPTZeqtEc/gqx+MTaS5nUW8oUfT5+arU9sf/VB
         513fCg65HPSbJh3GW+t4IyI0G3MVWSOAI6we78K507tVx1TqNMngTaUNSgYvJZVGC6M5
         FQxbzyzTdXVKFwuSFGIPYXUu8jc2ATSXAJNTs2DbI1REZYIRoSxvafc8iL1gBhiBWAyk
         tjWw==
X-Gm-Message-State: AOAM531uD3qdjq7S5ET0tP23t2PIab5YcVI1ZoH6an8OJ24qxKuJI5bu
        WX+z1If6Nr9Jsq47baEhrepO5zVsa665jbe4
X-Google-Smtp-Source: ABdhPJyzXUV5jsqnDfWfN4VVucH3ddXpg1wmvj8zlxv9ouygUIznS3UcqdagiJVmiKJiJn3K6R3VJA==
X-Received: by 2002:a17:906:dc93:b0:6f4:6a27:41ed with SMTP id cs19-20020a170906dc9300b006f46a2741edmr25797324ejc.36.1652285047009;
        Wed, 11 May 2022 09:04:07 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f19-20020a50ee93000000b0042617ba63b1sm1325703edr.59.2022.05.11.09.04.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 09:04:06 -0700 (PDT)
Message-ID: <9dd9d22c-6933-3790-35e8-8de197d05d39@linaro.org>
Date:   Wed, 11 May 2022 18:04:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/3] MIPS: Loongson64: DTS: Add Loongson-2K1000 DTS
 related smp support
Content-Language: en-US
To:     Qing Zhang <zhangqing@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc:     devicetree@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org, yangtiezhu@loongson.cn
References: <20220511083007.17700-1-zhangqing@loongson.cn>
 <20220511083007.17700-2-zhangqing@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511083007.17700-2-zhangqing@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2022 10:30, Qing Zhang wrote:
> Add the device tree node and connect it to the CPU nodes.

>  
> +	ipi: interrupt-controller@1fe11000 {
> +		compatible = "loongson, mmio-ipi";

No spaces in compatibles. The compatible needs bindings.


Best regards,
Krzysztof
