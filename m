Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9F243C19B0
	for <lists+devicetree@lfdr.de>; Thu,  8 Jul 2021 21:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbhGHTTZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 15:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhGHTTY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 15:19:24 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B746C06175F
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 12:16:42 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id i26-20020a4ad39a0000b02902554d87361cso1630035oos.13
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 12:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=D5KN5KCtM6Y6+Lvcam1ZdlE3TuTqT7D2J9oLO6I8aQo=;
        b=I8k13DUrzjT49dELyQh4omr/mUGhHbTp2tAk8+SVxvCWudwrvoJqjMKGAn5dvQhXXl
         uvdigZU6c2RXZRiCHqYkFWfekc7JJyiO4HBlkuS454j065uVlWBu29d2rl+vvEtYhvT4
         1LfH2I+148d0VTXzmB/Pu/Ah8G7vrP+Px4rmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=D5KN5KCtM6Y6+Lvcam1ZdlE3TuTqT7D2J9oLO6I8aQo=;
        b=IlRHybEPjlLO1BiSrxPkmUdGeFoYA3+AYpls28Ldc4VHCZYOFFLWKzBzhYNV2mtZ0V
         DnrixoeIHA9k827dSMXiA++0Kzj0IR4dUToH4Rh3rVDEhJyiw47U9IGdzi1YIizwwOXy
         c461o0uEh7DNo1rUzL04obxZvxD83p/P/krI5eNn8j2EoG/7xTOMt2jOStn5kbUOndxb
         rm5t8CcQRVliqF/ZEa9Jje1IQLq5JKSZaBzM0bfCpbOEODvapPxdd1jZOXJrOdUt4VUz
         uXlULVHz6FAnQoALyDY9sWcy/hC0OSiyJzpbCEft3oaNLv2VvuzTsClasRsQwzc1k2kS
         bc9Q==
X-Gm-Message-State: AOAM533l4ZO8WFwMLi6qwEie2T5fsBDBOeGKRKitQXQqBhspF+bNzNrh
        pj/pyAnR+NGQ8gy7ru3gAdiI4IYZumkC9HbSRi6i4w==
X-Google-Smtp-Source: ABdhPJzxANdUDNLft5OEBDh87ByS325dcaYfTfU0y4ofQVZISa1NhZqAXecwZWg91NXoj2+oyys5WzUhiSBrUjFaM68=
X-Received: by 2002:a4a:e206:: with SMTP id b6mr21343518oot.16.1625771801521;
 Thu, 08 Jul 2021 12:16:41 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 8 Jul 2021 19:16:41 +0000
MIME-Version: 1.0
In-Reply-To: <20210708090810.174767-1-judyhsiao@chromium.org>
References: <20210708090810.174767-1-judyhsiao@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 8 Jul 2021 19:16:41 +0000
Message-ID: <CAE-0n53Jo4LuCeV6s6nubPKgJ+ShPsLOnaHoHTSZOCoULKF05Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Set adau wakeup delay to 80 ms
To:     Andy Gross <agross@kernel.org>, Judy Hsiao <judyhsiao@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, dgreid@chromium.org, cychiang@google.com,
        judyhsiao@google.com, tzungbi@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Judy Hsiao (2021-07-08 02:08:10)
> Set audu wakeup delay to 80 ms for fixing pop noise during capture begin.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---

Presumably also

Fixes: ba5f9b5d7ff3 ("arm64: dts: qcom: sc7180: Add wakeup delay for
adau codec")

>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> index 6f9c07147551..a758e4d22612 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> @@ -23,7 +23,7 @@ / {
>         adau7002: audio-codec-1 {
>                 compatible = "adi,adau7002";
>                 IOVDD-supply = <&pp1800_l15a>;
> -               wakeup-delay-ms = <15>;
> +               wakeup-delay-ms = <80>;
>                 #sound-dai-cells = <0>;
>         };
>
> --
> 2.31.0
>
