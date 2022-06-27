Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B256C55D83E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:19:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233463AbiF0InE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 04:43:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233222AbiF0InD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 04:43:03 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB622DF2
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:43:02 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id fd6so11920061edb.5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:in-reply-to:content-transfer-encoding;
        bh=jor1QhrStR6ApOvhc3xwWQAdwjSthDn3Ozs36STiHgg=;
        b=K4KabGyJXTkVg+ASQfeTMlCJZiVasxZ+4yTJA7quD3VWJfuOLWnMrxUAcHHR2frMSs
         IID0sxqMMtltp6CDyEqfvw7LzZ/j6bw1Q8aCnuJsF00+b4eSwl8QlhHPI0pwZ6gyMlDY
         ed3PiFLh6AO6ACRs7FETbidpTJ53hyMj5/FvbkNR4FK32BRfRx+zLSJEPirPTgWifC0+
         vM7wlVPgRXeuSFBA6QUvF32XTrkTPcbNCO3gG5zAskyrhuaRKhug7eYLveU6xAh1Jyk5
         kHwaLTCxbjKVR6juwK3jukHBXS3+7pzKwoPyN6P3qcpiFagihLGBdp6ZjqFJQsSuutMx
         ISwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to
         :content-transfer-encoding;
        bh=jor1QhrStR6ApOvhc3xwWQAdwjSthDn3Ozs36STiHgg=;
        b=NNWaf6mLkzCvygoxWUOuFfz/j0sCXhIPox5zii/3Ao68a9lMNDujd6+/V1sVWNthr2
         +sfTemGdz7junK3BdoWJa1sHlV1Z9jm0Sr+AIu2AytteDgVGn6kJpG70x0pkLUWNyXAq
         n/JP+OM4m4Bns1X3Xxi38VNSqIZM5R7c64mFa7//sRw7DDrF82bxKlBrCX1wqlBwPX4g
         ZGcd2IguPT2daICJbsk45zwpvLZT9MRS+2MVoLIdvuPBxbW/kdTRoC5VQ5b1yoQoPfAP
         DWDpU3Lcj3/RnGnJawpBewBXcrJ8s59p7UNVWDYQld3yjNtkmhNYVc90deWrfFrFNET5
         /PVg==
X-Gm-Message-State: AJIora+58z+r6Wd2ZGT8GtoM7tOu1F7sgMN9YPGHyOpEajgUkEd9OXPI
        aYa6mJPYEL09R7e/R3n/yjGHHw==
X-Google-Smtp-Source: AGRyM1sbEnLfVkwxoC7QLbqZ9tBFin9K5ugJw1DSXHMx1l+gpYVvTO3Yq2u2MM1VNGAVIBuuiqNO9w==
X-Received: by 2002:a05:6402:1d50:b0:436:beac:a4e3 with SMTP id dz16-20020a0564021d5000b00436beaca4e3mr15419037edb.191.1656319380921;
        Mon, 27 Jun 2022 01:43:00 -0700 (PDT)
Received: from [192.168.0.247] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j12-20020a1709064b4c00b00722e7e48dfdsm4729709ejv.218.2022.06.27.01.42.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 01:43:00 -0700 (PDT)
Message-ID: <68595b1f-cdd9-6c8b-c68d-59ecfa90d753@linaro.org>
Date:   Mon, 27 Jun 2022 10:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 11/40] arm64: dts: marvell: align gpio-key node names
 with dtschema
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
 <20220616005333.18491-11-krzysztof.kozlowski@linaro.org>
 <50ab1e83-f14b-6d2c-df31-60a255552c46@linaro.org>
In-Reply-To: <50ab1e83-f14b-6d2c-df31-60a255552c46@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/06/2022 10:32, Krzysztof Kozlowski wrote:
> On 16/06/2022 02:53, Krzysztof Kozlowski wrote:
>> The node names should be generic and DT schema expects certain pattern
>> (e.g. with key/button/switch).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts     | 2 +-
>>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 4 ++--
>>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> Andrew, Gregory, Sebastian,
> 
> Any comments on Marvel parts? Shall I grab them with rest of cleanups?
> 

I guess answer is yes, I shall. :)


Best regards,
Krzysztof
