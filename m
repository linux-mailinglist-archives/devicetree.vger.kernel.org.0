Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56DB7664108
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:00:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232260AbjAJNA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:00:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231863AbjAJNA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:00:27 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 894ED517C3
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:00:26 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id z5so10590375wrt.6
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+hykOpiswJ6734BnRKXTKpGt9RYNKHGutVrbgNCuhSc=;
        b=P+lRRrHUDhuf6cTeeLupe7xEP+Kd2sP/I/51P3IZDpUNO7AYaJTVV/3iLxlZdrAMUb
         mDQZdwBTxrKcWCCbPM4BxHx2lct6T+WEvC+rZ0z23Ard6PGq0ao8nFwNC4SkfUvvrFW2
         iFLrnZOjTLnE6grAZW+uZt4C+sSgbmSpkhmGM90J9objaKcjCMxV4pCqfghC95K53vpj
         xr9MUSPxTtq9mjqhkkGPZjXwF31a635gXHd2JO4uKPqg6BKgKnpFDn/cGYQdFuuDZxr+
         RlLwcJJwFlHAFaQBTMT24TKfhon58/BaKsEW8fmfiqGxOItFj/ptCF8mmpTdYnuqY4Xn
         h+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+hykOpiswJ6734BnRKXTKpGt9RYNKHGutVrbgNCuhSc=;
        b=m+kvJG7U2Rr6DkY9/UIGqL9mwbY4i+Xr68++mfI4T+kns8ps/BdMVjTWMzQABqDYey
         7L1sWyKndtRPPqJM5TwmGMgJL6s5ZmMWaz+aPso6F+c3X21MHsNfT3fJ0z5FLpQ0HOU4
         RtS0i9N/AVmxlPcxyeh+BjP48R+YEBsFQ2omzIMySFfulm9t2syev+qeEASbqe20JE0m
         bdj67toxjEFgiW57bi3SLsz9qwYLRTLSiDE3Rk8BpfIFm9Ct9JGhmSim86la/ecdZtH2
         9F38OPxiMUHTuepNKoTk2HDs5PLMtuD8JEO7CQjyLlCW85hOq59ummJTXffVwhTTHceX
         VUFA==
X-Gm-Message-State: AFqh2kq33QYoO47mZo94lIveQOPnYoYpGOaw8uSL84KGCzzU4Ldp4mve
        nEuOJaybDEbC3G2xGH5AcqwOiA==
X-Google-Smtp-Source: AMrXdXurkGk0M097o7FoCxN1ULpx2PzVaa1FuIAHzMpFHqLgD1SSleJuoxUnzXMzOGp+PgV/hMUoBA==
X-Received: by 2002:adf:f08a:0:b0:2ba:f555:613e with SMTP id n10-20020adff08a000000b002baf555613emr9680751wro.65.1673355625153;
        Tue, 10 Jan 2023 05:00:25 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l6-20020a5d6686000000b002bb3229a03csm10099922wru.34.2023.01.10.05.00.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 05:00:24 -0800 (PST)
Message-ID: <821f3b7b-3185-6fa8-8089-cae97cd44e61@linaro.org>
Date:   Tue, 10 Jan 2023 14:00:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 2/3] arm64: dts: imx8mm-evk: add revision-B EVK
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
 <20230110114027.634719-3-johannes.schneider@leica-geosystems.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110114027.634719-3-johannes.schneider@leica-geosystems.com>
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

On 10/01/2023 12:40, Johannes Schneider wrote:
> Add devicetree for the EVKB, which comes with LPDDR4 and a different
> PMIC.
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 116 ++++++++++++++++++


This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

So for the third time: where is the makefile change? How can you build
it otherwise?


Best regards,
Krzysztof

