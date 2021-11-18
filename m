Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE9CF45527F
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 03:10:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242455AbhKRCNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 21:13:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242451AbhKRCNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 21:13:48 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8AFDC061766
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 18:10:48 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id m6so10810381oim.2
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 18:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L11A2mOS8Tgo1yhWUFCdOzNKfupx8X4+z4kUDHeJpBw=;
        b=FdNXMBruj/r9N6yrmqT48ExTVw+K+yopdzlAbgEE0ZGOYRIAOogEpPZszLAHfQ7X45
         CHFM2szFFgUK2ct/EF5fLRvYX6uUNRiDYimGLViO3CKNhO5nbSSR26nFbL5JsO8Cc3Xf
         Z4KH4IkzDspl2Sgo0L+nj4hALSY4mnPXEGl6PDXzk763W+Vj+o1KegbVeB9sgAqHhoYH
         KzfFCQCmV4zBOC8SOC5dkUovZPNcmzTWUCKtrvjacNOqS6HVz/Ods35S1TUxzCO8U/xO
         EdbuA57crvyViKzx8hb2bWIhpNmc9aOMYh1H/CxGj//G+1m6EOBL4uJPIoScuG0NH1Bj
         ZYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L11A2mOS8Tgo1yhWUFCdOzNKfupx8X4+z4kUDHeJpBw=;
        b=geoDlfKvpx1/u+V7BPfYdxCuO4YYLu7fsmAqs8n3ADn8QF56F98AK7P5OuKIxXGyfb
         YoUZ1rtM8HLu1K2EAAuVgwi4XosUC4sbuegBwdJnEv451g55aghnD0obUPiIXbm1F9zn
         PwQq48IFV4oX4xrlT2H9RcxFyzIzAL0R0/EgLtxycCcAd+q5E1nYaYCc6O+nqAmLlUEG
         oCnNpvSS+s6A/364jUsJPQmZMkCYCqrJKx5a2i7YKrZ/TxrHXDZa1DLzBt5nYIV29len
         ZPjJ/TZF4oEa9AHwfQdfpvFzQ2g0+vPxKtOs/Y0Kmk/gE3p0HurT3/TkFvY0oIp2sYpW
         52HA==
X-Gm-Message-State: AOAM533xLAvBSID5jHaCcKunEckx3RBEp2XvoGpFjF9G+AEzibgoRhBZ
        WTfhiqO4VYp2PdRI0vrCnefPrS2pHHDJSYNNwNmCYA==
X-Google-Smtp-Source: ABdhPJy5wey3xEBJ5eDd/vaFv5cCcdwwvIfzZLQfaPKixrO6IM4l6VlnrQv+Fl02j8QxpGX2pJrL+GpGW6QcwURvuDU=
X-Received: by 2002:a05:6808:60e:: with SMTP id y14mr4354790oih.162.1637201448134;
 Wed, 17 Nov 2021 18:10:48 -0800 (PST)
MIME-Version: 1.0
References: <cover.1637061794.git.matti.vaittinen@fi.rohmeurope.com> <6123f62ac44e6513a498d15034a4b6b22abe5f5b.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
In-Reply-To: <6123f62ac44e6513a498d15034a4b6b22abe5f5b.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 18 Nov 2021 03:10:35 +0100
Message-ID: <CACRpkdbKeW+pJ8SZ0fPD+9kEtgHgi2A9U=f6XyKTHogKU-9F9g@mail.gmail.com>
Subject: Re: [RFC PATCH v3 3/9] power: supply: Support DT originated
 temperature-capacity tables
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, rostokus@gmail.com,
        fan.chen@mediatek.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 1:26 PM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:

> Support obtaining the "capacity degradation by temperature" - tables
> from device-tree to batinfo.
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Same questions as on the binding patch.

If we already support different degradation by temperature tables,
why do we need a second mechanism for the same thing?

I'd just calculate a few tables per temperature and be done with
it.

At least documentation needs to be updated to reflect that the two methods
are exclusive and you can only use one of them.

+ * Usually temperature impacts on battery capacity. For systems where it is
+ * sufficient to describe capacity change as a series of temperature ranges
+ * where the change is linear (Eg delta cap = temperature_change * constant +
+ * offset) can be described by this structure.

But what chemistry has this property? This seems to not be coming from
the real physical world. I would perhaps accept differential equations
but *linear* battery characteristics?

If the intent is only for emulation of something that doesn't exist in
reality I doubt how useful it is, all battery technologies I have seen
have been nonlinear and hence we have the tables.

If you want to simulate a linear discharge, then just write a few tables
with linear dissipation progression, it's easier I think.

Yours,
Linus Walleij
