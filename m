Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C9114DE2CE
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 21:49:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238418AbiCRUul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 16:50:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236793AbiCRUul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 16:50:41 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEFBBF8EF2
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 13:49:21 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id j15so5144933eje.9
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 13:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+MSb82c7wemn5s39BmM23Oln72hevPicxsN1r5ivL6U=;
        b=CA1hCCYL0BQ05YK0J1CPDJmoLh2ESsCRnFcUnRyOfupdkOao9Ca/nbVo4HSzLXwCSI
         Vrqmw5nsHFAhl5WYnCZuOBc2nEZJef8k8cWy8urUgt3WrrA3POPVaETGqdFAxiq2WVwy
         Z6F8q64+iOK3GE3gc0n++Gw5aW3gmufktvl6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+MSb82c7wemn5s39BmM23Oln72hevPicxsN1r5ivL6U=;
        b=UbaJId5vGhY8ozvWMw+eyqKn9qlK9BCQBevO4T05pGnO43C6ASWNFXzoPxbx+r6hMO
         Uehx/jT2Ejzde64yCOEhyvp2an5LRhxttaug2YEtC5+uUB9TAHtTh9ozNP+moJOdE2rN
         8NP6gX9LNYSj/AXmMRz1rbgz5AFQYkABx2/pQB06Xdyk+ZKhLposc5g6Xg6wlZR1DG6t
         vXKtAeSWK1XHvSEzVSuJNpwml2h71VacAuaMHkQZKC148AB5SdCBarQfOliJM0I1zrNC
         uwKolBQ9EPhfJLilGWek1G65LIsoLKo42XRs95Eb/4P3LBqw2ngnXx8fvV40XrDS5QS1
         7HDA==
X-Gm-Message-State: AOAM531QLVOeYaJd+zvyUjWkc7oLK/VnkA1WfVnfBaisoa8fk0zVWwW1
        YUgtIdW2bjnwfiFqmgoHmNPI5OXZdqw9Ru93SA8=
X-Google-Smtp-Source: ABdhPJweWyEyOQL72wt5t9wNyA/UFczTsoXhktUYJ5C5mcajlzX4bTHN5HsXVVd9RtOw4JS3lGJFlA==
X-Received: by 2002:a17:907:980c:b0:6db:d9d3:f99a with SMTP id ji12-20020a170907980c00b006dbd9d3f99amr10756300ejc.156.1647636559928;
        Fri, 18 Mar 2022 13:49:19 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id bw26-20020a170906c1da00b006c8aeca8febsm4051151ejb.47.2022.03.18.13.49.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Mar 2022 13:49:19 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id 7-20020a05600c228700b00385fd860f49so5399925wmf.0
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 13:49:19 -0700 (PDT)
X-Received: by 2002:a05:600c:19d1:b0:389:7772:b21b with SMTP id
 u17-20020a05600c19d100b003897772b21bmr17513788wmq.118.1647636558601; Fri, 18
 Mar 2022 13:49:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220318015451.2869388-1-swboyd@chromium.org> <20220318015451.2869388-2-swboyd@chromium.org>
In-Reply-To: <20220318015451.2869388-2-swboyd@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 18 Mar 2022 13:49:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WV+rssDpUdq0fVuVKf4b7DwTsFgodAX8wi-eLEoxTa3g@mail.gmail.com>
Message-ID: <CAD=FV=WV+rssDpUdq0fVuVKf4b7DwTsFgodAX8wi-eLEoxTa3g@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: chrome: Add ChromeOS fingerprint binding
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Benson Leung <bleung@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        chrome-platform@lists.linux.dev, Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Guenter Roeck <groeck@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Mar 17, 2022 at 6:54 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Add a binding to describe the fingerprint processor found on Chromebooks
> with a fingerprint sensor.

It might be worth mentioning that previously these fingerprint devices
were described using "google,cros-ec-spi" just to provide context?


> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Craig Hesling <hesling@chromium.org>
> Cc: Tom Hughes <tomhughes@chromium.org>
> Cc: Alexandru M Stan <amstan@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/chrome/google,cros-ec-fp.yaml    | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/

Reviewed-by: Douglas Anderson <dianders@chromium.org>
