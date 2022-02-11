Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A37F4B2AD2
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 17:46:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245343AbiBKQqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 11:46:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:47404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351718AbiBKQqR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 11:46:17 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CBA0D6F
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:46:11 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 026FC40053
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 16:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644597968;
        bh=YxosBduSO3gZaGp03eNLZDMC/NBLs1F+fJdwXRbsSfg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=FlQ4WsFnT8LHn2ehInnCXTxV27oEUrSkm7RCoUaCcYMmbaiWT0s0kgHnCQLNL1yuU
         84G2mLJPtm0C9SH9/WcWjA7IOMW4eoDgEz2+4L0KNyDrwgJPy8RMdT1GW1nZoGXAjo
         bTQMoTNPaqlQUOOGoFXgqOav7QjOFp5a2BobUQPeV+PPojIzEOcOkaFBjMVPg+smnY
         ieFset566KjMkIdi+vO/QdV6c1XZyTLHNGH7ylYeTo9M/QXln+hjCGGmxM2qljfqIL
         1KfhEtGSRtPMkL+BAXC/j4hxOPVWcKDCawfleMengctHQGpNicrROok0jNZRSMmbiV
         EWQuDXPQt7GGQ==
Received: by mail-ed1-f69.google.com with SMTP id en7-20020a056402528700b00404aba0a6ffso5683073edb.5
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:46:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YxosBduSO3gZaGp03eNLZDMC/NBLs1F+fJdwXRbsSfg=;
        b=DAqvnoFYOeCHimjCTU/izuObTXRUtu+rPmCGcMF8huEAHOB57vU8Zz/GugZ7ZRwT1A
         opi4kFSbGhDLRDBm/75Di/UMFaNMq7U4/ZeLh2cx6gUh7oMgXkL1iGXZF/rgFGnlUv7K
         V2co9bnRW3r/KGo8aUe8j+scASa4fRvKNZOEZDUe4Vnkb/Wu+8lNc5qz8beQ3GaKvS89
         7AbCLb4k72jXv+XDO1WQ44XijNAFBvqnbLbLJqE/f3GZNh1PDuq+EwpzgcYCErZl4owV
         ct5BmzBjamhVBVqKBNrYBwewkzP94PZ4vYg77V4n3geBXbm3BQgmr9gkmWfivGRYIODR
         h2Vg==
X-Gm-Message-State: AOAM531stzQ2inWuANRFZ6wLOR9tzK810KucVkT6eFwwlssif43FsLAn
        0TAw8aLkDaWv8MoyVxGUyXDhznOkNLrXcoJHmUrzSggVTe+uVyHx5r62NYF8wgnFoARfGN02kb7
        QxTPRiLlqpVHgDChOI9YkOSuy4YWrqcFg7l8dW0E=
X-Received: by 2002:a17:907:760a:: with SMTP id jx10mr2146458ejc.713.1644597967654;
        Fri, 11 Feb 2022 08:46:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzCQMLo7bekR9JiDalKJVPp4p1o4WRdnFgKFrXj+PrAXbvI8p0HPOVADjajCFiI4ufX9F+Glw==
X-Received: by 2002:a17:907:760a:: with SMTP id jx10mr2146438ejc.713.1644597967403;
        Fri, 11 Feb 2022 08:46:07 -0800 (PST)
Received: from [192.168.0.101] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v19sm261061edc.29.2022.02.11.08.46.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 08:46:06 -0800 (PST)
Message-ID: <3986001a-96e3-f4cf-f825-3bc3eebac107@canonical.com>
Date:   Fri, 11 Feb 2022 17:46:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: soc: samsung: usi: refer to dtschema for
 children
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220208194119.46022-1-krzysztof.kozlowski@canonical.com>
 <CAPLW+4m9u4yFz84dQaMxNqCPauW6JTsOWRo5iJrkexHXOOsahw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAPLW+4m9u4yFz84dQaMxNqCPauW6JTsOWRo5iJrkexHXOOsahw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2022 17:04, Sam Protsenko wrote:
> On Tue, 8 Feb 2022 at 21:41, Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> Explicitly reference the dtschema for USI children implementing specific
>> serial protocol (I2C, SPI, UART).  The SPI schema is not yet accepted,
>> so it will be provided later.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  .../bindings/soc/samsung/exynos-usi.yaml      | 19 +++++++++++--------
>>  1 file changed, 11 insertions(+), 8 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
>> index 58f2e9d8bb0e..f3aae7e0e2e6 100644
>> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
>> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
>> @@ -18,11 +18,7 @@ description: |
>>    selects which particular function will be used.
>>
>>    Refer to next bindings documentation for information on protocol subnodes that
>> -  can exist under USI node:
> 
> This whole paragraph doesn't make much sense now, because the doc
> links it refers to are removed in this patch. Maybe it's better to
> just remove the whole paragraph?

Yes, I will drop it.


Best regards,
Krzysztof
