Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 035C8565FBD
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 01:32:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231582AbiGDXcC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 19:32:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230149AbiGDXcB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 19:32:01 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C0621A5
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 16:32:00 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 64so9755794ybt.12
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 16:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xtIULTBzZ5AvsWWUAGTHXrEyCrCUP/7oowoPHT7Dc2I=;
        b=MNXFcXSP5ARtJU0V5U8ZLHdRZKk2BJhtC5f2yT/hO38cI98XRCd3e8aOyKqHNY8IV/
         zAraJdDCzyaCPmYlNGGMvZ56ev896O31PBHlz9pOItK09YoVSuJWU6HG4M3kMjuk+5IP
         xVpGXaFth8KDA2Of0R8nVVkFupYqyATwjchODHjKftWO89RqMibzh8zyS6JldWb42Iw0
         ouRGs1MXYcJPZjffmPt6OMGo+7YVa68B4amIQhQl4qKd2/ZvtKCxt5wvnL7wSely7HsK
         8sxL+Pj5xoHxOVYmAqNWOoDogPPcG9wFXh0iMx0G2C6ohwmwzrSr24j0Aw3w1Xcfwyqh
         Vb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xtIULTBzZ5AvsWWUAGTHXrEyCrCUP/7oowoPHT7Dc2I=;
        b=zzNs8IpOAQ2EDsykXem39yQbXLfmDkCQKpw2v4ej4n1LyQLfrmLH6HKt37X0U6bU6b
         U53x/LDiVbgz9HrFy1lPi9i5yw1GP9Qz4w6nVFB229T/qtjnoOkFfxnDePvrmfORNgjW
         izQh6Y3aY+bzm7DTnXGCrlPeOIzMz/fJTWOoMhEeN8+pM7g2FEfdTpDx/H+izJB+rz0T
         q0ckDC4b/HeB6/hkQZTqLECzaQZ8jMewFeRv0Z6rS8kPocw0hS4aLHOTUuDfiwo9XLUt
         mqDnQGwnrc/mnjzy+Oy2R9XzJ9JLYP5hAA8fJne4stdVKpOL+cLF9RJqhg5BNmo47iBg
         6I4g==
X-Gm-Message-State: AJIora+XPdqBFMa7USLCDJ12/ndES3jOJYwxIJTzkDxs03y14mfS8Qc0
        hV+aO17Uqp3qGSAgYm/Jzykw/i1zgNIBjY8NrjjHOTV8q9s=
X-Google-Smtp-Source: AGRyM1vNW5FPZUQ0jx3hYodZo7j+rg304d3Fl4/H0TOPxN1p049XsZjmaD+ntntf7tErX296/i3EsI+j1UoMXK5Np0w=
X-Received: by 2002:a05:6902:152:b0:66c:e116:6a7 with SMTP id
 p18-20020a056902015200b0066ce11606a7mr34029892ybh.533.1656977519747; Mon, 04
 Jul 2022 16:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1656883851.git.jahau.ref@rocketmail.com> <cover.1656883851.git.jahau@rocketmail.com>
In-Reply-To: <cover.1656883851.git.jahau@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 5 Jul 2022 01:31:48 +0200
Message-ID: <CACRpkdZSeX-TPk4+_EEdZFMDH4bmgSZcm7vyX_d4+K4hGSbWXA@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] Add support for magnetometer Yamaha YAS537
To:     Jakob Hauser <jahau@rocketmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 4, 2022 at 12:03 AM Jakob Hauser <jahau@rocketmail.com> wrote:

> This patchset adds YAS537 variant to the already existing driver for
> Yamaha YAS magnetometers.
>
> Patch 1 is a fix on the current driver.
> Patches 2-9 are cleanups and refactoring.
> Patch 10 finally adds the YAS537 variant.

This patch set is really nice and getting nicer.

Maybe Jonathan could apply patches 1-5 so you don't have to
resend so much code and get more focus on the top 5 patches?
They are anyway nice in their own right.

Yours,
Linus Walleij
