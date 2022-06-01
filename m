Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13A24539F73
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 10:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350001AbiFAI2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 04:28:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241042AbiFAI2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 04:28:50 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6C0B4B861
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 01:28:49 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id y19so2192901ejq.6
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 01:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wFBenkxcV8H3DIKMgJI5qRF4midP3listcvGBUVIQNU=;
        b=I15Clzvecl8YhknTG4YB7hRjJ2Vkz9e0RfPx2yKyQqUqbPMGqAYAlzufSv7/mz8kXG
         nJ1GhVTmFlbYkJ8kl0mzo+ybXVif+AwBrW4T2ZkXUlF8JEfCQltMiBKpDpsHQP+2FUmC
         j3vCn22DYGs1TbmMpTQs7qud9eRtUOIhH5MM2D6BlM21khsyL0j7iXm2Muz2+oMsNPAY
         td4VZUrLloSGevkV2X80H6msH4gty1BRrFXAdBV36xciyP5m5FEe++928nvmqwf5Xrbl
         Vv0KX57TKN4wKgGkcRWsyLO8ay/lAfD3Z4Vc2fMHemzu1v4GVqUbQT5euNShjxLcfTZB
         OaUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wFBenkxcV8H3DIKMgJI5qRF4midP3listcvGBUVIQNU=;
        b=4c2Dr4LmoZ6Ohhzxb9MXUwKdQiOQWcjR3zy7uq7R/qB3y+zbs7ikiNu7kPQ2VlHYir
         k5zi9a7ncu2cusrPtQM8aN4lkxW7Ymri7eaWbdLxWU8+r/iGPs1ZBnQdXEUpZ9AX1MqG
         NcweJaxl/DD+p8ln4pK6TDIVyy2LFTiFMFUfCRJqCffPRVMfdm+22ku8DieK05oG7xv1
         p4FKDIkwJfqx1Gm/Tu6NZiPjFibR8/nrhrN73ivnoiHXc0ax69ySTrPLhdT+4JbJTzbX
         mtogZQ0oV9tvmZ/0NaVRdl3BK5pp09VsjV8NfkpvbAnJ0r+4cUawpQMFQH/8wQ+W/CZw
         hi5w==
X-Gm-Message-State: AOAM5311qw2hbsU9HhGblmtYHl1/mzhXoQUsfPWw9XRgT3lu+VT0lYW1
        e1PtYPbe5Zix9Em0PF9jvo1Rdw==
X-Google-Smtp-Source: ABdhPJwsvlE0YrfNB1fZakqRmXA83lPY4udQbeayRO2WNTbdfJWZVT/6XrmNTrGsYa6zimx93kkKag==
X-Received: by 2002:a17:907:7282:b0:6fa:9365:f922 with SMTP id dt2-20020a170907728200b006fa9365f922mr56059560ejc.262.1654072128282;
        Wed, 01 Jun 2022 01:28:48 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w2-20020a056402268200b0042ddd08d5f8sm627792edd.2.2022.06.01.01.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 01:28:47 -0700 (PDT)
Message-ID: <b6b84d29-fd4c-a7e7-6a8f-db86fc3bdb29@linaro.org>
Date:   Wed, 1 Jun 2022 10:28:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/3] dt-bindings: vendor-prefixes: document jabil vendors
 for Aspeed BMC boards
Content-Language: en-US
To:     David Wang <David_Wang6097@jabil.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     edward_chen@jabil.com, ben_pai@jabil.com
References: <20220601080856.1548851-1-David_Wang6097@jabil.com>
 <20220601080856.1548851-3-David_Wang6097@jabil.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601080856.1548851-3-David_Wang6097@jabil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 10:08, David Wang wrote:
> Depends on Krzysztof Kozlowski's vendor prefix patch
> 
> Added Jabil vendor prefix for Aspeed SoC based BMC board manufacturers.
> 
> ---
> 
> v2
> 
> - Change the order of items

This is a v5. Please version your patchset properly.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

We have extensive guide how to send patches, so be sure you read all of
them before posting:

https://elixir.bootlin.com/linux/v5.18.1/source/Documentation/process/submitting-patches.rst
https://elixir.bootlin.com/linux/v5.18.1/source/Documentation/process/development-process.rst
https://elixir.bootlin.com/linux/v5.18.1/source/Documentation/process/5.Posting.rst

Best regards,
Krzysztof
