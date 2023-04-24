Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72A526D94F9
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 13:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236830AbjDFLVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 07:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236593AbjDFLVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 07:21:07 -0400
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 913629014
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 04:20:45 -0700 (PDT)
Received: by mail-vs1-xe2d.google.com with SMTP id d18so34106137vsv.11
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 04:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680780044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Ne77xaqbtLGoxF/3ZhDrpD5vvfWoYyoJmdpcIYFNEQ=;
        b=k6I0+4BXskzhRAwmd43QNMVzFMrPVNOkbwwXevTPqhk0D8YtPACw3R0r5oUZIcMPVv
         Y5BUW4ArX1KppvMqptjnxTQn8Eg44+0ZQbizMDjOHAqI9XfPy9ky1Y5/sUTSgx9/3FRG
         GR5QFc6MPGSsDoUOxRB5gBdVgCLmVxbo9cbOTuympKKj/3m64qK3GAZCfrJM9pQXJcku
         pvfwlQ1j6C33FTc8uKtsSlENf9ePLJrXjcA1JInY3DAKtB/WJMRZSF/W23COOL1TWHxe
         TSC2bb+7xWVyX3JOmd+CRHjYYjZg/2CHUVzK5aidd/2lKi4HS6aRnEedqroKaBR6YcFQ
         KZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680780044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Ne77xaqbtLGoxF/3ZhDrpD5vvfWoYyoJmdpcIYFNEQ=;
        b=aDwbxJdPE2NVKXvbFuMvHVC5PhMGHtFMy687Mim2s5DVrbsMcfs/b1yYd/OoV+REGR
         d42WYXoK4B9Jf7nhcz+VeztcO+b2Z7W0EzdkV23UdZkeaZ+03MnugKSmKwSz6ajgDhwe
         4KxBR9Q4AuomnHAGVOE9ou8C2V1/zB05FOMSksaqsUpqTXJl8vLBcQK0qjAVnjz8bbQw
         GyD/JDwXhzk65qUVwPTsoPtR7A5Oha2bNOPxgFr+QD/+933fkXvtPA5GUpG+f8P0aSDt
         eSOEkPQhAaYj9t2JOjxqAhPjBOLRBEKBjK3muNY2GgKYnbH3sOwK9VW/rKhHYkChsxTW
         omSQ==
X-Gm-Message-State: AAQBX9cbd0OLTznjlsBCrMLm951xIogNWKlecglHDJQn+nu0yMCre/2Z
        WPRthRe8HZEicE6+wJOv3WANFN0T6FPi3/uDaoeH6w==
X-Google-Smtp-Source: AKy350bXUnbyNurB9zPd2ZQDGbD2zJLY7NQCuR5Vz4KL/7JSPzMrGSkVI2JVi1D35K2mHZB5WX3gQMWRx9D513knC9w=
X-Received: by 2002:a67:c19a:0:b0:426:b051:1c4 with SMTP id
 h26-20020a67c19a000000b00426b05101c4mr7770691vsj.0.1680780044683; Thu, 06 Apr
 2023 04:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230328193632.226095-1-brgl@bgdev.pl> <20230328193632.226095-3-brgl@bgdev.pl>
 <72286603300630b890705c99b42f05a4.sboyd@kernel.org>
In-Reply-To: <72286603300630b890705c99b42f05a4.sboyd@kernel.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 6 Apr 2023 13:20:33 +0200
Message-ID: <CAMRc=McM1DfCoMmuUYcChFFBG=H1PgZFAWcuxnQsdhRdYrT+yA@mail.gmail.com>
Subject: Re: [PATCH 2/7] clk: qcom: add the GPUCC driver for sa8775p
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 29, 2023 at 4:15=E2=80=AFAM Stephen Boyd <sboyd@kernel.org> wro=
te:
>
> Quoting Bartosz Golaszewski (2023-03-28 12:36:27)
> > diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> > index 449bc8314d21..5e1919738aeb 100644
> > --- a/drivers/clk/qcom/Kconfig
> > +++ b/drivers/clk/qcom/Kconfig
> > @@ -437,6 +437,14 @@ config SA_GCC_8775P
> >           Say Y if you want to use peripheral devices such as UART, SPI=
,
> >           I2C, USB, UFS, SDCC, etc.
> >
> > +config SA_GPUCC_8775P
> > +       tristate "SA8775P Graphics clock controller"
> > +       select SA_GCC_8775P
>
> Should select QCOM_GDSC as well.
>

Why if it's already selected indirectly by SA_GCC_8775P? Other GPUCCs
in here don't select it either.

Bart

> > +       help
> > +         Support for the graphics clock controller on SA8775P devices.
> > +         Say Y if you want to support graphics controller devices and
> > +         functionality such as 3D graphics.
> > +
> >  config SC_GCC_7180
> >         tristate "SC7180 Global Clock Controller"
> >         select QCOM_GDSC
> > diff --git a/drivers/clk/qcom/gpucc-sa8775p.c b/drivers/clk/qcom/gpucc-=
sa8775p.c
> > new file mode 100644
> > index 000000000000..46d73bd0199b
> > --- /dev/null
> > +++ b/drivers/clk/qcom/gpucc-sa8775p.c
> > @@ -0,0 +1,633 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) 2021-2022, Qualcomm Innovation Center, Inc. All right=
s reserved.
> > + * Copyright (c) 2023, Linaro Limited
> > + */
> > +
> > +#include <linux/clk.h>
>
> Is this include used? If not, remove it as this is a clk provider and
> not a clk consumer.
