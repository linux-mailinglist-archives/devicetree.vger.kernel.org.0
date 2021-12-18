Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D936B479E23
	for <lists+devicetree@lfdr.de>; Sun, 19 Dec 2021 00:26:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232078AbhLRX0o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 18:26:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbhLRX0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 18:26:43 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FD38C061574
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 15:26:43 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id e3so22614186edu.4
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 15:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x21UNDZd13ubIHnGvzaADQ8CdE/91fQQxSjgewaikKg=;
        b=CyksZ+huq/x1AGVDBTspFPk/8e1QMHoC37zUtOgPqZO1Z1gmErMED7C9/sbD4ePtyL
         uydCNSR+71xn4sX6osXg5X1r6fTZALT2+ouIyeloYJr47K6WA8tmmMQOYpJk+ayqw0ep
         fLMHcZxrmtKSqCOh0FVkFEomQcVdfA57LIJofyEzyuyb8pFSXGy8KkHHME9DlwTaSsqK
         5oEmcZIC3KQHlm39P3bbYN6TIAvS+tETecmwnQ2lm86kBpmOeiO33gyMcYT8WNxds/es
         AxrpanQoiuQ4/LZzcNWSFRuKSAzFPjgqF156C/2UBePfWOOpPwJHjl7wvX7CHI2M2p5H
         BjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x21UNDZd13ubIHnGvzaADQ8CdE/91fQQxSjgewaikKg=;
        b=G8Ls7nQaXtovemmxUUhCzBMY8KXPtKz+xU/j7hGRq4DNehPkYKIMTFRnss+zP3bf8e
         PqhMZTrV5t1ehXYR2XtMeo9WUF18ZpXZyfKswrfMjuG3RCzCNmC70plN26/bY15byClU
         8eQp+Es7YLUR5+e/HUkRanprWjNsQN+NDUkDKja0HW50pVi1WkhPlsUKgwTtv3NyRuUc
         tAj8KLlbo6nHNQudulfwXfvnM8eN2dBXaoD/NNGyUDsiNuOZoZwj9CKLiTqGseRvKHT5
         sgOU7uwN/ZV2KvVvYOzQojo6jmJOIUswmRyDXZ79aImEtmu2h0dIG0Ag64gdqESOySS1
         4ZIw==
X-Gm-Message-State: AOAM533yx5Cm0G2v537oV1DzNEENvj3F6sBKwiqBpDZQZqWP2DusnVNV
        hX6mg7+7Z5dvQeYksOTz5SSZTtzHAy6vAI1NHwg=
X-Google-Smtp-Source: ABdhPJxnnnGjFSBa456ilynkhm/1hJQqNwj67CEL1ADEIbXVn4hqx7bRKe+kesvXMde+7uM1sP1fzaWNkeGZdUriPO4=
X-Received: by 2002:a17:906:388c:: with SMTP id q12mr7742344ejd.281.1639870001823;
 Sat, 18 Dec 2021 15:26:41 -0800 (PST)
MIME-Version: 1.0
References: <20211218143641.19372-1-alexander.stein@mailbox.org>
In-Reply-To: <20211218143641.19372-1-alexander.stein@mailbox.org>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sun, 19 Dec 2021 00:26:31 +0100
Message-ID: <CAFBinCBJrTm886aa+2XTGikcQuzwD0V_EHuL6+Y1BdsrXEE14A@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: display: meson-vpu: Add missing
 amlogic,canvas property
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

first of all: thank you for working on this!

On Sat, Dec 18, 2021 at 3:37 PM Alexander Stein
<alexander.stein@mailbox.org> wrote:
>
> This property was already mentioned in the old textual bindings
> amlogic,meson-vpu.txt, but got dropped during conversion.
> Adding it back similar to amlogic,gx-vdec.yaml.
>
> Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to
>  yaml")
Most patches which I have seen don't use a line-break in the "Fixes:" line.
Not sure if this is a rule though, so this is just FYI

[...]
> +  amlogic,canvas:
> +    description: should point to a canvas provider node
> +    $ref: /schemas/types.yaml#/definitions/phandle
This was also marked as a mandatory property in the textual binding.
Can you please update the "required" section below and add the
property to the example (that last part has been missing in the
textual binding)?


Thank you and best regards,
Martin
