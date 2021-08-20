Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF223F2C6F
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 14:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239917AbhHTMti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 08:49:38 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54844
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237844AbhHTMth (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 08:49:37 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 80FCF40766
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 12:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629463734;
        bh=e6+/LPJwCnWwvmlU9AwLblFP9pPUPAQRXF2MXzGKarc=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=IRWeyC9tM8DU0pjZ8OrWJow5DXutX9MwbWU48QGNjqYfXoMoexInKuT5JOjWt4zvN
         CXO4xW8MHoCr0Mzyx1/yHgQD3R2SFzzQreS79ewNcchGF+BdnnRvVBrh4NEgiJbK+2
         QXgOQgdYpm0BYV11CS7gG5Tn8AjVFup+LJMJ5pG4xe3qpCHBPaHHelVUCo2h3m+5HO
         dHjBKvF/PfNd9ALaKYwJoJ8KlcWQH77IUCOl8LVe7NzPAp090nNEtosq7uP1bjSz/M
         nMaTMGtmWzQhrNEng95kVeH4pNeaWcffV+wT0erjaHTBPOR7CGn7RvTnvA7abXEo75
         +58sjspfTHBEw==
Received: by mail-ed1-f71.google.com with SMTP id bx23-20020a0564020b5700b003bf2eb11718so4472452edb.20
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 05:48:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e6+/LPJwCnWwvmlU9AwLblFP9pPUPAQRXF2MXzGKarc=;
        b=bINZ8CPdNSv0/Cf7Oob0JV3aJA5TiVmOi43ucnFKVlFgDGXW/1oXv0OiLwzitAvldX
         e315rxgRGt3Jqm+vid7fXLRDX1jVWznauFwquzcrN44bDmi7UTwqgfdzapDmgCt5EMxa
         nsnJGZCADIfNIoUtz2fc+OqhkbRDnabgU5/eyeoIWoqnzv5v7saDNO0KVwtKv41HG8AD
         LwkptW92AK3kzRw6lIsJvLW04lE/Dl8lI0DuOf2o4aXZI3p2FEzOMYjeLZooB4gWwHZx
         SwT153b+V31V36eR0g/MxhX6MrQdrPhYyiC35/KA87LlggD0k/ZyMRV6FSKF4PwG3KWb
         Ynog==
X-Gm-Message-State: AOAM530jrhy2Afdf8Nph73gV7cFWmN5DKIWuNSv0xtJZ4OiE6NVkHQ5y
        gJDr7mieQImsx4cYsN0zyGQeG2IRw6afB4Ug0W7M2iVjM+Gy3/uU6TAhu0UhR5RKLPOieO+uDR0
        k97Ho4EtnRnlIuz9efdCMdczh02n5Xa+WOM0vdtc=
X-Received: by 2002:a17:906:30d8:: with SMTP id b24mr21486603ejb.358.1629463733476;
        Fri, 20 Aug 2021 05:48:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzEA4LvHamf6qG6ri+17OoBEIe8kZxRulHqECry6rlL5gh8PL/y/8DEYXFpdW+LnXDSZLDtA==
X-Received: by 2002:a17:906:30d8:: with SMTP id b24mr21486588ejb.358.1629463733338;
        Fri, 20 Aug 2021 05:48:53 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id q21sm2800011eji.59.2021.08.20.05.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 05:48:53 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: allwinner: h5: align operating-points
 table name with dtschema
To:     wens@csie.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@lists.linux.dev,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <20210820081645.83796-1-krzysztof.kozlowski@canonical.com>
 <CAGb2v66EnW+iO2CPueauRob+b53pNFEuL6LUoSYb09_TN+=_cw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <adea5de5-30db-72b4-9a65-121b0c3032b5@canonical.com>
Date:   Fri, 20 Aug 2021 14:48:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v66EnW+iO2CPueauRob+b53pNFEuL6LUoSYb09_TN+=_cw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2021 14:11, Chen-Yu Tsai wrote:
> On Fri, Aug 20, 2021 at 4:16 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> Align the name of operating-points node to dtschema to fix warnings like:
>>
>>   arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dt.yaml:
>>     cpu-opp-table: $nodename:0: 'cpu-opp-table' does not match '^opp-table(-[a-z0-9]+)?$'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
>> index b2657201957e..0b6914a165b0 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
>> @@ -2,7 +2,7 @@
>>  // Copyright (C) 2020 Chen-Yu Tsai <wens@csie.org>
>>
>>  / {
>> -       cpu_opp_table: cpu-opp-table {
>> +       cpu_opp_table: opp-table-0 {
> 
> Maybe we should just reorder the name? Name it "opp-table-cpu" instead.
> That way if and when we add one for the GPU, we don't accidentally
> clash on the name.

Although the schema allows such name, but still the devicetree
specification says that name should be generic (representing generic
type of a device). Just like there is a "clock-controller" or
"nand-controller", there should be generic "opp-table".


Best regards,
Krzysztof
