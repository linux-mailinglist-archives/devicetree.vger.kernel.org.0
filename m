Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDE184279E0
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 13:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244844AbhJIL7d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Oct 2021 07:59:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244838AbhJIL7d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Oct 2021 07:59:33 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E36FC061762
        for <devicetree@vger.kernel.org>; Sat,  9 Oct 2021 04:57:36 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id u18so50216957lfd.12
        for <devicetree@vger.kernel.org>; Sat, 09 Oct 2021 04:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ddKTI6gnxdVhQkUnuikMlEViQcCSWc9S4SrlE2LPasM=;
        b=Yg6rDn/QwCnZ4mhkc/514eVzXNnZnBJsuoxUVFlrhZpRt82oMGdPOHTiqm3+XtRIxZ
         RwhlX2vDonxSDsF54dlYxNdjdZ5st2xZg6UDF9Y6azZS2DzXd1a44z7AiXAoReSRQUKP
         Dc6WUjrIY96qhIbo47NxeAk/WuDTgKAGgJbEw5ERZ6y870+1KUF29r5ru+dxsOPZWayB
         +n1TZ9b6jw3syhLy3nDVDCyxYqVb0tSEXN+nzyxiq1fM4uJgTW+CvHYnDoHgrjN7Nfyi
         3fVroAlBduYh/hXHXEUQNR8qFidOFS8cpveEAjcS4aPeILNiZctB27eDCNOc6kxlATt3
         IIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ddKTI6gnxdVhQkUnuikMlEViQcCSWc9S4SrlE2LPasM=;
        b=TBFORIV0LyQQwe7S3HZNk2tKdaHZ7nvXeaAYn95Iv1KyQRmH+15ym0EEBwKoC9RtAl
         2EEiRXIYNIYKdl5Pw/EFE7NpoEXTjyvOhjaw1sSrhFOJU8pSVOAZk1vBHjtFNCgFNPSx
         6gq2h9HcQaXwAB3UTjsPFzqLFIsmvZ8tuYZ1Vug3YrcbRl3LMANyJuEl/cjkRm6dkTnj
         ncxgzr8ImHfhpqagApnQvceBqzO2a3PYTOLz5iDwMCanscXeXKetsSIZQCghJ89/Gu7r
         EMctg9EjfA070nOX95ORIWnGqEDfgo0meTtE9SecsyDje6Td7+amT4NJb+UvnKoFa2E3
         HI+Q==
X-Gm-Message-State: AOAM532ZcJvFGgFQ//1iWW7l4UINhtY8RL0OEIWz266123xsUkI2yxp9
        iDkUzrExTF+l4TO1+q8+f1F4dW5h9wzYN7RZ8zxejA==
X-Google-Smtp-Source: ABdhPJwi87OXKsFksT0f11sHBmIjP1L0dHkYUJoao8hhpCllD6s+7zVPFAfZxfwRJPU4ZrBJgZ13OyJvtYsEL3F0atY=
X-Received: by 2002:a05:651c:140d:: with SMTP id u13mr9541773lje.9.1633780654110;
 Sat, 09 Oct 2021 04:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20211009024430.3322230-1-osk@google.com> <089c590f-5b35-8a2a-6132-d8d3e2695c15@roeck-us.net>
In-Reply-To: <089c590f-5b35-8a2a-6132-d8d3e2695c15@roeck-us.net>
From:   Oskar Senft <osk@google.com>
Date:   Sat, 9 Oct 2021 07:57:17 -0400
Message-ID: <CABoTLcSMDPQvhgmUL5aE_df++pg4qN+cmf=31J9WPVnKnT6k7g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: Add nct7802 bindings
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
        linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi everyone

> > Document bindings for the Nuvoton NCT7802Y driver.
> >
> > Signed-off-by: Oskar Senft <osk@google.com>
>
> Please pdon't expect from reviewers to figure out what changed
> between versions and provide change logs.
Uh, I'm sorry, I'm new to the Linux upstreaming game. I'm used to
using code review tools like Gerrit, which help with that.

Changes from "PATCH v2 1/2" to "PATCH v4 1/2" (v3 was sent with a
typo, so please ignore v3):
- Removed extra layer "temperature-sensors" as discussed.
- Renamed "sensor" to "input" as discussed.
- Renamed "mode" to "sensor-type" to indicate temperature or voltage.
- Added "temperature-mode" to indicate "thermistor" or "thermal-diode".
- Removed description attributes from "sensor-type" and didn't add for
"temperature-mode", since they would have just repeated the names of
the properties.
- Numbered sensors 0 (LTD) and 1..3 (RTD1..3).

Some notes:
- While 1..3 are "natural numberings", there's no equivalent for "0"
in the datasheet - the name "0" is arbitrary. An alternative would be
to name this sensor "ltd" instead of "input", since it's not
configurable (beyond disabling it).
- I wasn't sure what the correct way is to enforce a match from
"input@X" to "reg = <X>", so I listed the inputs individually.
Technically RTD1 and RTD2 could be done as "patternProperties", if we
could enforce the match between @X and reg.

I hope I included all the various comments and discussion points both
from PATCH v2 and from the "tmp421" thread [1]. Please let me know if
I missed anything.

Does this proposal match the general thinking and goals for
dt-bindings for hwmon devices?

Thanks
Oskar.

[1] https://lore.kernel.org/linux-hwmon/20210924114636.GB2694238@roeck-us.net/
