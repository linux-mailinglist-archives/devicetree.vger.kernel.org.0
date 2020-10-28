Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30D4E29E173
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 03:01:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727866AbgJ2CBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 22:01:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727888AbgJ1Vti (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 17:49:38 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02AC5C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:49:39 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id x13so604062pgp.7
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0YQo4kVcnhVHmUOB0gTZ0jk2nK+H5MUUNH6DtMNqxEA=;
        b=JVgFxESfJtdCSlw1tMDAm4fkeVE2n486thk2/41Xj3ue5Q3tdnbMLvbttltwKPt66W
         hkFPl/7sl2B5R5K+aFEZiKq95heCrpdKTWRoVacDyeXDHcxrGs9o6C9I1THEcW0fBV1W
         9MT+2pvIAlfvbYfGI3kw7iqR5r3CiceCDsvyWHaXsK6uBNYL8cqMGN+ld/R/2pv85Jkl
         Qxtyx4SdEllw8nqvSjb/43gC2gmKX3Ci7s96VwIdqc1cneiyoHFCYtKAku7WLbdMGbqA
         bziy1gfJJYLxn+KOcaslKCTr/u0drlG6kMH8SBy00aVj5QyuFtBtMrMK7mOpdzVk2HnC
         +u+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0YQo4kVcnhVHmUOB0gTZ0jk2nK+H5MUUNH6DtMNqxEA=;
        b=CHN/5/UH+w5WJxz8TnhXSk2q+ewg2dBi/g6VP4SM4jPeeYpGnQk4X6D8Sp2Ud21+oe
         /jrV+IsW1uP56IjpIAfXsY1er9hus2KgRCK79pxgKgBaaTYd9pjolk1QFF4toggJTW1v
         XeqMF3rzKmEAJkFn8kUjuOk1qFBDIlg6eejEnH3DFFlTbs6fYGp2dTF6x2+TVffIdk2R
         NX8W67h4xW3fGxMzOJEDbyFYfduKerPC+Vir6NgBDyIkJmsJ3cA5WXua7HsyqsgBQz73
         nmPOQ123p3RHSNhWMYGIVuJHJI8jN9HZ355wTP3I5cYfNy8xBvqFkk4aluRMxE4dfSYa
         VBDA==
X-Gm-Message-State: AOAM533mhDSpjWKj93j2F6rrfuRduWIGlP7wHmd61yhJsyD/8rfgp947
        dX6MhufjEErCCbzbUozE0dBT2g2wI4cifwWzwAlggGCqNbaqvQ==
X-Google-Smtp-Source: ABdhPJxhEwUa7d09wLvFmG9A0EaYBwneg9ZuZ/qW/4QMveY6Xe5CKT/5zGwnQYB0pYHfmC+OWNdZAv9l9GA7rS18hLk=
X-Received: by 2002:a6b:8ec7:: with SMTP id q190mr6044595iod.42.1603890852501;
 Wed, 28 Oct 2020 06:14:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201024200304.1427864-1-fparent@baylibre.com>
 <20201026121316.GB7402@sirena.org.uk> <CAOwMV_w5N0_Qgg3MFph1147cbvFP1Y=mUtNjGbcr-Tca4ZJ3yA@mail.gmail.com>
 <20201026172431.GI7402@sirena.org.uk> <CAOwMV_xt=OV6cKqQTZUUSAvYKxUUQZAUywAHtFFHL=E5xVu-Zg@mail.gmail.com>
 <20201026203608.GJ7402@sirena.org.uk> <CAOwMV_xUWea81rKFE=zD4xWL3rZ5G8cpWm5xJHT_AX=_frLDRQ@mail.gmail.com>
 <20201028123258.GA6302@sirena.org.uk>
In-Reply-To: <20201028123258.GA6302@sirena.org.uk>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Wed, 28 Oct 2020 14:14:01 +0100
Message-ID: <CAOwMV_xsjp4on0W79c6-zweY4dON0+gC=Vxao28=WirSZKsX-A@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: regulator: add support for MT6392
To:     Mark Brown <broonie@kernel.org>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, lgirdwood@gmail.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 28, 2020 at 1:33 PM Mark Brown <broonie@kernel.org> wrote:
>
> You should be using the of_node from the parent device to find the
> regulators set, look at how other drivers do this.

Thanks for the help. I got it to work. I will send a new revision of
the patches.
