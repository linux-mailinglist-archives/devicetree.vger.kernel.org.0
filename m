Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E90D07867D6
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 08:52:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238670AbjHXGwE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 02:52:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240186AbjHXGvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 02:51:01 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10F9BE59
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 23:50:59 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-529fb2c6583so6132169a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 23:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692859857; x=1693464657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BhmEfKLm2auvLzU1H0Y+LxP11/52EFLaIX+4lk/LSDc=;
        b=uTd/E1u5tM2WP4N5gUw0ZdqO06dkIsLwIzV3VW59B30K7dsNk4+Wgsv/G/VNTusLV3
         WzL44SI+wBc12C3TsBFHCT9z13n+cIfKa925OMquWlob3sVmkvhOiAdIl2bg5En25yAy
         eizvtKqx7N0PElDsXtV19Yo93PqK3v9KfZI8y9korGVDqE0eOnSvcge7cjMBUgIXh0Ib
         XByk9LhlJ1h/ipGeexkoz4snAwTBmFT+kTO8yEb51QProGbuHwkn19ElV7kSJVkwN5VR
         dJlxE6xZ6H+WFjuMFM4S0e4uURIGa1rO+fleNSuxKtTzgz6qvzh/9mvfBG86R00HVwyw
         F8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692859857; x=1693464657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BhmEfKLm2auvLzU1H0Y+LxP11/52EFLaIX+4lk/LSDc=;
        b=SHm9/eLPS66YDSbJbfLaRfVbdWcmcrUQZn2OU7LcK9VULWbcz9RsrT/N9Js+wEYADW
         EtKyJUP/oFAfL0Nc0qkyA4IZ4R8oLmlb/hzdj4KEdk8ur/1JVB1Zma0J/e5WMfV7NT1+
         uPhYPm0Q/qZzvZAiQIbymLH2kWTOUoypK+O0TiVFZewp54IJfMGc4oqTGHWu3emRJNgL
         xd1G1/11oFxdVREbVRn877iWwNKtRFfmna/ggWlRkS4vFtNY6qAMR2l/csObiPuiQzxm
         QBSeSU/SGzxeFkOAkdxUQq4zFe97vmS15VEwtsNnK2FDsaRbKS/FAQROQBwHHAfNcKjn
         fJ+A==
X-Gm-Message-State: AOJu0YxSge5Zm2IAeBv3H9n1jL3b9KsQ8vLJpJlZGMe885/vAgni9KFh
        MO0xg05HvKdLhvxMK1ItTS3hPQ==
X-Google-Smtp-Source: AGHT+IFKOvRo7+2xMvm/brGQ+qgng4Ksbl2gcHnXtNfV23t2a5eGx8+E9rqMZ5Gn8A/xmHc8/noUWg==
X-Received: by 2002:a05:6402:505:b0:523:4922:c9c4 with SMTP id m5-20020a056402050500b005234922c9c4mr11878649edv.11.1692859857524;
        Wed, 23 Aug 2023 23:50:57 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id c22-20020aa7c756000000b00522572f323dsm10023230eds.16.2023.08.23.23.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 23:50:57 -0700 (PDT)
Message-ID: <3362bfaf-225b-0eb7-5219-9c2b365cafe5@linaro.org>
Date:   Thu, 24 Aug 2023 08:50:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [EXTERNAL] Re: [PATCH v6 1/5] dt-bindings: net: Add ICSS IEP
Content-Language: en-US
To:     Md Danish Anwar <a0501179@ti.com>,
        MD Danish Anwar <danishanwar@ti.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Roger Quadros <rogerq@kernel.org>,
        Simon Horman <simon.horman@corigine.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Richard Cochran <richardcochran@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>
Cc:     nm@ti.com, srk@ti.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230823113254.292603-1-danishanwar@ti.com>
 <20230823113254.292603-2-danishanwar@ti.com>
 <d5a343c8-c384-6eea-94bf-e0c4f96e5fb0@linaro.org>
 <a91e7db9-e442-acff-befd-2fa63e209b0a@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a91e7db9-e442-acff-befd-2fa63e209b0a@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 08:47, Md Danish Anwar wrote:
> Hi Krzysztof,
> 
> On 24/08/23 12:13 pm, Krzysztof Kozlowski wrote:
>> On 23/08/2023 13:32, MD Danish Anwar wrote:
>>> Add a DT binding document for the ICSS Industrial Ethernet Peripheral(IEP)
>>> hardware. IEP supports packet timestamping, PTP and PPS.
>>>
>>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>>
>> Really? Where?
> 
> Conor gave his RB tag for patch 1 and 2 in v4
> https://lore.kernel.org/all/20230814-quarters-cahoots-1fbd583baad9@spud/

OK, My mistake, cover letter was not the place where I was looking for
Conor's reviews...

>>
>>> Reviewed-by: Roger Quadros <rogerq@kernel.org>
>>
>> Now you are making things up. Please stop faking tags.
> 
> Roger provided his RB tag in v5 for all the patches
> https://lore.kernel.org/all/5d077342-435f-2829-ba2a-cdf763b6b8e1@kernel.org/
>>
>>> Reviewed-by: Simon Horman <horms@kernel.org>
>>
>> Where?
>>
> 
> Simon gave his RB tag for all the patches of this series in v5
> https://lore.kernel.org/all/ZN9aSTUOT+SKESQS@vergenet.net/

OK, I still question though reviewing own code.



Best regards,
Krzysztof

