Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38EF072DB85
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 09:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238436AbjFMHvI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 03:51:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240417AbjFMHvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 03:51:06 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109C8E7C
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 00:51:05 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f63ab1ac4aso6280554e87.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 00:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686642663; x=1689234663;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lspr7HNHeaiV2qUAruENxLGYvC88tqFFiuL3gIqe8Ng=;
        b=Bfcv+iym0jAhe6QyFmsR+93MybVzpMSVKmDEm8W2UVLvT6Inyo5pgZzRAJeHte+nxN
         BJK4fExKC1I64Q4mGdw46jdbKaefgxZjaEhyPl+XmOvNr1W3ufD3pDmWVhJDcqBpM7V9
         en1UM0NaP0oDUZu1vnk9SEvH1Qztxcbyb8Cgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686642663; x=1689234663;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lspr7HNHeaiV2qUAruENxLGYvC88tqFFiuL3gIqe8Ng=;
        b=doDFIDGcGvmQnBEQ37yKrGCDJy+3o+H/QAJKhefVRBY1SJULfiIK2M6rw204NfdJ7P
         v+DfwhTvbBwLonmvsMMYd3GPh4wQqoOgXRIDbf1VLMJBxcofXRT2CzRCF7XB5rniNpdI
         bLma32jPkmKvYxLtArKP2fq9HjC/8a8s2JdumnwA8Um//tGm1AsFGTSwcIxeFNgOPnhq
         1MQCZMpjqkkON9n6Xby+cY+7BnliJy3XaOiIgZ4qIg7RwWCzXIY+r2COhp80EM5PFCos
         91Je5BdHg4oi+MeR1LvNMpNHTnk7nbYXH4m00R+oAgIo1saJF7lpsk7AHGuBldlgLzTQ
         Glww==
X-Gm-Message-State: AC+VfDxLDyH8/zVBTtt8md1rPa+BX9LY+MznDNtptihey9ZHZVY5Lf5w
        y5xDWLfsXPXGK/K2K6bF4QGPGQ==
X-Google-Smtp-Source: ACHHUZ5NJdywuSGoAJEJ2wJgaZpkSFmc45vSo0/ophNi9f/UuDLXCQvRZe4z15pqwaznFKAZMCsw5g==
X-Received: by 2002:a2e:9ad0:0:b0:2b2:1373:2377 with SMTP id p16-20020a2e9ad0000000b002b213732377mr3831735ljj.35.1686642663330;
        Tue, 13 Jun 2023 00:51:03 -0700 (PDT)
Received: from [172.16.11.116] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id w20-20020a2e3014000000b002b331e241edsm326177ljw.133.2023.06.13.00.51.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 00:51:02 -0700 (PDT)
Message-ID: <919df40e-2f8a-1ad9-7c2e-9ba9fe1a481a@rasmusvillemoes.dk>
Date:   Tue, 13 Jun 2023 09:51:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 6/8] rtc: isl12022: trigger battery level detection during
 probe
Content-Language: en-US, da
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230612113059.247275-7-linux@rasmusvillemoes.dk>
 <665d9926-2e0f-4b16-1414-f6d8fc487124@rasmusvillemoes.dk>
 <2023061214170504ac9f0b@mail.local>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <2023061214170504ac9f0b@mail.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/06/2023 16.17, Alexandre Belloni wrote:
> On 12/06/2023 14:30:18+0200, Rasmus Villemoes wrote:

>> So testing this a bit more thoroughly reveals that the LBAT85/LBAT75
>> bits do not get updated immediately after the TSE bit is set; one needs
>> to wait a little before the battery voltage detection is done and the SR
>> bits updated. Unfortunately, the data sheet doesn't say anything about
>> how long that might be or if there's some busy bit one could look at;
>> all it says is actually exactly what I've done above:
>>
>>   The battery level monitor is not functional in battery backup
>>   mode. In order to read the monitor bits after powering up VDD,
>>   instigate a battery level measurement by setting the TSE bit to
>>   "1" (BETA register), and then read the bits.
>>
>> IOW, please don't apply this patch until I figure out how to do this
>> properly.
>>
> 
> The datasheet states 22ms for the temperature conversion so I would
> expect it takes about that time.

It's most likely much shorter than that - if I just busy-read SR until
the LBAT bits are clear, that takes no more than 2ms, and the final read
of SR still has the BUSY bit set, indicating a temp conversion being
(still) in progress. But I'd prefer to have Renesas provide the proper
value rather than using some seems-to-work-on-my-desk. But but, it's
probably moot, see other reply.

Rasmus

