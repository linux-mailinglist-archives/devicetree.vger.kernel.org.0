Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD766057EF
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 09:11:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbiJTHLP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 03:11:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiJTHLO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 03:11:14 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78F091372AE
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 00:11:10 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id u6so1983019plq.12
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 00:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o14aKBVXRwo9Env9/Sdjz6GykHBkWTcEWRdqq6tPKjw=;
        b=LXu0cxLTaH4YvrhSyqJ25Pjhinotg2sT2I/mhB9ONXgrCqAGbJMOqP38QqVMV59SOB
         IyfUKWIZgbInxANeUrX98dq4YnyNAH+WmhatIos+FNS3h8K3jxexoUBMlBNzlTm7w8jR
         OsJJwbSyIm2m+Tfm1KYySNrslclmCXJvvXmWbr1GKb8e9byDmW5Ri5VjFrqBIee0SafF
         QPEqYgQhMWDyNpCK6Z5YkgxAYL61ID7zatCqaKYFnEf6+TdLhuNGoEIJd4WEnQvd+S0a
         bDK/xcRJxnbSs3OcHTvBYpFEIA3yIP6OuyE4sZV5nojcc9gZAYSA7WhcH+X4o4+MDZYP
         rWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o14aKBVXRwo9Env9/Sdjz6GykHBkWTcEWRdqq6tPKjw=;
        b=Maxyqh+Yr8LU7OVxl6rO0oA3iikAM9xcfO9F8FWiVoSB8fUbpoLMsymk8xC0N9mPe0
         pYyQ6706zK6WRICECHobkG6ny7b0AXnu4987+6U8110OriGeKmwKKrUzJkqIa9TnImEn
         YIMTbRjZrVSQ5oiWAFMvFWjlx+VIWMQ/ESlbiNhKTc+nBx8ug4Haa/2hJFL1UnHGvp+i
         FLphBJCPRBar4ickhkP+B+/YEf6AkTPkEXPgzyLzPMS8nwCechOUcrNlSAk+gYGi7qbx
         MyHwgQeouStZKZCGG4z0cLsHsl5NgTHcfcsx0Sh08lXnUmYvf+9UUAA7r49WASVONVg1
         +TAQ==
X-Gm-Message-State: ACrzQf2SHvXWD4PGnC/7Z99Sg4x+rmp3zr5McSnqId5UskSZDf5AyIbD
        JuhrwcChthDtvZKXSovb4dPPr6bcVbnuiZKKBV9rzb0f/75E6A==
X-Google-Smtp-Source: AMsMyM564QHcPQumcMpoCcLSCXb0tZVcVZEecVLlEHQuuO3Z4ZYlxS6JdMXJ7jn/Z4LxXpWAo/Y5Ecv1zqMAND2/0XY=
X-Received: by 2002:a17:902:ea06:b0:185:3d64:8d55 with SMTP id
 s6-20020a170902ea0600b001853d648d55mr12429271plg.7.1666249869972; Thu, 20 Oct
 2022 00:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
In-Reply-To: <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
From:   ilmich <ardutu@gmail.com>
Date:   Thu, 20 Oct 2022 09:10:44 +0200
Message-ID: <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Alex Bee <knaerzche@gmail.com>,
        Corentin Labbe <clabbe@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Hi,

Hi Johan,

>
> Compatible strings must SoC orientated.
>
> Something like:
> compatible = "rockchip,rk3228-crypto", "rockchip,rk3288-crypto";
>
> This string must be add to YAML document:
> https://lore.kernel.org/linux-rockchip/20220927075511.3147847-25-clabbe@baylibre.com/
>
> The status of that serie is unknown to me.
> Not sure by who or when that is going to be merged.
>
> Johan

thanks for the feedback, this is my first kernel patch.
Maybe at this point it is worth trying to combine the two jobs !?
Or do I still have to modify my patch asking only to add the string in
the yaml !?

Thank you
