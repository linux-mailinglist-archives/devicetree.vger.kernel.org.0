Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CE2857A883
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 22:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240174AbiGSUuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 16:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237788AbiGSUuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 16:50:15 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F3B520184
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:50:14 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id t1so26849354lft.8
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=43sfQayrgoToTOhSwk++OTarl2gj7lHcfEvKyPTmj6c=;
        b=rfXGNGL7+P1GB4g4SjVnjz1PB5ml7Whqa4j5AyM6w0z9RM0qy4Gjpaf33tyLFRKAXn
         LH1FmTScQiGQN769CfNa1fer5Q2Vodip78j+8Jpt8XzlqOCoBYFr3BRQp3lHtmljSpkb
         BH5Ngd+n4zs05zPS2EwUejTmpYvl0OaiBfMO8ubQR5lv4sEVTKLri5aZ33+J785VZHWn
         GKTuRiawDIeZCL4d63PKZbM3/i9+F+mNN8XvVjypws8AkNPususxZNDatGPSvbH9PegL
         duDLG/WNfqUbZrE2JAIR74Jq+dvNQObcoO64LNVRVZZ9PvktmOf5KRTe2ehtz/EfFhUi
         /b+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=43sfQayrgoToTOhSwk++OTarl2gj7lHcfEvKyPTmj6c=;
        b=I2mi1r8xOOgcghKfrFj/sEmjqmPhn56qN24vK6H4y64sQIjNITgqMmMX35TlrEEbWC
         tdf0csvFaXGp8XTH9+qyunZZZauh9DEHo/AKLwTpwdU8lNJX646DtImvcc9gKmDMyfoJ
         NMawId+SjPAdh7bR6npqt35pJFos3ZCY9gpuFgeASD008JQpdrpuRDAJpne8jZw6XLu7
         hidyzVabVuskibBYWPVOtqwnHnSWa0xkl+wTsQ20o3pb9iAt167v9Y+4ezSB/NHFUISG
         q9nFlGrcj9/r+qgKuWwnD0yRDXbktPV4Q1BYHnxGp2dblu/Uqk269Sc3LpWvdiK+NnvM
         vlng==
X-Gm-Message-State: AJIora9/3ITUG+nhwxDsnPwnXi39CA802JAwV9GizxNdj+jul9L772Tz
        feRrJscsym9jcnnubIyEUR+ZjQ==
X-Google-Smtp-Source: AGRyM1vfpal4ECqXrbwhcXMkGOwNKNSNRkCEORvh8QcuOsWRLDkgIbf8FP1MGa7rYLA2kRO4HofoVg==
X-Received: by 2002:a05:6512:3b9f:b0:489:e009:ae0c with SMTP id g31-20020a0565123b9f00b00489e009ae0cmr20019050lfv.213.1658263811206;
        Tue, 19 Jul 2022 13:50:11 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eba16000000b0025d87966100sm2778759lja.140.2022.07.19.13.50.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 13:50:10 -0700 (PDT)
Message-ID: <4b104418-6dfd-2254-957b-7f5d603e9288@linaro.org>
Date:   Tue, 19 Jul 2022 22:50:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
 <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
 <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <26c7b6e9-ee4b-9112-d975-2523940c57c8@linaro.org>
 <AM9PR04MB82743C17EADBFB1CD970BFB0898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <1bc74bc7-22e8-3fef-b4e2-a5570cfa93c2@linaro.org>
 <AM9PR04MB82743D98F111A5DE3DC7832E898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB82743D98F111A5DE3DC7832E898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2022 22:33, Shenwei Wang wrote:
>>
>> I understand, it's the same on many other boards. Still the clock is not part of
>> SoC design. It is always on the board. iMX is not special here, so why would you
>> expect here an exception?
> 
> Actually you cannot simply say that the clock is not part of SoC design, but this is not important. As long as it is a reasonable and consistent rule, we just follow it. However, it seems the rule is changing again here? This is just following what the current upstreaming implementation does like iMX8QXP, iMX8MM, ... etc. Are you taking iMX8DXL as a special one? Or are we going to change all the current implementations to follow this rule? 

All implementations should follow this rule.


Best regards,
Krzysztof
