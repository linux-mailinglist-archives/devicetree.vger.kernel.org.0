Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E768289A74
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 11:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727564AbfHLJu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 05:50:58 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:37321 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727471AbfHLJu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 05:50:58 -0400
Received: by mail-ot1-f66.google.com with SMTP id f17so21182191otq.4
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 02:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Kb6hKbAOMVuL+Z26AT+EFtx5MG6TEv4wDdw/myrwQ+U=;
        b=J/FQAQab+aixe22PRiNBu7L0NDde/C2hXCpVftTRoFGOw8pRPugy3jP0wAggy8vjCm
         t6iYDnybfvsXId9UDaJ6ra2ggQZjX/pPV7V0RaQQo5sWAlef03HV1CBPikWbu35fGUaP
         +2CY8yvvMO5AVEWYwePAUANCHClK5pvFLXHuGXJ8zJYXkHxttupBdaMQ+vMsDf0Ek7Io
         GSxTlREe+2RKcuaQIPUqEbKOEoGsUH1zL6busYQSHgBYFmjYzScZKtab9ogTkKx4BaGZ
         omp227gqxhuEVfzZTRokfaSkUgdbU3MKAkbZqDJEn7Qcy4Dqnx1ITa/GaH5H0y4pYKxQ
         MGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Kb6hKbAOMVuL+Z26AT+EFtx5MG6TEv4wDdw/myrwQ+U=;
        b=AtzMDXFYXhCJfBrBDZHLAktHlfiv5xi4uMJiK+4bdFY9CGOhwD8jD3nvRKnylAPPAt
         ziSQh6YM1/s9bA7HdEF8+71Mjb+A4J5GCocMPCrcPQrQ8d5K17NV4S72C/Lw4vSEcHHh
         V8LY1ditsU4uXChFdH9IZVdoZkZGwH0/1dkhICVV4pVFlcRgK6dL196lhr/DlisHuxuE
         xxpmLCWnNqdEhljIiTGfvyACAPpUo/16fGWv09FH7sM11gBZtXYZHlg1dVsX0XTYlbvF
         QzRg5PDsgoFknqygiZqwsmMECjwlZzsLyTjfCrKBlmp9JwHdBjNYliyXGQLUPgE7IPnx
         5kuw==
X-Gm-Message-State: APjAAAXHj+nk9wln92hLJ96fDKnVQj+uHZ0nXxazeMfqMYmClozuwAtW
        yAHHXtNZVxdnCGb9e1z0b2dBXmzc8Mmz6sX96c+lxg==
X-Google-Smtp-Source: APXvYqz4lQF7XDSq19OS08secxgAHIh9LEA1ri4DLDT1TwYKNppMdi6ToK3pQQF+F0v8y5u7kQqQDs82eRZLhuJM5A8=
X-Received: by 2002:aca:6056:: with SMTP id u83mr14334202oib.27.1565603457156;
 Mon, 12 Aug 2019 02:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <6a38a3655bc8100764d85cb04dea5c2546a311e1.1565168564.git.baolin.wang@linaro.org>
 <40127356a1acd1f2ff1be1d8a120b305a4e17af4.1565168564.git.baolin.wang@linaro.org>
 <20190809091013.vguj4wty7qiab64t@pengutronix.de> <CAMz4kuLQsrBWjta1s=ZRPgxUd0_+_f-GbJV138tccuMLg2XCLA@mail.gmail.com>
 <20190809144124.3as3rtctlywxkudr@pengutronix.de> <CAMz4ku+o6dCyxhR3-5yM+zr2nBpTQG5A8Pbnxpo7yRciwPbv3Q@mail.gmail.com>
 <20190812083556.dvprpwv6mjy3cjae@pengutronix.de> <CAMz4kuJA81ZP6Kc63dPV1jEn1ah=jow6tQBfO=UDCcTzSf3y-A@mail.gmail.com>
 <20190812094607.yg7efmvefewxicke@pengutronix.de>
In-Reply-To: <20190812094607.yg7efmvefewxicke@pengutronix.de>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Mon, 12 Aug 2019 17:50:45 +0800
Message-ID: <CAMz4kuKDcFxbNPqS-MToiCGQCXKDSvFX75ML+iVJGZx6kL0gzA@mail.gmail.com>
Subject: Re: [PATCH 2/2] pwm: sprd: Add Spreadtrum PWM support
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-pwm@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, kernel@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Aug 2019 at 17:46, Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> Hello Baolin,
>
> On Mon, Aug 12, 2019 at 05:11:56PM +0800, Baolin Wang wrote:
> > On Mon, 12 Aug 2019 at 16:36, Uwe Kleine-K=C3=B6nig
> > <u.kleine-koenig@pengutronix.de> wrote:
> > > On Mon, Aug 12, 2019 at 03:29:07PM +0800, Baolin Wang wrote:
> > > > The clock framework supplies 'assigned-clocks' and
> > > > 'assigned-clock-parents' properties to set parent, but for our case=
 we
> > > > still want to set a default clock rate if failed to set parent when
> > > > met some abnormal things.
> > >
> > > Without understanding the complete problem I'd say this is out of the
> > > area the driver should care about.
> >
> > Fair enough, I will try to use 'assigned-clocks' and
> > 'assigned-clock-parents' to simplify the code.
>
> There is also assigned-clock-rates if you need that.

Thanks for reminding, but we have no use case to set clock rate in PWM driv=
er.

--=20
Baolin Wang
Best Regards
