Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD3F56D0719
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 15:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232120AbjC3Nmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 09:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232143AbjC3Nmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 09:42:33 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 446FFBBB6
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:42:11 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5445009c26bso354617897b3.8
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680183723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+8nDQV8WyAMGcMV8E7jzqCDnqvFEFAghtcnwD7ujG4=;
        b=mLMExJoF4PGUb5r1ARvsMCskqu01O1GrOaR3OBiaZLRdKtDDgCc1b0EGv9zHEqnemU
         5se4KLUK2YGDLDK/ZUK3kp/6sW9MFEfOKRaUadskgb3YhCs3zc4hSrRqMr8PsiGr4jZU
         Ig5sQsBRvUp+TJNNv+26ekVHa/83Okz16GKB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680183723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X+8nDQV8WyAMGcMV8E7jzqCDnqvFEFAghtcnwD7ujG4=;
        b=mbHxn13e/scrLzUxPbSM5/jfFm+GKpwtcXAuKUEUZ3+9FTzPkckJ3Ekk/+xtLpy2zZ
         /P7HMZnYRsXl+gfQGVM4eD2jr1g7AA+0wz5SX7COvzKfhz6u7+xW7C89VXujRIKHZl5X
         F6OlQkkO2z15FDEZLj5DyPXF+wwR7pd4r11UsCd5X5g302ba5TQyEu22PloqMGwJJ/ub
         Ki8rSfG9IYN93JrWZzm4dGpRSZrZQgdObcizFgDXNqFfBV7Ad9VHj1oIX85xZzIYlG7j
         4kmMBGj7BdQZvM9BaUuo7LdEON3DDOANmkErpCTEP5Ylk9HVUcyqya1Jou/BZ7MtpuPy
         HoYQ==
X-Gm-Message-State: AAQBX9cIzcakEq0Un51n41C4E5EtFqW19e263oSeaxFHzLKCgztlJTLK
        +T52RoZ1Ll94LLXYOO4jdit91qjtznf1JOyWpSDAvg==
X-Google-Smtp-Source: AKy350ZVcQzRTyx6h4eVa+NacLvUw4LkPo4Rkn0pPCq25Y6d+1SyB2YL5XdN/iC/2EfH4VUWdCTmgaUjVQs3yt+0S9s=
X-Received: by 2002:a81:e546:0:b0:546:1ef:54f9 with SMTP id
 c6-20020a81e546000000b0054601ef54f9mr6321590ywm.0.1680183723296; Thu, 30 Mar
 2023 06:42:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230329144155.699196-1-festevam@gmail.com> <ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org>
 <CAMty3ZBHvR8OxgNgKG--TA_LQF41vjPiruHx-Pw2PwbjNKMFog@mail.gmail.com> <CAOMZO5BwSFZr7BDaU4KDkwvTcW0U28FeDDaF7eDrhgvgdN47Mg@mail.gmail.com>
In-Reply-To: <CAOMZO5BwSFZr7BDaU4KDkwvTcW0U28FeDDaF7eDrhgvgdN47Mg@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 30 Mar 2023 19:11:51 +0530
Message-ID: <CAMty3ZBZC_yKR0wszA-ax2-hKoUDHBSg8G_unvYL0rU8742yvw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: exynos: dsim: Add 'lane-polarities'
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        neil.armstrong@linaro.org, inki.dae@samsung.com, marex@denx.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

On Thu, Mar 30, 2023 at 4:39=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> Hi Jagan,
>
> On Thu, Mar 30, 2023 at 4:55=E2=80=AFAM Jagan Teki <jagan@amarulasolution=
s.com> wrote:
>
> > I have a previous iteration of this conversion. Can I resend it on top
> > of drm-misc-next?
> > https://lore.kernel.org/all/20210704090230.26489-9-jagan@amarulasolutio=
ns.com/
>
> I tried applying your patch against linux-next, but I get the following e=
rror:
>
> $ make dt_binding_check DT_SCHEMA_FILES=3Dsamsung,mipi-dsim.yaml
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> /home/fabio/linux-next/Documentation/devicetree/bindings/display/bridge/s=
amsung,mipi-dsim.yaml:
> properties:samsung,power-domain:maxItems: False schema does not allow
> 1
> hint: Scalar properties should not have array keywords
> from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
>   DTEX    Documentation/devicetree/bindings/display/bridge/samsung,mipi-d=
sim.example.dts
>   DTC_CHK Documentation/devicetree/bindings/display/bridge/samsung,mipi-d=
sim.example.dtb
>
> Could you please take a look?

I will rework this patch and update the next version.

Thanks,
Jagan.
