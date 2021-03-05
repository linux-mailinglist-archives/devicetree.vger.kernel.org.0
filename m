Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1A3032F329
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 19:51:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbhCESuk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 13:50:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbhCESu0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 13:50:26 -0500
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80C82C061756
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 10:50:26 -0800 (PST)
Received: by mail-qk1-x730.google.com with SMTP id a9so2966971qkn.13
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 10:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yI8iOjteMFKoGk4zeandGRXPKmEeCoKU9NReC9R1TlA=;
        b=jdju3sRLxCIuGglN0bDwsdRLQdMI4wUI/YgyLBKCoHdX8rOcCNBbvbJ0KpYRlazEOS
         N8wzuqpxZw4XfkZ3K5SyaQAjQE7iuNrvt0rMFrrv8kLjDxbdETjbAvUm7Gnc4FEp3hQf
         B5eOseLz2ziLyCmSG5lckZi2t+qaMMTyCzF4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yI8iOjteMFKoGk4zeandGRXPKmEeCoKU9NReC9R1TlA=;
        b=A47h4atSu9qhBjF2ubC5W/JRR7zNCya9jF92JuAas/XewPF2wpsiapinrYbrrodvve
         gGDB8hcgugnycZi0KphSvhCFAJV1ntH2R40Z1zNMSSmXdK1YmZPKoen5F6sYz5Ht1V14
         3hWex0rJMIAFr97LAgunbKnShY3Oe170ufyjTudHXlPU/EjIu0Gi8C8YkLBb6nmWxOP3
         SPKcRJ4nrzD7hOnzji+gCRgR8GBnwmmhrchIo/M+fD6Lmd0CZAJ01k9C0qGwNWy27Gqa
         VvFQdB22ar3p3yylWhy332ObJSZALEwJhojTTB5gQjRRMIFeigpKBuHN42QF88sLBv9a
         Lf8w==
X-Gm-Message-State: AOAM532I6adXQkMTHHD3hcHA9c0ljwJVIRidm/1+qdO3A2mto8tgrtAE
        9Hn82UbgHZ2DDmAT3F879yxqujLJomm3rQ==
X-Google-Smtp-Source: ABdhPJyGzAMYOJlCKFA0dhsMcS5zJc00EHqScZ7phhguhDL0t1FJR5T5ShxEQItHFQdc17E6KM+g9g==
X-Received: by 2002:a37:4a50:: with SMTP id x77mr10618921qka.334.1614970225202;
        Fri, 05 Mar 2021 10:50:25 -0800 (PST)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id j24sm2426258qka.67.2021.03.05.10.50.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 10:50:24 -0800 (PST)
Received: by mail-yb1-f182.google.com with SMTP id p193so2998833yba.4
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 10:50:24 -0800 (PST)
X-Received: by 2002:a25:cf88:: with SMTP id f130mr15532432ybg.476.1614970224174;
 Fri, 05 Mar 2021 10:50:24 -0800 (PST)
MIME-Version: 1.0
References: <20210304180415.1531430-1-mka@chromium.org> <20210304100341.4.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
In-Reply-To: <20210304100341.4.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 5 Mar 2021 10:50:12 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UQoXsPYqv8a25Kn+=z1pZu4YUKK7VZSm4rq_i9KpD3rQ@mail.gmail.com>
Message-ID: <CAD=FV=UQoXsPYqv8a25Kn+=z1pZu4YUKK7VZSm4rq_i9KpD3rQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sc7180: Disable charger thermal
 zone for coachz rev1 and rev2
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Mar 4, 2021 at 10:04 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> CoachZ rev1 and rev2 are stuffed with a 47k NTC as thermistor for the
> charger temperature which currently isn't supported by the PM6150 ADC
> driver. Disable the charger thermal zone to avoid the use of bogus
> temperature values.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r1.dts | 9 +++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz-r2.dts | 9 +++++++++
>  2 files changed, 18 insertions(+)

I guess this patch is written with the assumption that eventually
we'll create a "-r3" or "-r4" that has a proper thermistor stuffed but
maybe we're not sure which one?  Right now you're disabling it for
both -r1 and -r2+ which is all revisions, so this could go in the
coachz.dtsi file...

-Doug
