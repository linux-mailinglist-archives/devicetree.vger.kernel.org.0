Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF8E72950F
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 11:28:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241586AbjFIJ22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 05:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241292AbjFIJ2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 05:28:15 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DFAC3C31
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 02:22:32 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-ba82059ef0bso1594457276.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 02:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686302547; x=1688894547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sXFu4yUMtLkQVLqZs27cGbref0m1NvZ9UABnGnW3Zcc=;
        b=UBQAX/5uOqkq3FVbYkIpGwXDdC7zYxEj9ZCa2YkX9AgC70xteA6Ot86vmBj6fJUKLy
         FUScht9XSfZArtomzMF3WkuN2YwxSbadDhQcju/pF0b2/byYXJ2ll5BFy3p82eg4RGay
         zotuozoiQJnCvgaOUBrABeOjSqMQzLaqVndxuIS3txByOyXrhVHWBEGyYA7E8KDJOpAJ
         9NAMtK6HH1f9Mj4BozJXoomHjc9rrP1ueWQ5rR0ghHMsgocsbjw4kzf9as6X+6eg8K9Z
         SNx+K1M0kVM+qhLww01ec5m7QsZ4Y5HCzE/3n1ffcPm7yaGo5jsowvCodSuYuUOYHZIq
         eUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686302547; x=1688894547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sXFu4yUMtLkQVLqZs27cGbref0m1NvZ9UABnGnW3Zcc=;
        b=KU3ZnjAZJkePkPifA6Gxg1goGCmdvlf87O4e5kSu9XLhBc8c9DM32drc2Lky1Qbpc4
         3OvyDW/Mi2XEF1IEltxeqwr/vEJz4HvHn360Rwzn5IAmL9kisEaPFZnWQRhX14sjXUnh
         v4gase47op9a1UXzGbznfHZjXXspYPB+01wI34metEammFrzc741D1VqO9c3IrSObIQ+
         FdoCM7FPnEXavwQS0HICo7YnffEcC0xX+cwAdBsz3ZKhI4z66RU3qvZjszYKpSN/RuZ5
         qpu7gK9F39xPFtfoZ4S/xs9dOf2lcn/vNbRU7HxeJQ6mOhusqDXyZJZeUDauqxbNrdif
         wAmw==
X-Gm-Message-State: AC+VfDxThxYIMcBNiFQZlpb7txAtzxSppXE5ipAMF7a3RM7JdeJRGTHl
        wxe8Ox1Vw/eg45mSra4vxtvBAGkFIwUVnU4VLWqHFg==
X-Google-Smtp-Source: ACHHUZ48RvbMw1+M+7v2VlVgLESWvZ6AGC8PU94FcGcAeLzJMhza44IJ1d+WbK+hcPxCXuMt0Oxh3ZuEmfwL/Xhodm8=
X-Received: by 2002:a25:e6cb:0:b0:bad:e86:8fda with SMTP id
 d194-20020a25e6cb000000b00bad0e868fdamr501993ybh.22.1686302547555; Fri, 09
 Jun 2023 02:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230602115201.415718-1-matthias.schiffer@ew.tq-group.com>
 <3241150.44csPzL39Z@steina-w> <CACRpkda2yQefuUMn6Ot8Ns6nNgfC25i9nwmzwxOy5fUg=A44hQ@mail.gmail.com>
 <4784636.LvFx2qVVIh@steina-w>
In-Reply-To: <4784636.LvFx2qVVIh@steina-w>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Jun 2023 11:22:16 +0200
Message-ID: <CACRpkdb66Br+nVPiih+oQQfXokMRYXUSE4rriPykR-yA9eDAxg@mail.gmail.com>
Subject: Re: [PATCH 1/2] spi: dt-bindings: introduce linux,use-rt-queue flag
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux@ew.tq-group.com
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

On Fri, Jun 9, 2023 at 11:13=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:

> > I fully sympathize with this problem, because I have faced
> > similar problems myself.
>
> You mean RT-scheduling before userspace is up? Can you elaborate the issu=
es
> you see?

No. But choosing block layer scheduler (BFQ for MMC cards) before userspace
is up, which is currently done by udev scripts in eg Fedora :(

Yours,
Linus Walleij
