Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1761C70602F
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 08:34:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232757AbjEQGeM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 02:34:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231715AbjEQGeK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 02:34:10 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CED144A2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 23:34:04 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f475366514so2380755e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 23:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684305243; x=1686897243;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OpTLZX9KtlAuj1Cffw1z+96W8NMTOQYC35BDi4+L6fc=;
        b=Gf/C3ZqVHbsEB6YKahXvqpjJgBu4gmKvRSW+lGXWxWqoaaDo3fOYjZBa+5vTl98D4o
         tBO0gLpf4GuNgdoTKqqyL6kggSTNSUdSsp4R+LD1JL+IMXiA3v7AGs+zpBZ1Gbm7AaVB
         lf3qvTlrEzDYI6SiyOTuqT4V8OTgjrDAZToEV4I+YM2icik9u3KuT9hb+MTbhJ0QDyrx
         EUP5s42uUBTGYNGkZXNZlWxO4w0SGr3HgTLWD+AQoatYY7HIbAy9xHwUq/XRxGq1raKb
         dp6+H+9fvNasxXLxaSYmrfGHR0ons0xeFsQOaI3g2v3fizk2PqL/3SyZHmz0aIKhGnXu
         DAjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684305243; x=1686897243;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OpTLZX9KtlAuj1Cffw1z+96W8NMTOQYC35BDi4+L6fc=;
        b=M30RLboKtdl/jLnsUIPMxDWKdaRPh3t6qCez08UcU6CuTJiErTE+oMhp1gjcqJIpso
         2ZvKP84ruFQn3xCvsHIM1017Pummaoij4ituRvmkvgaIRnhZcC7/RMain2DrYowHIUoh
         L6Emx76CTTI0VNVvup0ZA35lca5MhLysk2WTdmWOQGLQ5W1KLtazjh8NVr0yqYWWMfss
         lQByKwdtZSNhNP/g06VbVMTP9ZHwJfN+uH7DS8a82YhAkvqI4WOF5QX9zN+YA7uNwJSd
         0931lhjoBsM8NreWk/r50E6+033OfKSb3ANftipmd4EKuzMI7/Sei1n/PuSYXDum1Tt+
         nFWA==
X-Gm-Message-State: AC+VfDwcGmGIwyQOBHLDUeqW/DGKljXCon26jC3Qq4Km3cxH5USltfSW
        GCo/ClDZnkspfQ+FwAaJFZvm8SI3cORnZrXRZznFXyV+A1ompaCQST4=
X-Google-Smtp-Source: ACHHUZ71GE4h3Ar8VfQUiWo22IRSBv5ttVtQNSLUBPBoPH8eMTBu0NUl70AEvntkEM7vyQhaU/sudjfs814G2Jpsmkc=
X-Received: by 2002:a5d:4c82:0:b0:309:38af:91c6 with SMTP id
 z2-20020a5d4c82000000b0030938af91c6mr2390353wrs.68.1684305242680; Tue, 16 May
 2023 23:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230516213308.2432018-1-bhupesh.sharma@linaro.org>
 <20230516213308.2432018-4-bhupesh.sharma@linaro.org> <2023051723-decibel-skiing-56ed@gregkh>
In-Reply-To: <2023051723-decibel-skiing-56ed@gregkh>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 17 May 2023 12:03:51 +0530
Message-ID: <CAH=2Ntx9LcH9Bm_n6u6KgN7oQXw7XhoxUuRBKEzk79btRxtt6w@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] usb: misc: eud: Add driver support for SM6115 / SM4250
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Greg,

On Wed, 17 May 2023 at 10:21, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 17, 2023 at 03:03:06AM +0530, Bhupesh Sharma wrote:
> > Add SM6115 / SM4250 SoC EUD support in qcom_eud driver.
>
> Why is the subject line duplicated here?
>
> > On some SoCs (like the SM6115 / SM4250 SoC), the mode manager
> > needs to be accessed only via the secure world (through 'scm'
> > calls).
> >
> > Also, the enable bit inside 'tcsr_check_reg' needs to be set
> > first to set the eud in 'enable' mode on these SoCs.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  drivers/usb/misc/Kconfig    |  1 +
> >  drivers/usb/misc/qcom_eud.c | 69 +++++++++++++++++++++++++++++++++----
>
> Given that you didn't cc the usb maintainer, I'm guessing you don't want
> this patch applied?

Oops, I will do that in the next version.

> >  2 files changed, 63 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/usb/misc/Kconfig b/drivers/usb/misc/Kconfig
> > index 99b15b77dfd5..fe1b5fec1dfc 100644
> > --- a/drivers/usb/misc/Kconfig
> > +++ b/drivers/usb/misc/Kconfig
> > @@ -147,6 +147,7 @@ config USB_APPLEDISPLAY
> >  config USB_QCOM_EUD
> >       tristate "QCOM Embedded USB Debugger(EUD) Driver"
> >       depends on ARCH_QCOM || COMPILE_TEST
> > +     select QCOM_SCM
>
> How well is that going to work on building on non-QCOM systems?  Can
> QCOM_SCM build if COMPILE_TEST is enabled?  select is rough to get
> right, are you sure it's correct here?  If so, some documentation in the
> changelog would be appreciated.

Ok, I will double check.

> >       select USB_ROLE_SWITCH
> >       help
> >         This module enables support for Qualcomm Technologies, Inc.
> > diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
> > index b7f13df00764..10d194604d4c 100644
> > --- a/drivers/usb/misc/qcom_eud.c
> > +++ b/drivers/usb/misc/qcom_eud.c
> > @@ -5,12 +5,14 @@
> >
> >  #include <linux/bitops.h>
> >  #include <linux/err.h>
> > +#include <linux/firmware/qcom/qcom_scm.h>
>
> There's no rule to keep these sorted, but it's your choice...

Sure.

> >  #include <linux/interrupt.h>
> >  #include <linux/io.h>
> >  #include <linux/iopoll.h>
> >  #include <linux/kernel.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> > +#include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >  #include <linux/sysfs.h>
> > @@ -22,23 +24,33 @@
> >  #define EUD_REG_VBUS_INT_CLR 0x0080
> >  #define EUD_REG_CSR_EUD_EN   0x1014
> >  #define EUD_REG_SW_ATTACH_DET        0x1018
> > -#define EUD_REG_EUD_EN2        0x0000
> > +#define EUD_REG_EUD_EN2              0x0000
>
> Why the coding style cleanup in the same patch?  Remember, changes only
> do one thing, and you have already listed 2 things in your commit
> message :(

Sure, will spin a separate patch for cleanups.

> >  #define EUD_ENABLE           BIT(0)
> > -#define EUD_INT_PET_EUD      BIT(0)
> > +#define EUD_INT_PET_EUD              BIT(0)
>
> Again, why this change?

Ack.
Will send a v6 shortly.

Thanks,
Bhupesh
