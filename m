Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 034AE283DAC
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 19:44:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728362AbgJERoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 13:44:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728181AbgJERoN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 13:44:13 -0400
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com [IPv6:2607:f8b0:4864:20::a43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68844C0613A8
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 10:44:13 -0700 (PDT)
Received: by mail-vk1-xa43.google.com with SMTP id e5so1951079vkm.2
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 10:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T0SUN6EKstVpoqlENVYkDpfxgRN2mhcM+hd8aVgx82Y=;
        b=Bjhy7mLEf3dMbcB301h2+hrEGKwW0Lztpw8VQTUMYjrf5E1N0OvXzBbiN7Nm22aCGw
         9lKqHBSMuJczFFO2SHFwXrme+RSj2XbTPmbMh7WBl7D7F4LgcymOwFioF5/PDyoF94sI
         03dR3zYUPifD8/ZTSvWCz2HfMihd2oVmvihvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T0SUN6EKstVpoqlENVYkDpfxgRN2mhcM+hd8aVgx82Y=;
        b=fOfu5to9j8eMOLe5G+aaMvdTq5zcsSmyy9ky7R5qT+swrKqFA/2mrsEPjiO7AdGP7f
         NlNSDlmL8vReQIa6s3PaGzuMAofNeqwqB1tijmthvLNUz7KABzGHj+qAFpUWgw3iE2aK
         eSYAHew8TEpGxVPWUnRojK+xYSrhR4kDVISssNNhXVvAGhCqSmKVe6GPbreWAxknBlpr
         rZXopn+c70vDZFbTxwAeaE5vyQ5pageZgv9vVLlkiPppi3Zyg5yz1sU7stxVGmfbfZg3
         2LaCD76Tr//8/xg09IyJxP5kSIIgbeEPTNNmI+hTGjdOD1kianerZTp7AwLgbPqipfmx
         8FZA==
X-Gm-Message-State: AOAM530m02akLKtT3bXoOmbJjkzgAW3Oken7xYMo7cWhLcCxg73kxgNc
        yyPgocFsvfheLf4sA8gS4klXmH/i8MgZKQ==
X-Google-Smtp-Source: ABdhPJybJ9H5MpINFGJ8PtEcQAvaKAxwKS0HUjuP+r83iTmOukXZNU8FN3JoJ7Rdj3/0OvaSdNDnrQ==
X-Received: by 2002:a1f:9c12:: with SMTP id f18mr924649vke.14.1601919852478;
        Mon, 05 Oct 2020 10:44:12 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id j76sm124522vkc.50.2020.10.05.10.44.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:44:11 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id s15so2412154vsm.0
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 10:44:10 -0700 (PDT)
X-Received: by 2002:a67:f4c2:: with SMTP id s2mr992567vsn.4.1601919849846;
 Mon, 05 Oct 2020 10:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <20201005163016.13650-1-lukasz.luba@arm.com>
In-Reply-To: <20201005163016.13650-1-lukasz.luba@arm.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 5 Oct 2020 10:43:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W70OPB=ufEfqAJEeZBNwr5yPOCmkM7R2uLKnEj6tZ1qA@mail.gmail.com>
Message-ID: <CAD=FV=W70OPB=ufEfqAJEeZBNwr5yPOCmkM7R2uLKnEj6tZ1qA@mail.gmail.com>
Subject: Re: [RESEND][PATCH v2 3/3] dt-bindings: thermal: update
 sustainable-power with abstract scale
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>, linux-doc@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        amitk@kernel.org, Jonathan Corbet <corbet@lwn.net>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Dietmar.Eggemann@arm.com, Quentin Perret <qperret@google.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Oct 5, 2020 at 9:30 AM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
> Update the documentation for the binding 'sustainable-power' and allow
> to provide values in an abstract scale. It is required when the cooling
> devices use an abstract scale for their power values.
>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>
> Hi Rob,
>
> This is a fixed patch for DT binding, which now passes the
> make dt_binding_check (I have changed tabs into spaces).
> The former patch error that I have received is here [1].
>
> Regards,
> Lukasz
>
> [1] https://lore.kernel.org/linux-pm/20201002114426.31277-1-lukasz.luba@arm.com/T/#md4b02a3ada592df67446566180643ba56788c159

...and because I suspect you might not look at any patches that fail
your auto-checker, I'd appreciate it if you could comment on the
discussion on the previous version of the patch.  Thanks!  :-)

-Doug
