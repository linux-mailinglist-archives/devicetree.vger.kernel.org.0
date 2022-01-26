Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F49849C657
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 10:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239192AbiAZJcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 04:32:14 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:48398
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231687AbiAZJcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 04:32:14 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7E7F33F32C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 09:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643189532;
        bh=WceKU4GUOCSUXAyG5xoO2f2JwW1Wck3xgW1eUWgUNkY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=SDlgmTZKpU8HLieknVQEaiujXodit0pU6uByEiUidcmAAE4KlPJDhtKcXcdwWQu3W
         ONg2VHHS/2tDS6/wOJnnuaQtgApJKbXHDBsVcCfsnWf5hnmjyyrfJkQSJdkSRJzi9H
         CE7By8EV2PYT2YSIYxajHFIIFI6m4vjN7nbyW6SzuisfWIn2IhuLn4kwB0Mf8flA+k
         i9jlRCLlG7n4ntVPqXnZfhkkH/pDk0Zjbc/nRxNwuGNiclgwVzDOG5Qu/mQBeEJSom
         usMXAfYM7C/CsdpesRkHxLKWziLpHp1488D0InuSnlLpP3INyFmYxWIj0MKkv5Pkcd
         07gN5NgDUpKkQ==
Received: by mail-wm1-f70.google.com with SMTP id l16-20020a7bcf10000000b0034ffdd81e7aso2989858wmg.4
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 01:32:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WceKU4GUOCSUXAyG5xoO2f2JwW1Wck3xgW1eUWgUNkY=;
        b=qvaKQ3IFAsd+8VbZdiXnPuM5O4QJLoWxVpFIsYEK7dDpZE3/0UpCAjNcTUrFIP3aBV
         0qS/8mlM+yw+Eb1uWld53kZjtGTuGmHWdQscrR9BRoLcJF63YBLut9OXrljk1P9kfiOt
         640q5m/Oz49t5OCN7Xy2pXCBLrX3cukC8cLCDUSnW8nC7SrnD1LmH5QDuxcTpImFxn6m
         /lqKOoMyOJD2tn1MZm+pREM2qJZexE3AHO1QdaKE/RCUgdQe+NVhprKU9QjR/uwUQ5DY
         IRqNuKZsFr9wQV8tlVRqfT7BG3HaqczrHycmcKVXc+/SHMTfRNApeQmFWGq2Go5wYrtW
         8tuQ==
X-Gm-Message-State: AOAM5329kJqbbqwGquLdamWIEtSWAgiwOZLky5MO3HlGOFVrhZTxH7bv
        EPMcNFcfB9iTieRm/1azR6iW7Db3uQWMPPy14V1Pyz/GHtXbS7u7uCnm83crbXiLgQ2kU43+OHB
        oeXOJUo5LiZiW8ypEh+scKDTEYlT7jRO9Hkq6LiY=
X-Received: by 2002:a05:600c:6028:: with SMTP id az40mr6581964wmb.33.1643189532206;
        Wed, 26 Jan 2022 01:32:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwDMFOPvmZNRYM0TyiLEwnvFjDMYmMANHOlkBtlXLzmxVacPKfbDDZu4cfqCpl6GROy6Yd5rA==
X-Received: by 2002:a05:600c:6028:: with SMTP id az40mr6581951wmb.33.1643189532005;
        Wed, 26 Jan 2022 01:32:12 -0800 (PST)
Received: from [192.168.0.60] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i6sm2803605wma.22.2022.01.26.01.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 01:32:11 -0800 (PST)
Message-ID: <31da451b-a36c-74fb-5667-d4193284c6cd@canonical.com>
Date:   Wed, 26 Jan 2022 10:32:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 00/16] Add support for Tesla Full Self-Driving (FSD)
 SoC
Content-Language: en-US
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, linux-samsung-soc@vger.kernel.org,
        pankaj.dubey@samsung.com, sboyd@kernel.org
References: <CGME20220124142850epcas5p2f82243b87386b3d49a9302c87e015d6b@epcas5p2.samsung.com>
 <20220124141644.71052-1-alim.akhtar@samsung.com>
 <d9682f16-13b7-b6dc-5afd-b2d319143de5@canonical.com>
 <063601d81281$5492d620$fdb88260$@samsung.com>
 <bccd3ad0-7862-ef3b-246c-71463baaca52@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <bccd3ad0-7862-ef3b-246c-71463baaca52@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2022 10:21, Sylwester Nawrocki wrote:
> Hi,
> 
> On 26.01.2022 07:52, Alim Akhtar wrote:
>>>
>>> Thanks, applied DTS/soc and pinctrl patches.
>>>
>> Thanks Krzysztof
>>
>>> I expect Sylwester will pick up the clock ones. Otherwise please let me know
>>> to pick it up as well.
>>>
>> Hi Sylwester, hope you will be taking clock changes, or let Krzysztof know otherwise.
>> Thanks
> 
> Krzysztof, can you also take the clk patches through your tree?
> If you prefer to avoid it I will create a topic branch with the
> clk headers and DT bindings documentation.

No problem, I'll consume everything I encounter :)


Best regards,
Krzysztof
