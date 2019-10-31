Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F2F98EA927
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2019 03:14:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726353AbfJaCOI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 22:14:08 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:42670 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726336AbfJaCOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 22:14:08 -0400
Received: by mail-lf1-f65.google.com with SMTP id z12so3232132lfj.9
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 19:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0Q35Qrmg9wkHjqF+0NfAUFB1yR1/10F2WnVxGw+K294=;
        b=N8tiDiHdtPsksEd3ROvQIlUsCu82XyKi8Txes5hv3NlYMQZbCqlL/T3M4JbOxPTB6p
         Oq/yIeAjAo9+HB+fMGZ6zuqkmSpCcV4SxxtB8D2Y3oRX5PP/DLtTo7oA6KRWgh7d7tGg
         uoZfrZvshqP8jjpzk5bcYJy8IthFfjxU/1WOK0wjpq41r5hr6VAtOd+SsBxLR8h3JSqf
         vrQbaNrCk1CaKOl+KtMakLELlr3Zs83OW+3ybUkkLdS7/HeN1EsmfBWp0esMiyPD0KXv
         RSAKHz+ftDKOoHI3JrnHrJ51GL2khuEKu/X7vXg6lkd8ZM4wECJzM96VL9A5BAzeYJJG
         7joQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0Q35Qrmg9wkHjqF+0NfAUFB1yR1/10F2WnVxGw+K294=;
        b=e6TbCbKlIFBldy54ugIMJhBrVeTE3bU8Zv161aVk72X0vQC98irJD8IilIJGUOt7lQ
         7/7+/2DKom3tPeGGRqMLl9VeShKNczXkmhLhc7K/Ar3yudav6xbvE5V6DjmzofyY/zYp
         MYkGul1rD1aaiu2M52gxB+9NfOlaBq9GPeWJs/cNtRJENCnQZ//u59iFG0jW52+irdZ0
         xU7R9cWrP9ibx+AWZRZ1+LEKfVLyGpQKrXJYMApKRs8YuGtn543JAq17jELUV/2rinRy
         KnCMnS9qTB6YY30uHnkl8FPQGC8CLvbW07Ox4xL3xLeHOzxxGX980rgBK49jjF4Pgb6c
         1urA==
X-Gm-Message-State: APjAAAVkgmhQA4OlVs+pZ1ayPV605QgcNbHdWnJU+J2YQ1dGsw82leI5
        1ZbM6A2NzFEkzK9Q9nmCZjG9xFzcFCtbwX4nJQK2Dw==
X-Google-Smtp-Source: APXvYqzt5GwVr8iqs7GK09m3Y5rMVOPcTeuhfSQpo73+hoiTYTRcTwHFX7BcTFNYVFr1DATKDchziDslGCBtc8/XWKc=
X-Received: by 2002:a19:911c:: with SMTP id t28mr1004590lfd.84.1572488046183;
 Wed, 30 Oct 2019 19:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1572245011.git.baolin.wang@linaro.org> <44f0c19510c7317cb4ee6cac54b3adfa81c2d6d0.1572245011.git.baolin.wang@linaro.org>
 <20191030143814.GA14919@bogus>
In-Reply-To: <20191030143814.GA14919@bogus>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Thu, 31 Oct 2019 10:13:54 +0800
Message-ID: <CAMz4kuKYTHWaRnYhFn2kNzv04g_pWTVqPXvRqwO78htJ9jAnFg@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: power: Introduce one property to
 describe the battery resistance with temperature changes
To:     Rob Herring <robh@kernel.org>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, yuanjiang.yu@unisoc.com,
        baolin.wang7@gmail.com, Chunyan Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, 30 Oct 2019 at 22:38, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Oct 28, 2019 at 03:18:57PM +0800, Baolin Wang wrote:
> > Since the battery internal resistance can be changed as the temperature
> > changes, thus add one table to describe the battery resistance percent
> > in different temperature to get a accurate battery internal resistance.
> >
> > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> > ---
> >  .../devicetree/bindings/power/supply/battery.txt   |    5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/power/supply/battery.txt b/Documentation/devicetree/bindings/power/supply/battery.txt
> > index 5c913d4c..1a6f951 100644
> > --- a/Documentation/devicetree/bindings/power/supply/battery.txt
> > +++ b/Documentation/devicetree/bindings/power/supply/battery.txt
> > @@ -35,6 +35,10 @@ Optional Properties:
> >     for each of the battery capacity lookup table. The first temperature value
> >     specifies the OCV table 0, and the second temperature value specifies the
> >     OCV table 1, and so on.
> > + - resistance-temp-table: An array providing the resistance percent and
> > +   corresponding temperature in degree Celsius, which is used to look up the
> > +   resistance percent according to current temperature to get a accurate
> > +   batterty internal resistance.
>
> What's the order of values? The description and example don't seem to
> agree unless negative percent is a thing.

Ah, right. I will fix the example according to the description's order
in next version. Thanks.

> >
> >  Battery properties are named, where possible, for the corresponding
> >  elements in enum power_supply_property, defined in
> > @@ -61,6 +65,7 @@ Example:
> >               ocv-capacity-table-0 = <4185000 100>, <4113000 95>, <4066000 90>, ...;
> >               ocv-capacity-table-1 = <4200000 100>, <4185000 95>, <4113000 90>, ...;
> >               ocv-capacity-table-2 = <4250000 100>, <4200000 95>, <4185000 90>, ...;
> > +             resistance-temp-table = <20 100>, <10 90>, <0 80>, <(-10) 60>;
> >       };
> >
> >       charger: charger@11 {
> > --
> > 1.7.9.5
> >



-- 
Baolin Wang
Best Regards
