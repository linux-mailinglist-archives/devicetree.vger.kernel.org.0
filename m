Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2F174A5DE
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 23:26:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbjGFV0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 17:26:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjGFV0c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 17:26:32 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BA311BCA
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 14:26:31 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-bd61dd9a346so1302235276.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 14:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688678790; x=1691270790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3vz33CppPYfXOTfLJgPcu9OJ5KBYg5KcTasjmg2ccFk=;
        b=yUdwWPBjmOtznyv9Iu0y+4e/c7Wrkmiu7RwzjoljlH5zctsBWeIGZbnfUaFrPJ3UmU
         JMWKi9Anv5wouvyIHvbf8T8qkIAJrMwTZgnmvsrwhJzI2v21WZ2nHiNF0Kpfgp97s9e5
         2/jmPgcM/KIyCR4puFUlEM2gMOm1YlJ8imux/hQc8/4C9jXhacUckoobZu5/deaaz6y5
         GPNk8/NA627GElidNNNf1scJKIALNLpQLedN4RgVKFny3FI0bgcYHqJkP3D0/zvuv34z
         BxK8Bf+EfwyhBEJvfMroxV3mwD3Y6N/kjHawfNORWGGmJmI9pDA/ztZG62+UIQGRvFf/
         pVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688678790; x=1691270790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3vz33CppPYfXOTfLJgPcu9OJ5KBYg5KcTasjmg2ccFk=;
        b=PobJfkvs0E6Nh7SeULfWLOiAb6DU89RxMMsEYP2FXutsNxNzqtiwFlde3uuC7QYPMc
         AzuxxaACllBLLKETvp1Kb7otJDq5uYWPtl9BOnscktpCgQRBfbzP+ix38A7+9IYNpL7t
         6jHRB6gRECa0tbdHMt+5tiQRq4/vXDS8VbZXpW5fMKlXHd6Qm/l5H4pC2KPlIntMdp4q
         OvEZvnKpJWiNri9vNhuwEtsn3RJIXnoT2GafBUy1LnX8Kdj1fYpZ0TtOy39m9CKys2B6
         zuZ9btfc9V4cRyuaeFMB7pwwsnBxDIiYpnTR9521MBtdNlG9zrzonyPZZqJ48Un83GFA
         ZWtw==
X-Gm-Message-State: ABy/qLYIHfm1NDKpnTpC+ZMuYmhLp3P4ff/Mu1hUVrNXokiGWRtpz4wI
        K0TBCWfZNsN8zQgZU6R2e10Gjd0PJ/1rstVihQDKfQ==
X-Google-Smtp-Source: APBJJlEP2wvr+Iyk5E1cmNurC6nLVcPhLGhfHUlpZ997tAXhtTCxv0xTrYKrRIwbCZ/sp9klyKZFRMt/AXGg5FY0XeQ=
X-Received: by 2002:a25:188a:0:b0:c12:29ac:1d36 with SMTP id
 132-20020a25188a000000b00c1229ac1d36mr2834480yby.7.1688678790356; Thu, 06 Jul
 2023 14:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230627050148.2045691-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com>
 <CAD=FV=UcFn7Wq_Ock6RCT0mPhgjpJwF7dJjcbwcoESW9nni62Q@mail.gmail.com>
 <CACRpkdb_6n+CKUHYu5nAtCEKK_VwO2hGUUCHny56oSYt_vTfLw@mail.gmail.com> <CAD=FV=WwRiAzfV0Unk8ipnWJkTiDYraJHAwH+Oq5Q0=4TJ6ESA@mail.gmail.com>
In-Reply-To: <CAD=FV=WwRiAzfV0Unk8ipnWJkTiDYraJHAwH+Oq5Q0=4TJ6ESA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 Jul 2023 23:26:19 +0200
Message-ID: <CACRpkdZ12GKSXXyT+qqtarPNFn4C6oHaE=ZisGaRYaBySvpFmA@mail.gmail.com>
Subject: Re: [v2] drm/panel: Fine tune Starry-ili9882t panel HFP and HBP
To:     Doug Anderson <dianders@chromium.org>
Cc:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        neil.armstrong@linaro.org, devicetree@vger.kernel.org,
        sam@ravnborg.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, hsinyi@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 6, 2023 at 9:26=E2=80=AFPM Doug Anderson <dianders@chromium.org=
> wrote:

> Presumably if we wait a few days things will sort themselves out. If
> something needs to happen sooner then we'll have to get the drm-misc
> maintainers involved. Probably at this point it makes sense to wait?

Yeah there is certainly no hurry :D

Yours,
Linus Walleij
