Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED912FBA75
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 15:57:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391183AbhASOzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 09:55:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389730AbhASMqZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 07:46:25 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24958C061573
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 04:45:45 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id 6so28295138ejz.5
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 04:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2WUya7+5IGqjt8qAdysqD/38MxbinafCy/KFWnkGaFA=;
        b=GBvAMjsNyc1KwbcthQYQW5GVYHx2lUvo09MvmbVSBtBubbd5uZbBhrMfoN66JwDgEJ
         RjF62+B7wxJFtp1Ha/dJwHbUMYJH5u/pq1IPhbKb/b900pw0igY7wnFULlHODuK/aKuv
         fQ01bO7TBI3nnaE9uPkcsVJzTs8eJ+rzht4vG3xphpuJ3jENEpbOTKMtao7V9NUFefA9
         OFLkt0zd9eLv6AbEAhmXA7qbfJki4Itn9YOi2Xov2WmVJXQlD6IXhr4bXgvSGbs8yOax
         1BQUL8i8CN3ZYjplXIw/SZ1JbG5vyYnYEtYSj5hWQ7KWeeIm4gYhzYGhxVJ1Pd0H/2pD
         7ULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2WUya7+5IGqjt8qAdysqD/38MxbinafCy/KFWnkGaFA=;
        b=HRkPuej3Vljtee9vDWr3UbOsBevT/hAqbmd4lR4R/7+OkxIHcCRGvYtuDKFo5MAd0d
         eG/MRkdfvO5Q5ovvUXAQL8esl3NjJ4Dz6OGQlyk6Ib7F1ccCFSb2VvsitO5rv08r2Jxi
         R4/E5Jp9pgqtNuWv57l1N6MNm+1GLZL9SQm+EClb6hdoVGBvRn9l4wGArOOgsyxLS7fP
         aVutbHrRN8pCqAyWjuGRi4o1REGdR3xOO1PjwW76bbZXj0+Nc1lEUKu1bWTEHvEpNjGg
         ucEKAcdT/ea6qxV3AVu6eKU95LdzTS08mCkkMaNV226EoHjKGDK46wmzNKTTHedAqia6
         K1Pw==
X-Gm-Message-State: AOAM532cfDO0slFXIe5ishBcWbsXd7l97TeJjnqQdKF3u2/2FPVEj2Wz
        QLcEugAj24uO7s6G/m6A7PPZD9oA+GyXdD02URIefQ==
X-Google-Smtp-Source: ABdhPJyuri53Lipmasye8wf+k1fH8XTfNEYApHNNFB4TKoAJIeXibPQX4MIUb9qFN+ASQENiw63w8NY/OURkJsg/h4w=
X-Received: by 2002:a17:906:19c3:: with SMTP id h3mr2823601ejd.429.1611060343774;
 Tue, 19 Jan 2021 04:45:43 -0800 (PST)
MIME-Version: 1.0
References: <20210115164658.187681-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210115164658.187681-1-u.kleine-koenig@pengutronix.de>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Tue, 19 Jan 2021 13:45:31 +0100
Message-ID: <CAMpxmJWjy-KbTswA2_8iigzRB7eDoR0P+xYPPWLpfXj-E=wEVg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] gpio: pca953x: Add support for pca9506
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        linux-devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 5:47 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> Hello,
>
> compared to (implicit) v1 (Message-Id:
> 20210113194952.104734-1-u.kleine-koenig@pengutronix.de) I split the
> patch #1 into driver adaption and dt documenation (i.e. patches #1 and
> #2 here).
>
> For patch #3 I did s/chips/lines/ in the commit log and capitalized
> "Increase" in the summary line.
>
> Best regards
> Uwe
>
> Uwe Kleine-K=C3=B6nig (3):
>   gpio: pca953x: Add support for pca9506
>   dt-bindings: gpio: pca953x: Document new supported chip pca9506
>   dt-bindings: gpio: pca953x: Increase allowed length for
>     gpio-line-names
>
>  Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml | 3 ++-
>  drivers/gpio/gpio-pca953x.c                              | 2 ++
>  2 files changed, 4 insertions(+), 1 deletion(-)
>
>
> base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
> --
> 2.29.2
>

Applied, thanks!

Bartosz
