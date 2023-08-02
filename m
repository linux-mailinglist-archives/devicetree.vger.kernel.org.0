Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8952576C444
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 06:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231449AbjHBEuS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 00:50:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjHBEuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 00:50:16 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B00A91715
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 21:50:15 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe2ba3e260so11200495e9.2
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 21:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1690951814; x=1691556614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yaqardF0pb2/HEf8H3F4BSFfwImn9MsiTj+RKr8iF7M=;
        b=dBRE6JLQWDPZSUFSDID6jOWxqb31u/DKaULTPfN1g9VD0mBwq1CKBAtC7hXBRMZ701
         SF8epD3D+d5DnMrbja2CJKZWV+fQ1rFNR2Loh150/FuMV+wz0oVxml3CH2Nxvc/OvlPt
         R7KPbwHAWQyIhyoDav3afhdighd1fW1vosFcVCS1XwrV/xDT/QYswDurPjZzPpoA6pn5
         eb2dFv+JQjFkTO1HWj42mBpioeHql4jrBWULooFkYO8K5OVpyH0SWaMCSj/o59g7g+ZO
         GOSAMRt68Yt+1sM78C8Y92bQzgJxMKmNhDMicMkij7horHdGCvWD4+oectZstryBpI1a
         dodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690951814; x=1691556614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yaqardF0pb2/HEf8H3F4BSFfwImn9MsiTj+RKr8iF7M=;
        b=lZHgLiPDHVy1DQeEcJ8UucKoY8tWDW9i6K9Sv4F0cff0Cfh66dWBxlPxunmqUggeTs
         F/jxLna3RBCfpIyRxukeCO2dx+6o+1qoMxwK9R+EDGzET3lfetu2P0VFM78d1ADr3JOK
         enbLu0w2CZX9AEUT29YxBA/7FJLpiVvLoP9rz57HxdPkIRuztMgAS3Lw8KyUNpTiwruQ
         /U+SEO7c1f3U85AL4GgbmiEwMRLs/S06yJ6dCYK3+v1dUCb0/CqHNA6Ip6BvIE7FPwv5
         SL6jqftqmnR0+ROa2H8W22pbhDKqczIlG1e55ps3wZ8bjXAL577fjjo86RLIrpKJ/sXF
         B5NQ==
X-Gm-Message-State: ABy/qLYFL1cNEbYqPZm3WD86rGLNl+boaiZEzuBb0MMbgkmd8m84TYwy
        5PEiEGE1tsLyriAVQ33NAN7s3Q==
X-Google-Smtp-Source: APBJJlFGNgQ0IM3+wA4Mu9KisUDZJtMLF1CX2PC83Ksm6JaIYzitNCS738ZBU+Yw3HQMD06fF6huog==
X-Received: by 2002:a05:600c:ad6:b0:3fd:30f7:2be1 with SMTP id c22-20020a05600c0ad600b003fd30f72be1mr3558887wmr.39.1690951814293;
        Tue, 01 Aug 2023 21:50:14 -0700 (PDT)
Received: from [10.0.2.15] ([82.78.167.79])
        by smtp.gmail.com with ESMTPSA id m14-20020a7bce0e000000b003fbc9b9699dsm561651wmc.45.2023.08.01.21.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Aug 2023 21:50:13 -0700 (PDT)
Message-ID: <b52c3d0a-7cc9-f606-2e1d-ab44d6ff0b31@tuxon.dev>
Date:   Wed, 2 Aug 2023 07:50:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] ARM: dts: at91: ksz9477_evb: Add missing timer nodes
Content-Language: en-US
To:     Lukasz Majewski <lukma@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-kernel@vger.kernel.org,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230712152111.3756211-1-lukma@denx.de>
 <20230726101902.769f6541@wsk>
From:   claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230726101902.769f6541@wsk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26.07.2023 11:19, Lukasz Majewski wrote:
> Dear Community,
> 
>> Without this change the KSZ9477-EVB board hangs just after passing
>> execution flow from u-boot to Linux kernel.
>>
>> This code has been copied from at91-sama5d3_xplained.dts.
>>
>> Test setup: Linux 6.5-rc1
>> Config:     arch/arm/configs/sama5_defconfig
>> Toolchain:  gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabi
>>
>> Signed-off-by: Lukasz Majewski <lukma@denx.de>

Applied to at91-dt, thanks!
