Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E29AB6AE6DD
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 17:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbjCGQkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 11:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230123AbjCGQjh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 11:39:37 -0500
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E413296C2C
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 08:37:03 -0800 (PST)
Received: by mail-il1-x136.google.com with SMTP id y9so7696193ill.3
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 08:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678207017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ux+HwDDquJHkOY/OMFVQ579Sl0VkYcKa5LT1wJs7xN4=;
        b=BnFLUAjUOkKd62/QQGDXYegmnAWNcOT/4lVqtfFTEC1OELACehy6GuNtB9U7g3Xf1m
         gzS5HgoemwNlSiTtaP3XdBlxlnU+11cHis3C2u1T8cg4SzXXIbPM7RKa1TyBQEFuQUWo
         uJKs2DNjKNd8/3qJtdZXTJwJENRCP0jh79z8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678207017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ux+HwDDquJHkOY/OMFVQ579Sl0VkYcKa5LT1wJs7xN4=;
        b=6IidULGMwbIz89U3lGpH1SUq8/8AkO6Cqr7Lfr3mSZiQ+0DI2QyxA2+oANxDNkNF8n
         4davr9pGLJDLZQkNBKAZeX0+E4QnaZIHuBUtD8kcC1azxCcajjMntaI3IlwiHCoG3Bh9
         gZdFMRehkJf26kLC7iD3Zx14WRzk98At1ap5OTLckphnHtVNFvOU7xuaJaMwKTQ5B3AP
         Izkq2drH7m3580lZO3FlfG1EE2anXRVVFmPHmEq1Og3G4Q4ljgyW8SbHH2pOxWiMik4z
         Z7SPbZ6jRy6pUYE0+4oMRoDJsK+Fb06uGG3xi85xsp7w1OEL0V2gmWPB0a+xIgADcISA
         hS8Q==
X-Gm-Message-State: AO0yUKXkboXMQHxWzpiSDHq1FOS/QpwdzaBMrCMh8t6pWyiRKiGUc1oz
        p5gdCXh4Akf4EoYJ5JXDWTo5nPvoZHwKvzBZGaE=
X-Google-Smtp-Source: AK7set/NRNZ9lYRROJbEjqDo7uwc5tONQKRZIUKg1VxJjFFAmJXUVpIRZWf01WCsfs4aDEEbBx+SEQ==
X-Received: by 2002:a05:6e02:1987:b0:317:f351:8400 with SMTP id g7-20020a056e02198700b00317f3518400mr14219803ilf.16.1678207017607;
        Tue, 07 Mar 2023 08:36:57 -0800 (PST)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com. [209.85.166.179])
        by smtp.gmail.com with ESMTPSA id s2-20020a92cc02000000b00316e54fd7e9sm3754671ilp.9.2023.03.07.08.36.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 08:36:57 -0800 (PST)
Received: by mail-il1-f179.google.com with SMTP id r4so8753000ila.2
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 08:36:56 -0800 (PST)
X-Received: by 2002:a92:c5c1:0:b0:310:a298:1c95 with SMTP id
 s1-20020a92c5c1000000b00310a2981c95mr6900094ilt.6.1678207016401; Tue, 07 Mar
 2023 08:36:56 -0800 (PST)
MIME-Version: 1.0
References: <20230307095516.4116827-1-heiko@sntech.de>
In-Reply-To: <20230307095516.4116827-1-heiko@sntech.de>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 7 Mar 2023 08:36:44 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V0fZaD=ptgbUrq-2ai=md08q4cEDLGbLiXb_ec42w4EQ@mail.gmail.com>
Message-ID: <CAD=FV=V0fZaD=ptgbUrq-2ai=md08q4cEDLGbLiXb_ec42w4EQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        briannorris@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Mar 7, 2023 at 1:55=E2=80=AFAM Heiko Stuebner <heiko@sntech.de> wro=
te:
>
> All of them have an internal emmc that becomes mmc0 and
> devices including the sdmmc snippet get mmc1 for the external
> sd slot on suitable devices.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi | 6 ++++++
>  arch/arm/boot/dts/rk3288-veyron.dtsi       | 4 ++++
>  2 files changed, 10 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
