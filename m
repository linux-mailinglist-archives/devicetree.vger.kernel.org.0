Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28E34512FC5
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 11:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbiD1Jsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 05:48:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347345AbiD1Jbv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 05:31:51 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870107CDD9
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 02:28:36 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id y21so4823380edo.2
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 02:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ARjzKSJ1boVbUsyHWVKrd/F0BEB2NcYm5tFfBpPw1B8=;
        b=m9L56/TLMjbkJNGkPq0/4vhj93TF6hX+vp42zkfW2sWK6J+QKnIfFwHN5bf58QgSTG
         pulJdYDFBa3+C+wC+swn1KbaLFRuT3LdB+Q4kxG5j9R2uT5h2JhsWqNXJMYOXi4ihFXA
         5FMsjXrtJhe7ScN8oEx3CG1naMEgWrFbbd54hwxFQ3qKJWnL7DjWnz1b0zt73aAh0rTh
         nSBWhRhGPGrO+Jq50N/al+48Y9vUUPSFtlB+avzPMptKnfgEJ63cR/vSzp86P2RIflbL
         vi7R3GSdcWZAQVxjDC4tCOuPeqXqG572fHa0wYZgyDX6IoDPI7nnE91CjA5LRHXgm0ld
         5sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ARjzKSJ1boVbUsyHWVKrd/F0BEB2NcYm5tFfBpPw1B8=;
        b=QVq0/Y5oEiscxvMVuXxWKcZHlVjEoSOWNNB9JnC/N+30rn1CXkOTfNZPE1ujwHat72
         hpD7p9dg2hJyZ8r+GzxOqTsBLnTyIoUd29BYeIF1Gznsp5a6g5GGG92FehBwUniE9S3l
         SM9rAwCv6UUJippeN5SV8I/wZeGiwSXVi/d3AhpnlUyfBR3bEM2x6eUUqDApo7WFGvi2
         QIerP/0uWEJ4kndjWUHHbforCLinsFGJwJdK8zPqfHYrxpFhA3eHequYKw6Y9KVfhxdq
         AwJuDXcV2+2W5JeS93IAZwGLgClH2Yc8c0wdcexc7IbmX5H7AyJFPWAbowoOiSgcm+i7
         NwVA==
X-Gm-Message-State: AOAM531Y+fUTwl1+HaExaW6BupMJhCKYItF9k10B0/hoEECo2Jkm47zN
        Wu/RgTdGfK9tX5BxxUXWcqyj5g==
X-Google-Smtp-Source: ABdhPJxGwsAH2L/Urtc7neXZ8Wk3ukX7a601iUj1Wv389n0WEpH/jegU2zbjfen3b6tiseIIGqbnVg==
X-Received: by 2002:a05:6402:11cd:b0:425:ee49:58cb with SMTP id j13-20020a05640211cd00b00425ee4958cbmr19442993edw.157.1651138115159;
        Thu, 28 Apr 2022 02:28:35 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090630cb00b006e83fb1e6b1sm8118357ejb.100.2022.04.28.02.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 02:28:34 -0700 (PDT)
Message-ID: <a8d73c8f-76dc-c3ab-baf8-fcc253330fb3@linaro.org>
Date:   Thu, 28 Apr 2022 11:28:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Aw: Re: [RFC/RFT v2 03/11] dt-bindings: phy: rockchip: add PCIe
 v3 constants
Content-Language: en-US
To:     Frank Wunderlich <frank-w@public-files.de>
Cc:     Frank Wunderlich <linux@fw-web.de>,
        linux-rockchip@lists.infradead.org,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-4-linux@fw-web.de>
 <918f5bc9-77f6-4d65-7432-ab53aadd6734@linaro.org>
 <trinity-3a10bccf-c3ed-479f-81c8-b48712f34432-1651138074158@3c-app-gmx-bs20>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-3a10bccf-c3ed-479f-81c8-b48712f34432-1651138074158@3c-app-gmx-bs20>
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

On 28/04/2022 11:27, Frank Wunderlich wrote:
> Hi
> 
>> Gesendet: Donnerstag, 28. April 2022 um 08:34 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
>>
>> On 26/04/2022 15:21, Frank Wunderlich wrote:
>>> From: Frank Wunderlich <frank-w@public-files.de>
>>>
>>>  include/dt-bindings/phy/phy-rockchip-pcie3.h | 21 ++++++++++++++++++++
>>
>> Naming - vendor,device.
> 
> ok, would rename to rockchip,pcie3-phy.h, is this ok?

Yes.

> 
>>> --- /dev/null
>>> +++ b/include/dt-bindings/phy/phy-rockchip-pcie3.h
>>> @@ -0,0 +1,21 @@
>>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>>
>> s/MIT/BSD-2-clause/ just like bindings because it is part of it. Unless
>> you took it from something and it is already licensed like that?
> 
> took this with this license from downstream-repo, only removed snps from name and changed name of include guarding.

Then you need to keep the original license, so it is ok.

Best regards,
Krzysztof
