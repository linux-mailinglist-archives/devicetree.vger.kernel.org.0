Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F39854D5FA
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242323AbiFPATP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348770AbiFPATI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:19:08 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3D3256768
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:18:57 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id f8so11743420plo.9
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=BlXLrh+w6iAEnbbaKkgWXS6h862hDv6DtV9NSq4RxDQ=;
        b=SSvaBcb2PDkzAHI5210PXM4EULUEyOnHgq3tomN4SbOSyNixZO61uekCz3S2o8vNL/
         FaozSUF+SDRam8ROF4Drv9pi2fBnxWxmE4np+M2+5iUj5pdnY3AydnO67acIEbs3xj+T
         Kvx5UusxuxtzJgUt+qpQztFqJjW8RLVAq98KjjheVGR3rOugRFqf6u+a5WkhQ8k1IL5L
         Ek3Whq4Mu/8dufnrSjTymB4mij2dA8JrjKTy6pnpLP6a1eLsT+Do0WhiJSZ4LV40HVSM
         sTfj0ubHUpELIZbyqCGsKGkP++mNRughAVzb7gn7EWlRaDBSCooB/njkmSr9jJpju1v8
         Dwfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BlXLrh+w6iAEnbbaKkgWXS6h862hDv6DtV9NSq4RxDQ=;
        b=DlVIHUljFzhfjwdu9rpPBErANe+CLZfi5yAyWiKoF18pQlGRcruwRPXcl4oNQECEfj
         +m0PgXFj7Jqve/pWnSP0E9bJf2YcG5KjFGqfsMdy/krHvmljV1PlW/j02bIUvutQTpnX
         Lw+/jz37fN+hbJ2/pOHWK53kRUyuP5I4LPtw+ByPwy7BoHljbIFtjGAfmh6JrZ8qp3y7
         mCzQlYOndKzxOzhcyCEuvtQPXSWoDext1aopQY3bVyMrMdfsozOeVmuG49oOFo4KJfLC
         BstIYWuc79dwscz6tb+LdwcP4QQeRYwEWoRcngndHdoHURoaVcNyP08F4sRSm1NtISBM
         TNvA==
X-Gm-Message-State: AJIora8cBnS7da6P/q6Erx+WNR8hQv+5L0+RsI/b8nDXb6+kpT9TUy98
        y2iPTqT3CD+uNvD3YkT6xlMMHg==
X-Google-Smtp-Source: AGRyM1um7PLc5JE4aT0snHxaDPEkbGJanTCL04ITZiHCM879PLK2zUgx/8FxogW4/ZwbtacQiWzyrQ==
X-Received: by 2002:a17:902:f64c:b0:156:4349:7e9b with SMTP id m12-20020a170902f64c00b0015643497e9bmr2251860plg.139.1655338737145;
        Wed, 15 Jun 2022 17:18:57 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id j10-20020a17090a588a00b001e2f892b352sm2397897pji.45.2022.06.15.17.18.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:18:56 -0700 (PDT)
Message-ID: <7f641ee5-ba10-53d0-5056-420b751e77c1@linaro.org>
Date:   Wed, 15 Jun 2022 17:18:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] arm64: dts: marvell: adjust whitespace around '='
Content-Language: en-US
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220526204525.832847-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220526204525.832847-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 13:45, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Output compared with dtx_diff and fdtdump.
> ---
>  arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts    | 4 ++--
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi      | 2 +-
>  arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts | 4 ++--
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi              | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)

Any comments here? I can also take it to arm-soc, assuming there are no
objections.


Best regards,
Krzysztof
