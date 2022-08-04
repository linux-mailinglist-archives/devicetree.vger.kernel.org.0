Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2428258980E
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 09:05:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238935AbiHDHFa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 03:05:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237783AbiHDHF1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 03:05:27 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77DDB7669
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 00:05:26 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id f20so22304980lfc.10
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 00:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8nMuzVeetPyhe+M16iIwrFxgbYWe0kXYut8sK7EQU0Y=;
        b=lD5CSRtXzBY36OaOtiXdl27m3c6V+TNn43Zwl1Qv7zaK2KULIMLwbv9FPsoBFXB4aE
         lqMoIcQqEdiaokJTtdDxsOgsrBGqKhdhoVK/ry0euHC47RtoWG8/KBwiBm21OYPBC1Z2
         4PkLG0prwBsvAWEz5xjzPmMV95G7Gs+lzBKGQOd6l2j1mfYG1Ux+vbykdn0gVyIlosAW
         OYsBRENhh0zzL35Q7xQMQyapfUnAAHddd3qhB75JQTVEwpZg9yQdrD9+lmfzZg5mOomk
         uiTE0X+bT6VXPoynAUprQ2I28PZEvw6jE+MYtoo397KAxc/bgmh3FASAQ4HpPTK91y41
         evHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8nMuzVeetPyhe+M16iIwrFxgbYWe0kXYut8sK7EQU0Y=;
        b=IW5BDiMWHDsG+F5EWYR+Sw6PMvG5vbg7NyN2dxwfw3PvlKX692iJ6s+NrwkkYgW4lX
         p+BMQkWZ9jg22JhDyq3F3JWFCMajBisepqj86Yy2tclBr7AbqzatoXxISDYxitaeBGIK
         72obsFDFwTZnB+8F5iaHimevz8BqAFVHHkWKoiBrPgSNn/sVu6gY026fGnZDApcHjczu
         U1XKbyBPeeIo0iTz2qxgb6cOy7xkM6CM0NhCPyVyh+exSfb97IW+hLAjOGcR1Bkkg9sK
         LsCiWbv18cF0x0sKlUeQKvfi2tkF0oRL9Of8Q3mshN30QHUcErBfeZjTsd361Qj9DOiL
         w+lw==
X-Gm-Message-State: ACgBeo3AgAKe+d1wpu75hWbsSl4fo+WGLs9OSEqcI8+6ld22jV28l3aV
        4GlgObpx4tihHU9EjyntZPSClQ==
X-Google-Smtp-Source: AA6agR4nu7I3vhsmogjlzU0lvqxd4qGusLqm2g20Ed9y4Ai1CgW6tIioiBSmBvwIuInJs6NkltBZeQ==
X-Received: by 2002:a05:6512:33ca:b0:48a:779b:fbe2 with SMTP id d10-20020a05651233ca00b0048a779bfbe2mr239568lfg.557.1659596724770;
        Thu, 04 Aug 2022 00:05:24 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id v14-20020a2e2f0e000000b0025e436214c8sm15160ljv.78.2022.08.04.00.05.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 00:05:24 -0700 (PDT)
Message-ID: <535f97e5-5a79-5d62-fba4-419a451eb14a@linaro.org>
Date:   Thu, 4 Aug 2022 09:05:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 1/2] ARM: dts: imx7d: add dts for UC-8210/8220 hardware
Content-Language: en-US
To:     =?UTF-8?B?SmltbXkgQ2hlbiAo6Zmz5rC46YGUKQ==?= <jimmy.chen@moxa.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        "soc@kernel.org" <soc@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20220719030718.28826-1-jimmy.chen@moxa.com>
 <SEYPR01MB4272BC601A478A322F964AFEFA9F9@SEYPR01MB4272.apcprd01.prod.exchangelabs.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SEYPR01MB4272BC601A478A322F964AFEFA9F9@SEYPR01MB4272.apcprd01.prod.exchangelabs.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2022 08:53, Jimmy Chen (陳永達) wrote:
> Any advice is appreciated for this patch?

You already received comments and did not implement them.
https://lore.kernel.org/all/df14931e-847e-4776-74ae-8c35a1cd863d@linaro.org/

Implement first all the feedback.


Best regards,
Krzysztof
