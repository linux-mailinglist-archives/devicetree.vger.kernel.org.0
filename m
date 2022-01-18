Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01EB6492D98
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:42:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348216AbiARSlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:41:32 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36982
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348207AbiARSlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:41:31 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 83FFD40028
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642531290;
        bh=d4x+4xkW9gXvjz8GkGAmId26UTghAa2V8sVHpI1V4fA=;
        h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
         In-Reply-To:Content-Type;
        b=Ra7QNSjMIXNCkgKOKRF9jtLidMIAKnsvSsAO6lk7P01IJlR8X6EUeqHtM5aWuJPiY
         lESaQiKgyLzBfPJ7cRkZeFWdp3dgo4tx51holdH/IsXkupl5CNY6dpAcMZPmTh7Dhe
         P/YNFtPO2rKQkH8Qng7gyjPG7SAcpeWtRjOtZC3yt57pXfbynuBA94L2rfaK+ASNos
         rDOgdB0W2UCKB/zvrzeqS26X8oS2Ss2L40YiG+V53pnHlRGP+PeWtGzn/CUI30jRF5
         4PobN8aBKgugaXRrUb7jMlecKmppk/iRG/wCBwU9vO+6Uy1cIM/F7O9IHavOINLAP5
         5b4hv2Bmoosmg==
Received: by mail-ed1-f72.google.com with SMTP id j10-20020a05640211ca00b003ff0e234fdfso17918636edw.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:41:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=d4x+4xkW9gXvjz8GkGAmId26UTghAa2V8sVHpI1V4fA=;
        b=zQfpWr9Zd60/WJc2S3Im85wcW7B6ldhcF2dOnu01C9uXsbyI+fgi5X51SXqDMklUJl
         yPYwP8LvbmWewgy1vyYe+p9Cb9ztYAeY0758u/Wo21jQVRYwJ6J7K0zPre20WuUhXIvY
         ko1tQr1Lla5t5Y/knQGYvjWBrH1VaZY31nRwgDocxn8M3WusX3hVQmRmJD3IVkWStCgp
         Lfa2YLumhVPqklpRhf0bswBmxvXhdjn/yHxG0uusPXL5UMPvZ9AetJBptnHcMA+S3SGH
         jNC+mb6hIirLckdisaRnSfTDnL7viSNTcqT6LOkGzwJHTaxL1HpcaVyowVZ0lsBVixQZ
         d3nQ==
X-Gm-Message-State: AOAM531RyxFe/7Dk8N/SMobT1LzWhtgPq59xwWtCAid9QTcaicYSlW4d
        KRP92ZMOzO3wnte8gsxkGmOIpSpGWNVDa17xByvXNBpG61OU5npuKu5144AV/37F/HLVv05s+ZJ
        v0Z1TWFjE9hn3aP0zjwOm7aqaOimXSVVWrvGrtmI=
X-Received: by 2002:a17:907:7d8a:: with SMTP id oz10mr21220015ejc.320.1642531290048;
        Tue, 18 Jan 2022 10:41:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxkNLpeCkuJ++ObHkzVuFE7m7/DGI74fZq5o+MQ9EhkoIL7QVnicxdhEZRzU5ffTMqzfAwbtQ==
X-Received: by 2002:a17:907:7d8a:: with SMTP id oz10mr21220001ejc.320.1642531289843;
        Tue, 18 Jan 2022 10:41:29 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c30sm5719152ejj.190.2022.01.18.10.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:41:29 -0800 (PST)
Message-ID: <25795f7e-8e04-aaae-db47-05e5016a1890@canonical.com>
Date:   Tue, 18 Jan 2022 19:41:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 13/16] dt-bindings: arm: add Tesla FSD ARM SoC
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150104epcas5p4ac6fdc739d21c7d7eb2e53e469466487@epcas5p4.samsung.com>
 <20220118144851.69537-14-alim.akhtar@samsung.com>
 <b1bf4b43-639d-c09c-2fb2-0ac58a6eb858@canonical.com>
In-Reply-To: <b1bf4b43-639d-c09c-2fb2-0ac58a6eb858@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 19:40, Krzysztof Kozlowski wrote:
> On 18/01/2022 15:48, Alim Akhtar wrote:
>> Add device tree bindings for the Tesla FSD ARM SoC.
>>
>> Cc: linux-fsd@tesla.com
>> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
>> ---
>>  .../devicetree/bindings/arm/tesla.yaml        | 27 +++++++++++++++++++
>>  1 file changed, 27 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/arm/tesla.yaml
>>
> 
> Looks good to me. I'll take it via Samsung-SoC after the merge window
> unless there are some comments/discussion.

Wait, no, I won't take it, it's not Samsung Exynos. :) I guess this
could go via arm-soc directly...

Anyway:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
