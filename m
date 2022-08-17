Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEE94597023
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 15:46:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbiHQNqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 09:46:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231552AbiHQNqT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 09:46:19 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC4695691
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:46:15 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id a9so19037471lfm.12
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=gQ9ZdHAonv1+cNCneY42f+VkcN8uTabWejW5IY05OD4=;
        b=KTjTHibusJ3Q5B6hEEPhteJ85Ffv8KvOEn3uUw/xQVRdL6Zo1CkYrEOL7ZAC1Tw1Ou
         uU5RufF2Tdvu2+nmf2C0KTfR7A2Igxvxw8T/eUeKx52INZGiEKRka7WEIwxCR2CZ+ZSJ
         e/vQmpHliCd7Cqy1Zy50sfUCIIZLixaPjkqOK/7InUSjMIC23bUaIt6Mck1XWtEetmMJ
         xqdxUZuSJKJ3/glf0Mj/ekPD8QxDCZ/UHom2kzqDSWgHHwSlRbzFsqaKV29BqFV401mW
         L7PQ51pKmSprJ5+3vGlxrNT1VYAzmVYMxSR7p0A1IxGR+jY3AsB4EmseuYJKfMqe6EzN
         W1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=gQ9ZdHAonv1+cNCneY42f+VkcN8uTabWejW5IY05OD4=;
        b=W9TedfrpzeHbM9XF8SMTVx2WNtzn9HC5WTEFjwkuCkDnIx2qxHAffl/VGk8B4zrm4t
         Afa7EbCHyQU/CvDmr4ZaNh5HOFtDMLaVgmI8BVat8JVGQyKwS4zupC7GWChRrKhKqhUE
         jA1vHXol0Y/jT0IPexupHZqNCQ1JPO+06cMM7UmNZoB/AqMWS56dDgq4XrG++8uSFwwM
         6aNO5ocTRYDfhJrlud5phxEzoee2i7rwEuJjT4xuCmmS+WHeEsmenlefpw16B4E+eDNQ
         X79nrcb8Gc9H4odrDkAKP67kWsUS9k7vvv0Twxt5NkQMi8cqyJMnG7VyFtf+ZwbyaaEq
         Rrpg==
X-Gm-Message-State: ACgBeo0uCKgH/P2B0AD8wBXtN1cyFItJzJpbyDC3VVeHfA55KElz+S3u
        xblcqK7d2tVkbBZRi+GCiiD5y1HWeMRBvywL
X-Google-Smtp-Source: AA6agR4vOLQVaDpNaTlrgQpr6MQJs6T1zj+svIXXP/Rtynk4ey8sYo2c1ptChOUd++TTtrnFyrV1cw==
X-Received: by 2002:a19:6b0b:0:b0:48a:e7de:d34c with SMTP id d11-20020a196b0b000000b0048ae7ded34cmr8780224lfa.454.1660743973563;
        Wed, 17 Aug 2022 06:46:13 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1b1c:14b7:109b:ed76? (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id b10-20020a05651c032a00b0025d5eb5dde7sm2151655ljp.104.2022.08.17.06.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 06:46:13 -0700 (PDT)
Message-ID: <64913eef-8b4f-7617-578b-53ddc22bd06e@linaro.org>
Date:   Wed, 17 Aug 2022 16:46:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/4] regulator: dt-bindings: Add Allwinner D1 LDOs
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220815043436.20170-1-samuel@sholland.org>
 <20220815043436.20170-2-samuel@sholland.org>
 <c4ec080a-b8b1-e3a9-c9d7-063e138c9bb8@linaro.org>
 <03de0f7b-9251-a5c0-91a1-5f2b5d41d8a0@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <03de0f7b-9251-a5c0-91a1-5f2b5d41d8a0@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 11:15, Samuel Holland wrote:
>>> +    audio-codec@2030000 {
>>> +        compatible = "simple-mfd", "syscon";
>>
>> This cannot be on its own. Both require device specific compatible.
> 
> Again, the device-specific compatible does not exist, because the binding for
> the audio codec has not been written (and it will be quite nontrivial).
> 
> So I can:
>   1) Leave the example as-is until the audio codec binding gets written,
>      and fill in the specific compatible at that time.
>   2) Remove the example, with the reasoning that the example really
>      belongs with the MFD parent (like for the other regulator). Then
>      there will be no example until the audio codec binding is written.
>   3) Drop the analog LDOs from this series entirely, and some parts
>      of the SoC (like thermal monitoring) cannot be added to the DTSI
>      until the audio codec binding is written.
> 
> What do you think?
> 
> The same question applies for the D1 SoC DTSI, where I use this same construct.
> 
> (And technically this does validate with the current schema.)

BTW, it validates only because of limitation in DT schema. Such
combination is not allowed and I wonder if we can make the schema
stricter...

Best regards,
Krzysztof
