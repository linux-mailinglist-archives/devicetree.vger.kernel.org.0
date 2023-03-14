Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECC2A6B99EF
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 16:39:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbjCNPjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 11:39:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjCNPjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 11:39:21 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DBFBA729E
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 08:38:36 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id j11so63719135edq.4
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 08:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678808279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2TF36IhKXXk6YGbpKzPAtC6Xow3FHaqTfrUySLBDzQc=;
        b=yMenpJmh6h0dQFb0waXpMdvJuTFRjxpgNLTbnbIHK6DlBmKA7EEuy+FwT5rSljD1DS
         pLkZtnO4j1rt/C/KhIBdO42UU0o3lw+ksJ8O837YfjkpSmmkiu9lQHb0Rdvkj9TZvkCq
         b55ApjN6XOlMzG11n9kfI2qHIvMM/g7pjEXZXya0+W44ZUBZTHRM0+j+ReL1wHC1Rw59
         TrbFXzrAqmsT/7DTbFASErPZHb2dUy7U8hxFJ9rFtHl1Pv6T4GTxQWVJ0UdupAHCev8q
         YTlhBSEMOITBXK0vnOts68LGZSoNQ5iR27VnKSD7StKMmQJkzF+APxuaR1vydyklinie
         PBZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678808279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2TF36IhKXXk6YGbpKzPAtC6Xow3FHaqTfrUySLBDzQc=;
        b=JDowzhkWsUOsvGw34c4SyEevFjCBztA5+k0xp7laLNXZXSZjqF7TO6tBjBLED4W8Ep
         ESpo1APagWurM1A2Z7Gljwu6tCBde1oOZPNs5jMhF/LFBTaXbRpCYkmlQVqc23BX/j3j
         cUi8JIy8pXvD19T7A8XZW/lkxJK8uzsyqBLLBebCgEDZzlSEzmYMwz3oT3ANFS3JkrVF
         5a+o2+Ze+7ylbCfzlQfQd6sX40mTGmhLAJUIWiwISuu0+/NLp09j20URPKRwp3vjU1kV
         WVe3tSXCQ7+taMJ3By4WVxRGizDjlw8EAJyf2gtiNty+mvEhqKW7lhV/n/fg6q9w5gjv
         deQQ==
X-Gm-Message-State: AO0yUKUGoxIKOqwgeHosEOgYK6xAMcS+b885R6VXmOFTz3P9SA99Ky2k
        YgjDByEys0DB7LyIQBmxcLexbg==
X-Google-Smtp-Source: AK7set9VlEaie3T4XSfwYSyfX9w55uBK9zmwb3D2/voALZ/htwROvQHC39CEVKRyTaWJmi8tkw0VJg==
X-Received: by 2002:a17:907:c508:b0:92c:6fbf:28 with SMTP id tq8-20020a170907c50800b0092c6fbf0028mr3153303ejc.64.1678808279056;
        Tue, 14 Mar 2023 08:37:59 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id q19-20020a17090676d300b00922f76decefsm1304341ejn.99.2023.03.14.08.37.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 08:37:58 -0700 (PDT)
Message-ID: <21add21d-4afe-7840-6c49-3786f82761d9@linaro.org>
Date:   Tue, 14 Mar 2023 16:37:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v10 3/5] dt-bindings: clock: meson: add A1 PLL and
 Peripherals clkcs bindings
Content-Language: en-US
To:     neil.armstrong@linaro.org,
        Dmitry Rokosov <ddrokosov@sberdevices.ru>
Cc:     jbrunet@baylibre.com, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        khilman@baylibre.com, martin.blumenstingl@googlemail.com,
        jian.hu@amlogic.com, kernel@sberdevices.ru, rockosov@gmail.com,
        linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230313201259.19998-1-ddrokosov@sberdevices.ru>
 <20230313201259.19998-4-ddrokosov@sberdevices.ru>
 <ffebef1d-8447-181b-1890-3e638d399c62@linaro.org>
 <20230314114825.yiv4vcszr6b7m45w@CAB-WSD-L081021>
 <2d9297e9-dab7-9615-3859-79b3b2980d9a@linaro.org>
 <20230314150107.mwcglcu2jv4ixy3r@CAB-WSD-L081021>
 <9d176288-cd7c-7107-e180-761e372a2b6e@linaro.org>
 <c8fecf94-2581-6cc9-955c-324efdc7c70a@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c8fecf94-2581-6cc9-955c-324efdc7c70a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 16:33, neil.armstrong@linaro.org wrote:
>> There are many ways - depend on your driver. For example like this:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/samsung/clk-exynos5420.c#n975
>>
>> The first argument is the clock ID (or ignore).
>>
>> BTW, quite likely the problem is generic to all Meson clock drivers.
> 
> This issue about "public" non-continuous defined was already discussed at https://lore.kernel.org/all/c088e01c-0714-82be-8347-6140daf56640@linaro.org/
> 
> I don't see what's different with this one.

So you are aware that all undocumented clock IDs are still allowed to
use in DTS and they are ABI? Changing them will be an ABI break.

Best regards,
Krzysztof

