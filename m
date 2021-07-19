Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADA63CD03E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 11:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234816AbhGSIcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 04:32:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234808AbhGSIca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 04:32:30 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C18AC061574
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 01:14:14 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id b2so4695218plx.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 02:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=tExGq9xCg/mUBXTmkEXAY8uRz7zxEWTEvClku77VFsM=;
        b=igvlk8DvrJ2kPBTWAhca0xwjYb0tjYgCiqGwC9uatMoHsLx/qgSGN7jMMnFep0zPqn
         ulPS77pE6Rh0PLiwaN6FUfIUDUZgEQgS5v1ZE+hG8KHie3vXAKh83A/+m7mts4nVsFI4
         h+s9mhcdO2xjVqHZmD14ikJFo5ETMXnXbMAO+vbPV6wQNV9sgNoC8p7j2ds8muk4p8RP
         RC7Zo7QgzqkoogJtEOEUqisg/bfNvUpX3d4LIxZedKNRM2+/AKpUT1l5aoLNbTsYXOYF
         gtqdar/3PVeATdj4TQ7esiiHYy8pQHgLOn6yAq722H8Ec9EKY4dISyhi2HAjOWfEz6L1
         vBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tExGq9xCg/mUBXTmkEXAY8uRz7zxEWTEvClku77VFsM=;
        b=UzEDP6BoB8Abu4SIu9O99nfL2XIIXDehepddi9QpIXUdHqAwrOJqB/7dv1GAVFSeCY
         5WAV9K0u0jcm488LByqrsZGV1HrTA7WpQo1jhGML8dK49pS6M3GIjsmjquRGNrz1HAk4
         70ZsBrPDzDhuOrR0CpS4SHy2lmIoXanziEJVHcoi87J29+3MU8CVq8wQgSyXoEyMuSzl
         L1zTG72ZtVzVJMRtIJB/YxbabLO5t2o4eVk3TVdmxAeief7v5CqZeSiG1d6k1avsnHf2
         cdXfdLwaTpQ2jOJcvqbAXRLDxZqX4lBHvnPB+8J7I3FyRT5Cgjyt2FuYfGhWg5e5Ej81
         sLnA==
X-Gm-Message-State: AOAM531qoySjp9QFR12xcbotgG+u222CtZrWQtQrJmnR6j+VeCUm3Prp
        2X7I7+Psd8gkc680otWZWwiZelB4sXIsHpdxfybvgYatL36W
X-Google-Smtp-Source: ABdhPJyfXbXbx+D83/Za8QjaZLtOWQEbMYOgX1DrjMFADM3uavwWF72tNyjWur+Oblm7jwiL9sVbFqwK3E+cULPrrNs=
X-Received: by 2002:a1f:a8d2:: with SMTP id r201mr20754295vke.11.1626682761872;
 Mon, 19 Jul 2021 01:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210709044518.28769-1-matt@traverse.com.au> <20210709044518.28769-3-matt@traverse.com.au>
In-Reply-To: <20210709044518.28769-3-matt@traverse.com.au>
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date:   Mon, 19 Jul 2021 17:18:55 +0900
Message-ID: <CABMQnVKufS6pKZzKw57fmcR8tY82wHREJ49e_6B=p5UFWieaUA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: rtc: add Epson RX-8025 and RX-8035
To:     Mathew McBride <matt@traverse.com.au>
Cc:     linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

2021=E5=B9=B47=E6=9C=889=E6=97=A5(=E9=87=91) 13:45 Mathew McBride <matt@tra=
verse.com.au>:
>
> These are supported by the rtc-rx8025 module. RX-8025
> also has support in ds1307 due to compatible time registers.
>
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> ---
>  Documentation/devicetree/bindings/rtc/trivial-rtc.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>

Best regards,
  Nobuhiro

>
> diff --git a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml b/Doc=
umentation/devicetree/bindings/rtc/trivial-rtc.yaml
> index 7548d8714871..13925bb78ec7 100644
> --- a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> @@ -32,6 +32,9 @@ properties:
>        - dallas,ds3232
>        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
>        - epson,rx8010
> +      # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> +      - epson,rx8025
> +      - epson,rx8035
>        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE with Battery Backed RAM
>        - epson,rx8571
>        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> --
> 2.30.1
>


--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org}
   GPG ID: 40AD1FA6
