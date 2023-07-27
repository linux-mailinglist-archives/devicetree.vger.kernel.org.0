Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7689276493A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 09:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232318AbjG0HrA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 03:47:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232168AbjG0Hqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 03:46:37 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 778369E
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:39:55 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-44768737671so43928137.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1690443594; x=1691048394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oNHjPlRW5a1AhVq3aMxLibOv7LXH4OB6KXoGYQG+bo=;
        b=5JkRIRSMDq7rrLzEV2QWciwiE0dO00YHU3w0PyQUUe2/fZ3MkVQ2sydzdxfNPpMMqB
         XThYtN41zHz8qYiI3KtQfWiyXVMDrbwN2kmMw9kH3ljS0gIdVwICEAraoXuL2XideGYW
         cvi4YcDt+Vv4nHS50gHRqW8WoNToFI+66rPy7JB4iHnoupW8L3vPGT08dW9I0VRVrXGr
         oNFLyKjdI8C68cbeGRJ1n8Lql8wStdxVV79kqYURpYf/IYT+GFAWLFf7wUypNo1OLIMp
         cnl60QuYXP1IXkLkGnvRVXcrhDM2Wyz4rpBtdPXGura/CkwhZt4A9Q2jydsnAC6SDH6x
         8ssA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690443594; x=1691048394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4oNHjPlRW5a1AhVq3aMxLibOv7LXH4OB6KXoGYQG+bo=;
        b=BUqHLqgkNd4cu0LPUyo1S1NtyfiUcZU5dLGrruHoRkFFbzUgSD2zoIrbkPQ6A4jEJq
         V5snXaf+G68cUHrSpz4gBxjJZntyIvr4sKoXuMDO3dkVtvp0JyDVcAuTBZHr5qZsQKHw
         6gCK00CSOL7WnZfqm8LhL6552rMNk1MPa9GWa4+c60xKrUp1/hdHTdE4Dxxot194wU8l
         WDL8KGMdE+UbTq5LHSB9rquRmrqXEdP97CpF71zHmgBsymXdJ8obe89jPymHudeCT8+1
         QlcNDKC357TbfOPAQRPEJlRThjOkHUN6GJvDIhDYFsyqAvVlyamksrKQ/CrCzpjZ5qDS
         FAPA==
X-Gm-Message-State: ABy/qLYSZ06mzNKiPgJ0yGHudAXxPSIAUYreH2RLJYxEErfxbWz1wV68
        kcGuEaihayQEll2pqvyULZM4LcMrYLilU6IafalARg==
X-Google-Smtp-Source: APBJJlF7O+IfF9pAl5zpxLVhMdlBph8wiyRp6dHdBUp7DDpdn4Aw/wPPvHUisxZNWBKH5INkNwgBa5JdDzJWMhhl4WM=
X-Received: by 2002:a05:6102:1d0:b0:43d:6660:581b with SMTP id
 s16-20020a05610201d000b0043d6660581bmr918043vsq.5.1690443594508; Thu, 27 Jul
 2023 00:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230523090406.59632-1-tony@atomide.com> <be50a724-280e-7827-91f4-88d16e1e295f@lechnology.com>
 <20230721074510.GT5194@atomide.com>
In-Reply-To: <20230721074510.GT5194@atomide.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 27 Jul 2023 09:39:43 +0200
Message-ID: <CAMRc=MecbyWzEqvD3v42qJ-jgpEOh-HnSfawcDpJfvdWCuuZ4Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for davinci
To:     Tony Lindgren <tony@atomide.com>
Cc:     David Lechner <david@lechnology.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 21, 2023 at 9:45=E2=80=AFAM Tony Lindgren <tony@atomide.com> wr=
ote:
>
> * David Lechner <david@lechnology.com> [230523 14:00]:
> > On 5/23/23 4:04 AM, Tony Lindgren wrote:
> > > We want to unify the pinctrl-single pin group nodes to use naming "pi=
ns".
> > > Otherwise non-standad pin group names will add make dtbs checks error=
s
> > > when the pinctrl-single yaml binding gets merged.
> > >
> > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > > ---
> >
> > Reviewed-by: David Lechner <david@lechnology.com>
>
> Looks like this got missed, I'll pick this into a branch for v6.6 merge
> window.
>
> Regards,
>
> Tony

My bad, thanks for taking this.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
