Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE0714A32E7
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 01:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353425AbiA3Anx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 19:43:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242550AbiA3Anw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 19:43:52 -0500
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37827C061714
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 16:43:52 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id m6so29540558ybc.9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 16:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i0heOt0MsnfbggLnL41BYSYo+JW4b1v4laT3az03jyE=;
        b=NTUUoAwKu7RD+Vz0K3+O7Xn0Q+qJK8lQEW5wXkAOwblKwjVUeOWeoXjSuUyHQOm2WU
         QLR05VjCiSdHhC2r3/lfYWWwxot6fMes++uNzubU/E+IosIe0VZaK2yrLpeqYGxCFj6t
         qFNdYlyHv5gFrXHes9twon2u56e+90H5YMqGrOXE4MzzkTFwZ23E4ZtBJ+fUlSMO9n7k
         ivfk/0fKeZCdf8ARYxPfnEY7xjBDObjf0TTLwfcttTXLcf8GT7iatHOW1toEDwZPeH0b
         PpMtLUQWp+S/baBvVEqBvBBbuXp1QHTqyMILfqFgRxiyqoDR7Hb8a6Bla3MPFzt424Ko
         2Hhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i0heOt0MsnfbggLnL41BYSYo+JW4b1v4laT3az03jyE=;
        b=2QNJXKxslFhF1dUSKNz9wd5phnUEZQ7SM/13bkr+aBpzYBp34lDAwE00IFxVghrXPM
         btIBEJb2U0pN1+49aOaNpydnmQLVLsOdVk1cg0vY4weRBpoQLxSOH3HN/uVdnrfqZpMZ
         0dB3sVNYmMUEJYWWj2Zo7KOGIBkH5GwTLGghcY9Sy5MWCZX4r/88HLTkQ4n+A1Zek4rV
         50ih4T9xZWoB4enGwGlUhz447ctwCUM5ODRw09pzcZq1J6FESG3D7K7q9nBPgAQLpEjf
         LiQR/9nDSMpFPtBxHbxf/reU3pRvxiNQGzDlsA3uMY+2/fVpldFzn61nrQpJuUwS/JpT
         Bipg==
X-Gm-Message-State: AOAM530mrg0l7E5cpjedb2z/kHExwouvjIt2v5QEREHyP4qLhZGqxM3+
        gwYxcTttW9PZEo2ZErZWIHZyzlbW7vnhcsvYpHcW7w==
X-Google-Smtp-Source: ABdhPJydy6ZkeacI3rT8jHNSi9nSVdfyeZ6fzuQWvUGVLQ53U3TfGwQChT4mT+0l3VMAP7QbbCFsXkBR31fK2hp451E=
X-Received: by 2002:a25:8c3:: with SMTP id 186mr21032329ybi.587.1643503431458;
 Sat, 29 Jan 2022 16:43:51 -0800 (PST)
MIME-Version: 1.0
References: <20220120150024.646714-1-paul.kocialkowski@bootlin.com> <20220120150024.646714-4-paul.kocialkowski@bootlin.com>
In-Reply-To: <20220120150024.646714-4-paul.kocialkowski@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 30 Jan 2022 01:43:40 +0100
Message-ID: <CACRpkdZnw-Tf2eQwO+LZRW4UacR09qWRWct00=XLb4pfa-N3=g@mail.gmail.com>
Subject: Re: [PATCH v10 3/6] gpio: logicvc: Support compatible with major
 version only
To:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 20, 2022 at 4:00 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:

> Support the newly-introduced common compatible for version 3.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Are there dependencies between the GPIO patches and the rest?
Doesn't look like that.
Can Bartosz just merge the GPIO stuff to the GPIO tree?

Yours,
Linus Walleij
