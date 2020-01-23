Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72ABC147085
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2020 19:13:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728139AbgAWSNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jan 2020 13:13:44 -0500
Received: from mail.kernel.org ([198.145.29.99]:60792 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727278AbgAWSNo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 Jan 2020 13:13:44 -0500
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4C7602077C
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2020 18:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1579803223;
        bh=6MqlOLnjfj6n5OQ2aTdf6gU9RHeDhjoyWjb+T9xoTeU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=LPohR2SwKeSV+JWcooZYGFKgRx8O4J8cJ7QKXPjwCi8d/t+bkwhnna6hP+yc67xIC
         KEx6Hycn+ucM33GU4wqf0RJeiKYKYemFrbQH7Mix4CktbgC/+iSv3jxhzG+ZN+Tsgp
         e694yKU1BGqMsTobgbi1WI0pLjFU6sETpcy0FoOs=
Received: by mail-qt1-f172.google.com with SMTP id d5so3236555qto.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2020 10:13:43 -0800 (PST)
X-Gm-Message-State: APjAAAUhObKloJyK75pCqRkYncy9tUsNszXcKsaFHhht3ixZMqDhbQlZ
        fVSbwCIW9HkvNnNhD4yk3jdh12KYZz9zcB2sVw==
X-Google-Smtp-Source: APXvYqzvfTdOzsaxrB3HCvzOLuVxPF28i8nePTrJjljhe1B9g1FVhmdb1LKUEW17DoEzBwPRCMw9/W+jFStAHdPb3J4=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr17304328qtp.224.1579803222465;
 Thu, 23 Jan 2020 10:13:42 -0800 (PST)
MIME-Version: 1.0
References: <20200119210907.24152-1-robh@kernel.org> <20200123175650.GA17233@ravnborg.org>
In-Reply-To: <20200123175650.GA17233@ravnborg.org>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 23 Jan 2020 12:13:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLsf-YeQfeP3Vc_WRbT5_2T0aDsRpBdD2uL--Xg7ciBTA@mail.gmail.com>
Message-ID: <CAL_JsqLsf-YeQfeP3Vc_WRbT5_2T0aDsRpBdD2uL--Xg7ciBTA@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: display: Convert a bunch of panels to DT schema
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Thierry Reding <thierry.reding@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 23, 2020 at 11:56 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> On Sun, Jan 19, 2020 at 03:09:07PM -0600, Rob Herring wrote:
> > Convert all the 'simple' panels which match the constraints of the
> > common panel-simple.yaml schema. This conversion is based on how the
> > panels are documented. Some may turn out to be more complex once the
> > schema is applied to actual dts files.
> >
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Chen-Yu Tsai <wens@csie.org>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Removing this amount of files does not happen every day - it is a good feeling.
> Thanks, applied to drm-misc-next.

My goal in kernel development is to remove more lines than I add. :)
Most conversions are about double the number of lines, so I'm not
doing too well.

Rob
