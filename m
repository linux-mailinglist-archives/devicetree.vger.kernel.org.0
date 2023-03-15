Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F33B36BA7ED
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 07:39:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjCOGjA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 02:39:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230259AbjCOGi7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 02:38:59 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78677AD13
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:38:55 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id r11so19749961edd.5
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678862334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WgUA5CBj+bIEepqH5MtjCecA8l3Z+CMPwZZRyCaxM+s=;
        b=RZeWq6pIBxpuhHOtkNBaFRxPoG7LqH3rTTstr2EZypXSJ5cuUiTod26UFbuntuUy8H
         HZwH0IGZydrjM/Y8zzFaeGrFc6E0qglwHlVDNsdbgNnHBbISSd0BCUKwJQ+JMGAeglCJ
         JnF7d7vZM8CcqZUtNTw7j/5Sg2j8nbNS5cOmwvxvnA87qqnoeYWYALpnXoCdSJufC2El
         rZHGkXaO00n7NgEEWju76BqLsSRyVkHv5VknoQdsTzDRucNNryg+eTSad1YDQ2k90v22
         6iEx9gPUatbwrzBu013xlpHQyjFAD2mo9khCiQ4LtSeUn8nmVb6GiFBAm5HufPPMNprK
         hbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678862334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WgUA5CBj+bIEepqH5MtjCecA8l3Z+CMPwZZRyCaxM+s=;
        b=r4zhQCO6msHwfLxHdIOUqWr6qaitQ8nNAXNhNn7cjsnvDgAqJDLuJg7Sljs5vBs08P
         a9YOZv8YpEpu68IzXWq2t4ihM/RLsoTKfoZftSzWeTCVz/+7cULp/X08kZbuBgFaZQ76
         wYQGgUgqey8T/7H0W78Jp0Eo+wBsq3K2JXvw45IseU6XKTegrEJw2LAQl1zotqdcNuBs
         OllqTtYjfq1iw9g91ikjp2WhoTQ72axnh9U+FIChNFmlyRLbIwy9g00fa/wPJQBFLuom
         qHKHKZ2J2wNJulGU9RoaKFyUwaUrscCWdZFhsQYyUNA78s/PBQy2UAEo5rDdabsIMIVv
         TrkQ==
X-Gm-Message-State: AO0yUKVhsMz1gEWsk6FEyMdlv6LVruX/OWzGjzMZ8cLi4eawuYHOj3sw
        GXx/ADkA9OqWrA5GuNWmvwbh/A==
X-Google-Smtp-Source: AK7set9HIXoLlZmtLmKnOyG12Uun7Rm2xpw5Yo1/K2QQZL+uxTyFuYo5fSRiRUdnIb+otszNxDa85A==
X-Received: by 2002:a17:907:a649:b0:8f7:6ea6:b451 with SMTP id vu9-20020a170907a64900b008f76ea6b451mr5680613ejc.2.1678862334028;
        Tue, 14 Mar 2023 23:38:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id cb17-20020a170906a45100b008deba75e89csm2041781ejb.66.2023.03.14.23.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 23:38:53 -0700 (PDT)
Message-ID: <d6f7a967-a0ea-c5d0-93f5-683e02673ed1@linaro.org>
Date:   Wed, 15 Mar 2023 07:38:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: cisco: add device tree for Cisco CrayAr
 Argos.
Content-Language: en-US
To:     Daniel Walker <danielwa@cisco.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        xe-linux-external@cisco.com
Cc:     Marcin Wierzbicki <mawierzb@cisco.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230315010920.2473206-1-danielwa@cisco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315010920.2473206-1-danielwa@cisco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 02:09, Daniel Walker wrote:
> From: Marcin Wierzbicki <mawierzb@cisco.com>

Also few nits: subject: drop full stop.

> 
> This adds device tree include file for Cisco CrayAR SoC and

Do not use "This commit/patch", but imperative mood. See:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> device tree file for Cisco CrayAR Argos EVB board.
> 
> Cc: xe-linux-external@cisco.com
> Signed-off-by: Marcin Wierzbicki <mawierzb@cisco.com>
> Signed-off-by: Daniel Walker <danielwa@cisco.com>



Best regards,
Krzysztof

