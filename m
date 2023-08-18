Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 749E47805F5
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 08:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343499AbjHRGrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 02:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358112AbjHRGrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 02:47:15 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD8E83AAF
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 23:47:13 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id ada2fe7eead31-44b74207c25so191156137.3
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 23:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1692341233; x=1692946033;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gwuMjVxIsBe/46aMU0OAO+qzXbBXUy7HkRtOKUh/59g=;
        b=R5q+qsL2SsE8IZNHXQCkMNwW8ayL87HOJzAN7acPZoCzFY1nEgjZOe/psCGErVLviw
         UclKe0P1PPl6NVhQQc8rvDa9ZAMf/emrBlomgQVTx6EvXtRalN4hnS4ZfOy5gIUNHOLX
         f5jeajhNcazZFxIAn2i80294fSZvyix86rwvVYTncZ3H4KNVwiwOZRY8Y90vNbH6ZU36
         LvH3cu2T55u6RML35edQFEE1iusPetOAHlqWV4JivNJWpWafUufCxLyHpSfDJ6areReZ
         pO+RPadjcYUHy9skUVPYsAvwKZ0k1JAW3dvXCkpzXVM+bRsciyGqhfORFUGGFKzt18Kv
         hnTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692341233; x=1692946033;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gwuMjVxIsBe/46aMU0OAO+qzXbBXUy7HkRtOKUh/59g=;
        b=K9m5i01n2039muKtyFKJttCcF9xRr4x7K3uFmXiKBTHejAmVV7x2wmcki2sNBVqHZ2
         zeY2/ZgNxDE5pTiUL3vBAHHxPxf0u+GpaBbdr6TKJtkOhOlcFeX3k6k/iFOxJr9sPOlC
         kMt5yGsMKhVDwUaznMB/lPsxiflZ0cbGLhi3k2VZxbkiIIbT+AXXMjFwwIiAquKxNjTJ
         bd+cuYA3KnwwGJraq31s9NT62kW9f+ujmr1pOa+dhvCqJ4yWVW9ZT+rpRM/jpFhRt5DA
         HBMzJLobzGGUwL14xg5yAIPV7pPQYjssvtRJ7Nqu/pZfWd7qcj1/rlsIe7PNFIus+iTS
         /ceQ==
X-Gm-Message-State: AOJu0YzJOkLgU4/45uLCPq3VM2Ssj0JS0SOCxccgp4Y8fmjpvvF3K+/R
        WA8HOsWYD0ealdKm2CP0DuUx4ykNoZEO11xXOD61UQ==
X-Google-Smtp-Source: AGHT+IEItnCTX//1q69Fq4fDp+iETFt61wZ05s3RLvpHsjxD3PpJ1yLl6rZB83Sv6T96FDNuKrhQuoSYvwrc9rEaPDk=
X-Received: by 2002:a05:6102:11a:b0:444:c644:c231 with SMTP id
 z26-20020a056102011a00b00444c644c231mr2218200vsq.12.1692341232794; Thu, 17
 Aug 2023 23:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230817213815.638189-1-ahalaney@redhat.com> <20230817213815.638189-2-ahalaney@redhat.com>
In-Reply-To: <20230817213815.638189-2-ahalaney@redhat.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 18 Aug 2023 08:47:02 +0200
Message-ID: <CAMRc=Me3ytosH3Nt9Wmpct_81UoefM+s47f2p1Df0am=EjzB1w@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p-ride: Describe sgmii_phy0 irq
To:     Andrew Halaney <ahalaney@redhat.com>
Cc:     andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 17, 2023 at 11:38=E2=80=AFPM Andrew Halaney <ahalaney@redhat.co=
m> wrote:
>
> There's an irq hooked up, so let's describe it.
>
> Prior to commit 9757300d2750
> ("pinctrl: qcom: Add intr_target_width field to support increased number =
of interrupt targets")
> one would not see the IRQ fire, despite some (invasive) debugging
> showing that the GPIO was in fact asserted, resulting in the interface
> staying down.
>
> Now that the IRQ is properly routed we can describe it.
>
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/=
dts/qcom/sa8775p-ride.dts
> index 81a7eeb9cfcd..8fde6935cd6e 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -285,6 +285,7 @@ sgmii_phy0: phy@8 {
>                         compatible =3D "ethernet-phy-id0141.0dd4";
>                         reg =3D <0x8>;
>                         device_type =3D "ethernet-phy";
> +                       interrupts-extended =3D <&tlmm 7 IRQ_TYPE_EDGE_FA=
LLING>;
>                         reset-gpios =3D <&pmm8654au_2_gpios 8 GPIO_ACTIVE=
_LOW>;
>                         reset-assert-us =3D <11000>;
>                         reset-deassert-us =3D <70000>;
> --
> 2.41.0
>

Nice!

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
