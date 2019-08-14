Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E4FEA8C5AD
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 03:51:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726936AbfHNBvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 21:51:46 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:33158 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726843AbfHNBvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 21:51:46 -0400
Received: by mail-ot1-f68.google.com with SMTP id q20so25860506otl.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 18:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bENj68yNPvoXsCnAgd0SA0efIreQ33qie/1p2j9abDg=;
        b=rTYPz9aiyiidUY/wAQbPCUip4SOPtdrK9Ku+oOnr9N9FsdTW6VdYimGXnVisYjzVer
         9cQiEiFf14ohMexdIV+HWyVrpp37h0lxU3Bttwng4fhiFLlUHYlAf0EWXgJdGzcOd+2t
         KB3FmbtCIOawjudrbos/m/GpBE87qI7cjyKhEIwbMjnQPhmj02Ga2WkXnbY0/6G5Hiab
         lg6yKfu7gFpaid7vb5rwXO2sC2VpyanqNlKNNYC8jpGiuHM8mS7uDH572n6RcL6fHY8L
         n1jl5rhgcXFhRoqpt+Twpxlsq0zHMJTMNEXZZB7e7m8w3noD5QXvWAdPgVrmgBnVhdpW
         KopQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bENj68yNPvoXsCnAgd0SA0efIreQ33qie/1p2j9abDg=;
        b=J1nkk3DWkvIYXYoFr2gZ/IXWVrVFzMT3igItR0tNXFmlSxrfnDISyYirQf/hw3HkW+
         sEF7JZNgpp/vMnmG9LZDZs5HnYyduZjw0Fg1mXv9PlkOjyepZ86AiisJVbylWTYC1zKF
         H5NfoiU34LHptOyxF8O/A3hatf/s/+vcvWwm4tHYHNiMi3ZYTNYvKC3sYUJ3GGUOMbmi
         hF0/AGjEHnvXCt/gZv2lCmdHEmpxWIKg20oULHJ9JZd9RqBgkSz7rEg4Ub0qUopSrfuU
         5/qw29h0pLC8Bl9NuJHTi9Fjh2erD/LzvS9FALZe6kh6ABvTC3JQK0bBuowachSF9Fp3
         yiAw==
X-Gm-Message-State: APjAAAUfwj8hZTvykKwei001Xg2jq0B7/dHv4ezeEaGnVfYjvbrjoDJM
        SaR3GDvrLJDncGdvd/w5VHapa+UdOefTMjOagvPz8A==
X-Google-Smtp-Source: APXvYqxj2Kf4NQn6zAI/marGBfVf9i5t6w0XkS2JIvLPnexUrTI65+lv4tFTmxp1aSV9RDZdYqcvjbFNki+hbtOW3X4=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr24720737otk.145.1565747505094;
 Tue, 13 Aug 2019 18:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <f9d2c7cb01cbf31bf75c4160611fa1d37d99f355.1565703607.git.baolin.wang@linaro.org>
 <20190813141256.jnbrfld42rtigek3@pengutronix.de>
In-Reply-To: <20190813141256.jnbrfld42rtigek3@pengutronix.de>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Wed, 14 Aug 2019 09:51:34 +0800
Message-ID: <CAMz4kuJA+a=nzFRja4wRkfJu3Gzb0wnvaM8H4Ek9X5u8CNegPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pwm: sprd: Add Spreadtrum PWM documentation
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-pwm@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

On Tue, 13 Aug 2019 at 22:13, Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> On Tue, Aug 13, 2019 at 09:46:40PM +0800, Baolin Wang wrote:
> > Add Spreadtrum PWM controller documentation.
> >
> > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> > ---
> > Changes from v1:
> >  - Use assigned-clock-parents and assigned-clocks to set PWM clock pare=
nt.
> > ---
> >  Documentation/devicetree/bindings/pwm/pwm-sprd.txt |   38 ++++++++++++=
++++++++
> >  1 file changed, 38 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sprd.txt
> >
> > diff --git a/Documentation/devicetree/bindings/pwm/pwm-sprd.txt b/Docum=
entation/devicetree/bindings/pwm/pwm-sprd.txt
> > new file mode 100644
> > index 0000000..e6cf312
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pwm/pwm-sprd.txt
> > @@ -0,0 +1,38 @@
> > +Spreadtrum PWM controller
> > +
> > +Spreadtrum SoCs PWM controller provides 4 PWM channels.
> > +
> > +Required porperties:
>
> s/porperties/properties/

Sorry for typos, will fix in next version.

>
> > +- compatible : Should be "sprd,ums512-pwm".
> > +- reg: Physical base address and length of the controller's registers.
> > +- clocks: The phandle and specifier referencing the controller's clock=
s.
> > +- clock-names: Should contain following entries:
> > +  "pwmn": used to derive the functional clock for PWM channel n (n ran=
ge: 0 ~ 3).
> > +  "enablen": for PWM channel n enable clock (n range: 0 ~ 3).
> > +- assigned-clocks: Reference to the PWM clock entroes.
>
> s/entroes/entries/

Sure.

>
> > +- assigned-clock-parents: The phandle of the parent clock of PWM clock=
.
>
> I'm not sure you need to point out assigned-clocks and
> assigned-clock-parents as this is general clk stuff. Also I wonder if
> these should be "required properties".

I think I should describe any properties used by PWM node, like
'clocks' and 'clock-names' properties, though they are common clock
properties.
Yes, they are required. Thanks for your comments.

--=20
Baolin Wang
Best Regards
