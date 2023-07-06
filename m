Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9ACB74A469
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 21:32:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232123AbjGFTcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 15:32:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231465AbjGFTcl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 15:32:41 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F24C319B7
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 12:32:39 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fbd33a1819so835e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 12:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1688671958; x=1691263958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NUuKYRwlFUzABWSf5+6iBwx53UilJyfRZ0D3hmTP1sA=;
        b=wwjvOn7ZtmjHXgig4UwagIJ2tdWzskYb8d3pwKOsLO3XQC2hMvKfVEbHlAxbQquyfg
         XTssqv0UZAgHXIlofBZLjxpvJPK0bsuBxSZbBJ2gsTnopXsodSdtrgDiHJNDvUSH17SG
         fhSEn9sWYW4GtB4xe1P1MDS8PcSbCpTBgPMaBI8b1qZjY5XuLSoFLNVuEdgrzhV32NeM
         Q3QOE/jbOZoA2oHTEwJzlOczHylD6fav6AkRWAbveqGF7qOGfsyz9aKvn4D9sCc1CTuN
         fhtkgTIbrHC20wj4UnstqCYgbTu9x2V8YFQ2FyZsZlJ34A3ee9MoHh2iUxpsfzitgXlm
         qYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688671958; x=1691263958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NUuKYRwlFUzABWSf5+6iBwx53UilJyfRZ0D3hmTP1sA=;
        b=XzrRo+WsnC8Ir2uiz4I8ONbOkz3IhzYfouNIv4M89/iuOycm4KW4ny9YN2DqLbx9Yk
         s3gN2RhteTH8U/wCr/TmgBHO/QUHj+v/2cuTYwf85ld2Z/ZLTJ/Q6ErcfxqUs6+28o8d
         vdKJqcbWfV5xNbX9TXpRZAWsY8hI72J+/mPfb9fTA/s29oXMziATzEE0ZXyep1TnVFwv
         u7t77O3vVBj4LA3pDVjSyqlJx1tk01uQY34hh0hC5zrXgamRWwXf0Ag3zWwsC16HJgGI
         X/fOjBAdj1fz8hsCw6YjY/s+K3WE6Q5F/3XbnFmfAXNcoIIiOqJ4TLtSBryBEJtgn5tB
         fReg==
X-Gm-Message-State: ABy/qLa+TMM6v3vCsOg26Ky7jYpn0DcYZ5M9tnnCIWw06rWMF/ydUECu
        TVfX3Ek9cfkGUq0Tn5XIF4KheupMHIovD0gc2pp1Rw==
X-Google-Smtp-Source: APBJJlHL9PYr9dSGpbA5exBVajFz1DtuA0DPX5OnGxYtitt5MLyRP/w2oVbM0cmmOZJi3LU8MBO8oJvWu1d71aomjrk=
X-Received: by 2002:a05:600c:5204:b0:3f1:73b8:b5fe with SMTP id
 fb4-20020a05600c520400b003f173b8b5femr16756wmb.3.1688671958285; Thu, 06 Jul
 2023 12:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230704050744.1196293-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230704050744.1196293-1-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 6 Jul 2023 12:32:26 -0700
Message-ID: <CAD=FV=WNLcw2JbMf7tfob2KgjB8eXTC0p1J4OYnQL4k3Mz3mgA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Add avdd/avee delay for Starry-himax83102-j02
 and Starry-ili9882t panel
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch,
        airlied@gmail.com, hsinyi@google.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 3, 2023 at 10:07=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> From power on/off sequence for panel data sheet[1], T2 timing VSP to VSN
> needs 1ms delay when power on, and VSN to VSP also needs 1ms delay when
> power off. Some pmic may not be able to adjust the delay internally, so
> let's add a delay between avdd/avee regulator gpio to meet the timing of
> panel.

Unless I'm mistaken, all of this is best handled via regulator
constraints in the device tree. See the file:

Documentation/devicetree/bindings/regulator/regulator.yaml

Specifically, any delays related to actually ramping up / down the
regulator can be specified in the device tree. Nominally, you could
argue that the 1 ms delay actually _does_ belong in the driver, but
IMO the 1 ms number there is really just there because someone thought
it was weird to specify a delay of 0 ms. Given that you already need
remp delays in the device tree, it feels OK to me to just include the
1 ms there.

-Doug
