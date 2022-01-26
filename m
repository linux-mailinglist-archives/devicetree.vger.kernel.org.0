Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE71C49C715
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 11:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239597AbiAZKHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 05:07:09 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48760
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231960AbiAZKHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 05:07:05 -0500
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 10EE13F1A4
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 10:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643191624;
        bh=oThQwKFK6XtH78HFKeqJt+QV8RxriJyyesSRLsPqsDo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=X6VInlb9equJdSVZo/rLFFxsxpesnnkmZgsN7jIF4D/pAz7SDZccFwL9/otbb7R09
         BgL4/EyzU0SWgLMaFD2iJ1DPzvaka4h3yGCRu6kILu7Hoj3XyAmLGeABZbAPsckkBh
         5Vy7wRLlhSFduMiYu2AZiQVTz2Y20+0mxDIWWLnztkBnbolxVLXfi/cYtMPJqcwjyh
         SnPX+A9NU3hAaf/2aiKTPTqIyUj67Am7SE+jJfowQmS7sP7aFCXBB6tO3/8ENnmGlR
         52onQDIzoiarrCRpkT1g+F201JaX2qB4cM0kMQYuZ8UIdPeSA6hvVPpctUFT6iwB79
         2fwP3GejNVSzw==
Received: by mail-wr1-f72.google.com with SMTP id j21-20020adfa555000000b001db55dd5a1dso2577553wrb.15
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 02:07:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oThQwKFK6XtH78HFKeqJt+QV8RxriJyyesSRLsPqsDo=;
        b=nMjKUCZUbKqL18fMP4m1lhVNW0hBQ3bsCAcFCj7wFmxj92QRQiGqoLHl1jQLIt/HVS
         s5s2+MLpOsJreC3togOJ3Pb1j/lVc/IEB/mYNqONJxvJeoBarXG5+U3T4Wipexb3DXc1
         zxb9hjqcQEenw4tNjpIrKyBEFZh6QpWMDSfU3BeLb2iuSIfWLkPPdm069HTGRhZZVTsu
         etMEwO4mZefen/PbGjIELoz7uAiQmY+1DvYJl0hTNee/diPuOvJ1JLF0asb5WdmzDdoE
         BinjfFIXitPBypjB0pbZVGpSsc1c/XjrOXVRy+z4Uew1udVQHFIqfPAjNwpTjjoGqJ3S
         on/A==
X-Gm-Message-State: AOAM5318B6rJ8uLnmyla5GdvsE1vGsapPo7C+fB3SkUBG4+QoGcrktEu
        Aeyq2isK+CNjoeqToZ7tPTOJTRW1zxGPFjWFrMqxpk4UFdX774dfLjlfid2UiGWY3zOip76H+nm
        acd74FEQMitgn6fK3MrLWBCmtMqHg9RQU7btMEMA=
X-Received: by 2002:adf:9dc1:: with SMTP id q1mr21173668wre.18.1643191623807;
        Wed, 26 Jan 2022 02:07:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxV0sFlu+SrQTxQBE2KhEDN+8zL3JXHMXbU1Ir6hw/UdQcRSePD5dTyyFBY+EHUljlB23+Ibw==
X-Received: by 2002:adf:9dc1:: with SMTP id q1mr21173645wre.18.1643191623674;
        Wed, 26 Jan 2022 02:07:03 -0800 (PST)
Received: from [192.168.0.60] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m4sm2765984wmc.1.2022.01.26.02.07.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 02:07:03 -0800 (PST)
Message-ID: <c1ad0ec0-74c2-08fa-ecb8-ea652cd96849@canonical.com>
Date:   Wed, 26 Jan 2022 11:07:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 03/16] dt-bindings: clock: Document FSD CMU bindings
Content-Language: en-US
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, linux-samsung-soc@vger.kernel.org,
        pankaj.dubey@samsung.com, sboyd@kernel.org, linux-fsd@tesla.com
References: <20220124141644.71052-1-alim.akhtar@samsung.com>
 <CGME20220124142905epcas5p33a863799819fb904932d2e88c682940a@epcas5p3.samsung.com>
 <20220124141644.71052-4-alim.akhtar@samsung.com>
 <a611a070-4932-1691-1f20-7cfa8bb96cc1@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <a611a070-4932-1691-1f20-7cfa8bb96cc1@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2022 10:13, Sylwester Nawrocki wrote:
> On 24.01.2022 15:16, Alim Akhtar wrote:
>> Add dt-schema documentation for Tesla FSD SoC clock controller.
>>
>> Cc: linux-fsd@tesla.com
>> Acked-by: Stephen Boyd <sboyd@kernel.org>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> 
> Acked-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

Thanks, applied with all other clock driver changes.

Sylwester,
They are on separate branch, so I could send you pull if needed for
conflict resolution. Just let me know.

Best regards,
Krzysztof
