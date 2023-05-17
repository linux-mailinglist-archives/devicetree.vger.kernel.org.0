Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7C1E7067E9
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 14:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbjEQMUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 08:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231607AbjEQMUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 08:20:37 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33E9630CB
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 05:20:36 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-561da492bcbso3855007b3.3
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 05:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1684326035; x=1686918035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltwPQUfHcnWmj6VOTv4xyYpzTycQbcqHQNvaDQAVaHQ=;
        b=HOyV5PMO/aOWK4yVwus5waDzP8sR1jERuHT/y6aMu+Tyuh60QM32VyRT3faBB2N3wY
         ezNPlqOW6+rBN/BU3rqroIxqXuAw2ftIJdhQBQ1lVHr0vDA/muI8Cr6UEwGRvnknSf5x
         kNTCnXUyKFPdvPQYhXrPVVLJmWcQpaMp5QHW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684326035; x=1686918035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ltwPQUfHcnWmj6VOTv4xyYpzTycQbcqHQNvaDQAVaHQ=;
        b=IeUeaLyIHaMecniGf4l10v4dBMRR7qZ2IPpZ+fD/ZlO+Z1gvuIRMnkMurKtOP2qaOK
         XVddqUbXpYm4V0CGAi1COA1K60K6Axzd/bP7Y4yiDYPjtgwBj/20q7r2niKSfeTwEXuj
         eBytr3DnMCcohaNuIYnT6OO4qMT2KAmK2mL5vNTLYuZlGZuFGxEAfFz46IyGOcYawuAq
         9freV/7w3YjwCv5OcjSmjNXQaPfmkPAdPy1IkkXKP+PXrLn3O6hYX3XgyXMYoW9l3bAj
         C/l7kycPSxlwsKRA3e+e7NYtYoPAdwyo4ktt16ak4TbMO2+nWgMpPz2CRiGrqdC/hc2S
         cGng==
X-Gm-Message-State: AC+VfDzxkFnovw4/2SmGgtFGgj97HWzLqv4UKxtkYrT2u8tQ3baBiA7s
        UDTMWOpVPGz1kiwt99UvMireDv8GNZQUMoICTNXSWg==
X-Google-Smtp-Source: ACHHUZ6gms/DiTFU2XgEoNWwGRw96pbllbcGtmFo9dVbMA5y22pUQKoImfpkgwaSQZhZy/ka1Mu3WoN2DUxERxTUuek=
X-Received: by 2002:a81:6dd6:0:b0:561:dd1b:e516 with SMTP id
 i205-20020a816dd6000000b00561dd1be516mr594222ywc.35.1684326035233; Wed, 17
 May 2023 05:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAO9szn18KsR0c+U8EEY1=xnmsKMxy6SEArMUic0z=aYJDVwWCQ@mail.gmail.com>
 <023f6cf9-0f08-f27e-d203-5ff78faf110f@linaro.org> <CAO9szn1EsbuPSRrOW8CLqhp+QUcL=9NE93FAwsg2n3htd_aJTw@mail.gmail.com>
In-Reply-To: <CAO9szn1EsbuPSRrOW8CLqhp+QUcL=9NE93FAwsg2n3htd_aJTw@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 17 May 2023 17:50:22 +0530
Message-ID: <CAMty3ZCAP6CRsJWMUZZ6+hd5igX3NgyNfhdEv2FwuDtqj4iaaA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: panel: add panel-mipi-dsi-bringup
To:     Paulo Pavacic <pavacic.p@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        neil.armstrong@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, sam@ravnborg.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 17, 2023 at 12:39=E2=80=AFPM Paulo Pavacic <pavacic.p@gmail.com=
> wrote:
>
> Hello, thank you for your time to review this patch and sorry for not
> addressing all of the concerns, it was done unintentionally. This is
> my first contribution to the Linux kernel and it is quite a process.
> I have run those two scripts and haven't received any errors I have
> latest master cloned so I will check what I did wrong.
>
> The thing I would like to get approval on before I try anything else
> is the name 'panel-mipi-dsi-bringup':
>
> > Still wrong filename. You did not respond to my previous comments, so I
> don't really understand what's this.
> >
> > Judging by compatible, this should be fannal,c3004.yaml
> >
> > If not, explain please.
> >
> > Missing user of the bindings - driver or DTS. Please sent patches toget=
her as patchset.
>
>
> I wasn't sure how to name it and this name seemed fit. I'm not sure
> how to be concise about this, but here is the full story as to why I
> have done that:
>
> I got a task to enable panel for which working driver wasn't
> available. I have started testing raydium driver and modifying parts
> of it until I got it working.
> Driver was modified quite a lot, new functions, macros and structures
> were added which resulted in a new driver.
> Therefore I have made a simple driver which I have submitted for a
> review which will probably be rejected now due tomany reasons I have
> noticed after sending it:
> https://lore.kernel.org/lkml/CAO9szn03msW6pu37Zws5EaFGL10rjp9ugPdCuDvOPuQ=
RU72gVQ@mail.gmail.com/T/
>
> While talking with manufacturers of the panel I have figured out that
> they aren't that familiar with the Linux kernel.
> They had previously only enabled  it on bare metal (PLA?) and provided
> me with the initialization sequences. Initialization sequences are hex
> values sent over MIPI DSI to initialize panel controller.
> Initialization sequences sometimes also require delays after certain
> commands and for different panels it can be very different.
> I believe I have simplified it so that someone can follow comments
> inside of the driver and try to enable mipi dsi panel by copy pasting
> initialization code from bare metal system and doing minor
> modifications.
> Since I have targeted this at people who need to enable their panels
> for the first time name seemed okay. I thought that since there is
> panel-simple.yml that panel-mipi-dsi-bringup.yml would be acceptable
> name.

Just to add a few pieces of information for you to understand better
on the context of dsi panels. DSI panels can be part of panel-simple.c
or panel-<vendor-part>.c DSI panels whose init and exit sequence is
generic are suitable to add it in panel-simple and have bindings on
panel-simple.yml. Some DSI panels have specific init and exit
sequences in terms of power, reset and DCS then those have separate
drivers to handle and whose driver name must be panel-<vendor-part>.c
or similar and bindings also follow a similar naming convention.

Just decide which part of the category that your panel belongs and add
separate patches for binding and driver.

Thanks,
Jagan.
