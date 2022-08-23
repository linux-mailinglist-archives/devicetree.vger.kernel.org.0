Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD9E59E916
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:23:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbiHWRUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 13:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232078AbiHWRTx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 13:19:53 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9D1AE853
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:43:17 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id s1so16947548lfp.6
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=h32xyk5qVyHWCWQbdLOYmYDB3SfGv1Ihtw0UlxutFSs=;
        b=j7WUm0iTG96tPDzGkHP6hVuPCpr84UKH3TJFLWMgVEmePKBlnIJ84/ybGASHI/Mra0
         RWoBVYr8ozv7fj7kVw9sz/+jeSaeJmZhqxjpClB6Y4Pc+TyxU6fwxL69LB6ZsgZVRpt4
         +67/Na/EvQDPdnAMEKtFkqfBZswAXsGGgVkMUrh3xQhkqgayWbeoGv4EiDoKTDvt+g8m
         7hnjfSGwI1hsTBEgbKg1rbjlb+j9eohQ8kbCn3L4Yx3sUt5sRi6aT75MLtTIBbihnk1+
         mBcHTr2H03kYnjC9aBF8s/sJoqSZF4kD1p4pgs+Euu2pRgwNJ8d/HJ5bsCMgn8mWlLbR
         +QmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=h32xyk5qVyHWCWQbdLOYmYDB3SfGv1Ihtw0UlxutFSs=;
        b=wuSErMrys7tRa0uVsgcCHZ3pverwnT3v+c6qDyPci/DsRcr7flTs0iiPzqUPTG/HBi
         MpQWLLxazDTLrI9EEI2iujamasv5VgbKRqspqiyK3+N3gCinm5Bp9SznQBfUvit7/6kw
         7wyTnqQ4zd1m6yLXa2Dv1wJod2OrQS003tT7FKpu4oWuqRUX2lYh4y2EseW8Yrtg/lDB
         lzoLq4WIDWpr7QjjI39PAGLSZqi/iZha6WAgi1FsbGhPfwQnQQ/MrrQod+oJQYPGxPB/
         QwusF0KBWAV85qLOE3Of8mgJBhlihJCqpidxsbail4T/3o20PNyGvZ7qxt/VPzWWPF3t
         BdHw==
X-Gm-Message-State: ACgBeo3ZWvWMLSg8EHlmG3Kj4dGOCMVAke4diDRUazH82+dEyCZwFfsd
        XO2k9EX+Tcywe7k1Yb0VCDZM/w==
X-Google-Smtp-Source: AA6agR5RZdIPZVcwdu1iI8zwdbElK6Q10jk3CELdg44yE6uN2YcKJda0sTTtvNcx5OKPyyPxtJP3ow==
X-Received: by 2002:ac2:5097:0:b0:493:109:f190 with SMTP id f23-20020ac25097000000b004930109f190mr355159lfm.180.1661262195492;
        Tue, 23 Aug 2022 06:43:15 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id f1-20020a056512360100b00493014c3d7csm107114lfs.309.2022.08.23.06.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:43:14 -0700 (PDT)
Message-ID: <c74b4464-ec28-eff6-86e2-2b0e5e9e992b@linaro.org>
Date:   Tue, 23 Aug 2022 16:43:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [RFC PATCH v2 3/4] ARM: dts: stm32: add pin map for CAN
 controller on stm32f4
Content-Language: en-US
To:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        linux-kernel@vger.kernel.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        michael@amarulasolutions.com, Dario Binacchi <dariobin@libero.it>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20220820082936.686924-1-dario.binacchi@amarulasolutions.com>
 <20220820082936.686924-4-dario.binacchi@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220820082936.686924-4-dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 11:29, Dario Binacchi wrote:
> Add pin configurations for using CAN controller on stm32f469-disco
> board. They are located on the Arduino compatible connector CN5 (CAN1)
> and on the extension connector CN12 (CAN2).
> 
> Signed-off-by: Dario Binacchi <dariobin@libero.it>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

Do not ignore review. This is not correct. You are mixing copyright with
SoC...

> 


> +			can2_pins_b: can2-1 {
> +				pins1 {
> +					pinmux = <STM32_PINMUX('B', 13, AF9)>; /* CAN2_TX */
> +				};
> +				pins2 {
> +					pinmux = <STM32_PINMUX('B', 12, AF9)>; /* CAN2_RX */
> +					bias-pull-up;
> +				};
> +			};
> +

Don't ignore review.

That's second one, so that's a no.. :(

Best regards,
Krzysztof
