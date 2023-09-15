Return-Path: <devicetree+bounces-612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5878C7A2233
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66B2C1C20AFC
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 219EE111B2;
	Fri, 15 Sep 2023 15:21:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1925111B0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 423DDC433D9;
	Fri, 15 Sep 2023 15:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694791268;
	bh=pTEjJA0kj/6QF5GhK14Gwc+awU8UExZq78QnqnmOkVU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FCZ6oVTEw4S8qoIydJ4ipzkUtXPDnJdYxdFMMCakRjp7uHM9QkVVx5kwAW1bHXivd
	 yKIR3/FU4+eGi5OOVluLMcNYEdHv/+p/5fYJIZziFmTN/iTO+8QnHQJFYuchNOifbu
	 qpFTzAemtZWgxCSvIKA8XrI2AFabOUUHa58749Eh6qsV5mIoD9V5ebUnzK9xEi1xz+
	 y4pJeyRcC/C5up22mBoeCTPIAxlyNPlHWil8uEZQOmac57mQOqGBupg8TeU75nWC5J
	 lLBYfOoA7/p/g5Vm+rEwBtW4pVB4PsS/qPkzeBVnR5z+eAp/5TbaK4ASFut8UdoMDP
	 Rok6WwEwwub3Q==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-501bef6e0d3so3634269e87.1;
        Fri, 15 Sep 2023 08:21:08 -0700 (PDT)
X-Gm-Message-State: AOJu0YzA5tBzKp4V5FDcAi7P08S/xGClIKkAC0yj0vJG5nhgpLoVEI/G
	abnouMBNDiKDpf7huUaD+iwQ0Ev9+VQfwhu7yQ==
X-Google-Smtp-Source: AGHT+IEeJqz589eXXSVJJbVSNQcKtyQwgFEuTFm32yaXsEAg/IIyFz8jivQT7gxFQK9DRVTikI5YfYsMBITqOxTHKNc=
X-Received: by 2002:a05:6512:5c6:b0:502:c950:592e with SMTP id
 o6-20020a05651205c600b00502c950592emr1666805lfo.25.1694791266478; Fri, 15 Sep
 2023 08:21:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230915062926.2460502-1-Delphine_CC_Chiu@wiwynn.com>
 <20230915062926.2460502-3-Delphine_CC_Chiu@wiwynn.com> <20230915-quench-left-8fbc1ca3b1da@spud>
In-Reply-To: <20230915-quench-left-8fbc1ca3b1da@spud>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 15 Sep 2023 10:20:54 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKWRfT71k56uMUJtU_abzFuicW01OBo-iScYash4Jrd2w@mail.gmail.com>
Message-ID: <CAL_JsqKWRfT71k56uMUJtU_abzFuicW01OBo-iScYash4Jrd2w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: hwmon: add MAX31790
To: Conor Dooley <conor@kernel.org>
Cc: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz, 
	Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 9:50=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> Yo,
>
> On Fri, Sep 15, 2023 at 02:29:24PM +0800, Delphine CC Chiu wrote:
> > Add dt-bindings for the MAXIM MAX31790.
> >
> > Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> > ---
> > Changelog:
> > v2 - Add dt-bindings for the MAXIM MAX31790.
> > ---
> >  .../bindings/hwmon/maxim,max31790.yaml        | 59 +++++++++++++++++++
> >  MAINTAINERS                                   |  6 ++
> >  2 files changed, 65 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max31=
790.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yam=
l b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> > new file mode 100644
> > index 000000000000..2bd455b36b3f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> > @@ -0,0 +1,59 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +
> > +$id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Maxim max31790
> > +
> > +maintainers:
> > +  - Delphine CC Chiu  <Delphine_CC_Chiu@wiwynn.com>
> > +
> > +description: |
> > +  The MAX31790 controls the speeds of up to six fans using
> > +  six independent PWM outputs. The desired fan speeds (or PWM duty cyc=
les)
> > +  are written through the I2C        interface.
> > +  The outputs drive =E2=80=9C4-wire=E2=80=9D fans directly, or can be =
used to modulate
> > +  the fan=E2=80=99s power terminals using an external pass transistor.
> > +
> > +  Datasheets:
> > +    https://datasheets.maximintegrated.com/en/ds/MAX31790.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - maxim,max31790
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  pwm-as-tach:
>
> I don't see any other users of this in-tree, so you'd need a vendor
> prefix. That said, I'm once bitten, twice shy about fan related
> properties in hwmon, so I would definitely like Rob to comment on this
> whole binding.

Please see this[1] and comment on it to ensure it meets your needs.
Otherwise, omit any fan related properties for now.

Rob

[1] https://lore.kernel.org/all/20230830123202.3408318-2-billy_tsai@aspeedt=
ech.com/

