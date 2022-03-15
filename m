Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3DA4D9EE7
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 16:41:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349442AbiCOPnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 11:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244044AbiCOPnG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 11:43:06 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4676253B54
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 08:41:54 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id l24-20020a4a8558000000b00320d5a1f938so24872158ooh.8
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 08:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ZFBDPi3l8Z+/CHDubXV7NtTaEAM+Kf/xEPCEqPXnJh4=;
        b=GEIAKuZrRS9P2BTEJhECuB23UB/Wri/ArgJQ2eTN8KocIKknHKG6zj39nZa7m6z2il
         +XQMlusDX98Run4yMGSF2qHAuL97T394pxZzYX+PbpuWiveUrxAbklGk+NLumUe07UqM
         W3KBReUa1Y7aYUPVGUecbzzareoHmusitcdEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ZFBDPi3l8Z+/CHDubXV7NtTaEAM+Kf/xEPCEqPXnJh4=;
        b=NdanMap7qEmQySUJpM5nDm2z5wV051vYfl9HikNQCji1SbLjETNkwn+Os2P7ETUa94
         JQNjo9QFrpurGHbD//+AOPkpXZITv8drLpXVeQzNeHtun8jh9AQGIkmlPvkTE5Pd6roL
         IP4J8c/UQEWDK0Q+SZb9lupX9+joQ1JK4pgirJW7/a58aUPARi/4nJqxrn0YU0Pjk66x
         qsEcMTXlED2RuqHMMpa911WR3e9CdXstcFFpIJYHfLJ/Uzlohg2orxciGCyKsn2fHuVw
         u6i0ZhHEvNpEFwig9AqsrxiiJkoX1l1beIsvs9xDTnrSGWvXFqv1m7zEuWWj97JSffBJ
         9jYw==
X-Gm-Message-State: AOAM532KZEEJTHMiC8LNsEtMDGbrzsQFZ6JwRXcrABovbuASD3tFHQU1
        gE/HuL8UWxWVQv41LXCHvnULqAyLE1/2ue4dCLGmsA==
X-Google-Smtp-Source: ABdhPJz8+r5eaVdE8s44FUGEImmP0Nqoq9UTqFC00MWHeu6xEUjYE7NaZ3r8OXU1tIpZfKPxaUSArWi93wxYFl/hbBI=
X-Received: by 2002:a05:6870:d250:b0:da:b3f:3211 with SMTP id
 h16-20020a056870d25000b000da0b3f3211mr1686818oac.193.1647358913320; Tue, 15
 Mar 2022 08:41:53 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Mar 2022 10:41:52 -0500
MIME-Version: 1.0
In-Reply-To: <YjB46Sq3IwvgR8MB@google.com>
References: <20220314232214.4183078-1-swboyd@chromium.org> <20220314232214.4183078-2-swboyd@chromium.org>
 <e7f9466e-03c9-7754-0dc6-a04823d1047a@canonical.com> <YjB0JOKysPpg2KGF@google.com>
 <9ec3c26a-3b85-4bea-5a5b-de9ac570cfca@canonical.com> <YjB46Sq3IwvgR8MB@google.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 15 Mar 2022 10:41:52 -0500
Message-ID: <CAE-0n51uDh2Cf_wGpAVH1t=T0A1eTT=+KU3WMtxtyPL3kLDAdA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ChromeOS fingerprint binding
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Benson Leung <bleung@chromium.org>, linux-kernel@vger.kernel.org,
        chrome-platform@lists.linux.dev, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Lee Jones (2022-03-15 04:30:49)
> On Tue, 15 Mar 2022, Krzysztof Kozlowski wrote:
>
> > On 15/03/2022 12:10, Lee Jones wrote:
> > > On Tue, 15 Mar 2022, Krzysztof Kozlowski wrote:
> > >
> > >> On 15/03/2022 00:22, Stephen Boyd wrote:
> > >>> Add a binding to describe the fingerprint processor found on Chromeboks
> > >>> with a fingerprint sensor.
> > >>>
> > >>> Cc: Rob Herring <robh+dt@kernel.org>
> > >>> Cc: <devicetree@vger.kernel.org>
> > >>> Cc: Guenter Roeck <groeck@chromium.org>
> > >>> Cc: Douglas Anderson <dianders@chromium.org>
> > >>> Cc: Craig Hesling <hesling@chromium.org>
> > >>> Cc: Tom Hughes <tomhughes@chromium.org>
> > >>> Cc: Alexandru M Stan <amstan@chromium.org>
> > >>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > >>> ---
> > >>>  .../bindings/mfd/google,cros-ec-fp.yaml       | 89 +++++++++++++++++++
> > >>>  1 file changed, 89 insertions(+)
> > >>>  create mode 100644 Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> > >>>
> > >>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> > >>> new file mode 100644
> > >>> index 000000000000..05d2b2b9b713
> > >>> --- /dev/null
> > >>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> > >>> @@ -0,0 +1,89 @@
> > >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > >>> +%YAML 1.2
> > >>> +---
> > >>> +$id: http://devicetree.org/schemas/mfd/google,cros-ec-fp.yaml#
> > >>
> > >> Why is this in the MFD directory? Is it really a Multi Function Device?
> > >> Description is rather opposite. You also did not CC MFD maintainer.
> > >
> > > A lot of the ChromeOS Embedded Controller support used to be located
> > > in MFD.  There are still remnants, but most was moved to
> > > drivers/platform IIRC.
> > >
> > > Please see: drivers/mfd/cros_ec_dev.c
> >
> > Yes, I know, that part is a MFD. But why the fingerprint controller part
> > is MFD? To me it is closer to input device.
>
> It's tough to say from what I was sent above.
>
> But yes, sounds like it.
>
> We do not want any device 'functionality' in MFD ideally.
>

I put it next to the existing cros-ec binding. The existing binding is
there because of historical reasons as far as I know. Otherwise it
didn't seem MFD related so I didn't Cc mfd maintainer/list. New file
additions don't usually conflict with anything and this is in the
bindings directory so the driver side maintainer would be picking up the
binding.
