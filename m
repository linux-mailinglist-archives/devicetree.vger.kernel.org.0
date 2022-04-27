Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A86F5123F5
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 22:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236772AbiD0Uey (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 16:34:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237201AbiD0Uer (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 16:34:47 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1389CB42EA
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 13:31:32 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id e189so3238832oia.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 13:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=BTjDu2WbVSkM+THogaOPND5vYJC+rnL9QDTnicnezHw=;
        b=iedhSo398MjiEuM4wYL0tNDNEjO1emHPQEG0jx4oFdbHMSN0Tbr73uPmbWBHNoClx2
         gf/Xnyj9fe+RYgCwlA8jRXCNu3ZdfMq5WKktloMpp8SeucsFMyn/KzuTGz76BGy5vUAX
         HkUD96ZEQ3hhmhG56vDqh8Kj45d2jczHNXwQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=BTjDu2WbVSkM+THogaOPND5vYJC+rnL9QDTnicnezHw=;
        b=35bttsl7DXJa5u+yOaOqxEYBXSqoT75yCwnG8Rxct1zHny9Gud1P+P0RoJjDQx6tpP
         SDJW37xF2rbNVsglc0nq2i1N6lchpXIYlfPEisVk0gnf2QYaXQxg1TR2z1cJdhoJaJnC
         A3YYy9TmNNSBMnNO4QQSaZ6EJI8ZVuuUlbtsIN/K3Ap9Id03/vtcH2x3AIxfPiIJ8hsr
         HmnZpILvuR8L3AZ8Jxa0zMGsy0RP8Y2lDQ4y6ecidxglM86Ff4JGxF+VXu9o4zrGZA3M
         0foBYl4+h7iEqYiIcL4KbqR7ZnuLnz4N2rzesIYJHhumJdUBzTuYka12ZImehGOQdcc2
         kC5g==
X-Gm-Message-State: AOAM532FgRYVkwIemkzJXGhH3tzmWbmUH6LRZSKp5fHN5bQLLDgW3rty
        /VZGHzvFtK9GklHf0oyoEmnaR89VrTS7fMFIUkoPTA==
X-Google-Smtp-Source: ABdhPJxs40QvWqeyF3wGk8ZFJb/2UJkHTTGaB8uPg3ULNPuOuUNEUYmGXTbvA8Z4QNZzDDPKDXVVt3/sEqPIqJjowlU=
X-Received: by 2002:a05:6808:1296:b0:325:8fb:68f3 with SMTP id
 a22-20020a056808129600b0032508fb68f3mr10065713oiw.193.1651091491393; Wed, 27
 Apr 2022 13:31:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Apr 2022 13:31:30 -0700
MIME-Version: 1.0
In-Reply-To: <CAE-0n53sfUMiCzEgRwVRuxwnf_BLJi+cL-PoZ_ha_3EfEW1X_A@mail.gmail.com>
References: <20220426225748.324759-1-swboyd@chromium.org> <CAD=FV=WMf0Jc9oD7CGoLthguzt2aV31sZmFoenbjn72MfwFYEA@mail.gmail.com>
 <CAD=FV=Wey2P_=3Lp6M8GEaoyCn1XcYFhfJwfx43a5f_8H0obwg@mail.gmail.com> <CAE-0n53sfUMiCzEgRwVRuxwnf_BLJi+cL-PoZ_ha_3EfEW1X_A@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 27 Apr 2022 13:31:30 -0700
Message-ID: <CAE-0n52vH91zgK0iHiyG5EZtS1KbddUjHgOj2Du43vvnWNJDzg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180-trogdor: Remove cros-ec keyboard
 from detachables
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Doug Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Stephen Boyd (2022-04-27 11:49:25)
>
> Yes, if the driver patch isn't applied then we'll skip registering
> switches when these properties are removed. I suppose a better way to
> gracefully migrate the logic here would be to add another compatible
> string. Then we could make the compatible be
>
>         compatible = "google,cros-ec-keyb-switches", "google,cros-ec-keyb";
>
> on detachables and the driver can skip registering the keyboard if the more
> specific "google,cros-ec-keyb-switches" compatible is present. The
> driver will continue to probe and we don't have to remove any
> properties.
>

I implemented this at
https://lore.kernel.org/r/20220427203026.828183-1-swboyd@chromium.org
