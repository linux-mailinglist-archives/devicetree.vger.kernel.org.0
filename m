Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE48570DB89
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 13:35:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235329AbjEWLfO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 07:35:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236651AbjEWLfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 07:35:10 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23813133
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 04:35:05 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-64d28c9696cso1211455b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 04:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684841704; x=1687433704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O99/xMB8qFN9UOBPXbKlbAWE5L6pykzwrQt3F5j2OWI=;
        b=qsRFM+7dAUKsDvBqFnJpNNNXA5FTgDJqvHm0z1vVALtoN0WyWm2tx+FVXH4e6jSwUL
         fd3OoR0iRZ27DfaHAvfz9c6zGBxFwPkgBHxjfvYH7DO6WZ/rcDC+r80rimxPpptCkwZz
         bF648Wib1XmqCi6SzUxapWy9SWaPGzfA9yk8InbQ7sHloAzz3gpk5AxBTouzNZTfoh3f
         0yluC3LfxYJjU0K4gZR5CbDu22HWatVzKNNzZNDc4xCbhYpmm+szpWRk+nB/zd1H1C6G
         0QVf+1HOB4CQypbFOCtYeRLsUgVQ4IG8hgVrZfdHuj8T7AQWSTNnZV0CboUizkG10yUX
         B9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684841704; x=1687433704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O99/xMB8qFN9UOBPXbKlbAWE5L6pykzwrQt3F5j2OWI=;
        b=hDVn0QJ3xrA5Qe1AfLy0cUs5gzMPsUq/VyTwwI5FEEdKn8r1hGswnc/gqnzWO4V6qJ
         AWgc16GAd+rba3oi3GBT9VZKLw+4Oe3qScVD7hWnpB4W2SHcvfoWmz8EZzINwSya4Vnq
         dFDxb0LSpvi3tsEow/XTQsT068sc1doJPAPvzb/Ib9zWZf7KhP1htx9XTLLemrSw+ORT
         JqcoQB5fgX0NQV97RgS864MOZJXa5keuE+xEJVsZqdf4r9iB3LRyuEBmmkx4XkjUHapr
         +3LImQ7Yq6vnovBR5+KyHeVDnHOfCXWUwHBNkZPSFYEeq99J7mG3jlRGq5HmVghcckXQ
         FU7A==
X-Gm-Message-State: AC+VfDx/s/AOKwiup8v5jU3IQQq4H6wttg607KsWwJNWpeXJR48AjYnt
        rpNuhqejradEkIXiOJNwNegO3r+SHkiOuawhZwU=
X-Google-Smtp-Source: ACHHUZ5eyLuDVmPQIh0PAQ4RWzGnnHSCSAYLLvlDy9PyWXwh6oBP3wxrDjBjLzOCnb24LIEOWPqjQVSSS57/U4bW4lI=
X-Received: by 2002:a17:90b:384b:b0:252:b875:6a57 with SMTP id
 nl11-20020a17090b384b00b00252b8756a57mr15872751pjb.3.1684841704494; Tue, 23
 May 2023 04:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230522201404.660242-1-festevam@gmail.com> <20230522201404.660242-4-festevam@gmail.com>
 <d8c34831-c89a-0c09-d874-9f7778c7aa33@denx.de>
In-Reply-To: <d8c34831-c89a-0c09-d874-9f7778c7aa33@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 23 May 2023 08:34:51 -0300
Message-ID: <CAOMZO5CMox7r40cSf7mwqJp3bReN+4VBZ4CMXVpsxYH2g8XqzA@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] ARM: dts: imx6sx: Add LDB support
To:     Marek Vasut <marex@denx.de>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Mon, May 22, 2023 at 11:57=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:

> > +                             lvds_bridge: bridge@18 {
> > +                                     compatible =3D "fsl,imx6sx-ldb";
> > +                                     reg =3D <0x18 0x4>;
> > +                                     clocks =3D <&clks IMX6SX_CLK_LDB_=
DI0>;
> > +                                     clock-names =3D "ldb";
>
> Since there is only once clock, is this clock-names even needed ?

As of today, clock-names is needed because
drivers/gpu/drm/bridge/fsl-ldb.c retrieves the ldb clock like this:

fsl_ldb->clk =3D devm_clk_get(dev, "ldb")

If you want, I can change it to fsl_ldb->clk =3D devm_clk_get(dev, NULL)
and also remove clock-names from
fsl,ldb.yaml and from imx8mp.dtsi.

Or this cleanup can also be a follow-up patch. Just let me know what you pr=
efer.
