Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 742CF39677C
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 19:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231826AbhEaR6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 13:58:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbhEaR6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 13:58:48 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC793C061574
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:57:06 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id b25so13033676oic.0
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=DSZZAxEHbdLZZFw3vP+gxBVlQqCyrawB+uRSZuIZgfE=;
        b=RP19OH9CpI0aNDLkOYv5uoSwZpnzBzCwG0E1jDZxgOQ9DkRGGQYX9AtUXLRsZUgVPo
         RhURb0Raz1N7KIW7dJk7am/V/UUhd1h7rhObulSEsAMaZIsfDG58KTC/2JJCrx0H5Blf
         diMBqTGi5N3gPAiSkrw7aGA6R5O3N10wvHQwj67IHblAzBpQlFMbYyWK6NKnx5HYhYpG
         7UpGewtypbHUCieQA7m+QYitIdJ5XPYD2btoDY5+khlbBWoe4QPpC965AwC3FlZk0SfY
         PLYAllF1azN0SygOufTNLacrELbXVw8k30ShmM228igEYhszT1xLdFQhVAXDFon1SyL9
         S/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DSZZAxEHbdLZZFw3vP+gxBVlQqCyrawB+uRSZuIZgfE=;
        b=ru+lS5+3bhLagLBARxnozqwElAFEnpfIKFttvEPHFuenBcH6Atk+jyDYnWLOQwPXGY
         4SBmBQa3vkeAEIYVOsca1Vyy9JcBMgdj/skpX08TKfu50iSm1xvsnpLXd0YMleMwIc7s
         0+vpu3ty5GUoR9C7fbTVjAyjrpEhKt06Nj+xbzzr/KIYH9EuFatmGodZEPWkXsyBlCJB
         7dKj//2T8YKmLRINCCThVnl9sjnPwPdjtt0dUxVWnmZ65I+L5TpX3CDfAByg7wMOoUJ7
         cH4B2w/hCbmN4S2EZ6MIDS6lRfAetAz1c/xTijSGjszDXJIzyVCZ6Am8BEhLx7BH75cI
         vHTg==
X-Gm-Message-State: AOAM5311PU8FXpSTWTUHwPPoHk9zltlR3vrLQaTvIO0B6oPB3x9PTjc/
        4z70ua4MYWzXUa1hbCkUsrLdwg==
X-Google-Smtp-Source: ABdhPJyMSM6FwtPAzJOnXLO+pv4nc6c2SOvHU9KLqi26VKWEHZ1Ea9pf222zATy1Qo3Pp5k6oOaR9w==
X-Received: by 2002:a54:4113:: with SMTP id l19mr203643oic.38.1622483826247;
        Mon, 31 May 2021 10:57:06 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 7sm3169597oti.30.2021.05.31.10.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 10:57:05 -0700 (PDT)
Date:   Mon, 31 May 2021 12:57:03 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Maulik Shah <mkshah@codeaurora.org>, evgreen@chromium.org,
        mka@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        dianders@chromium.org, linux@roeck-us.net, rnayak@codeaurora.org,
        lsrao@codeaurora.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v8 3/5] arm64: dts: qcom: sc7180: Enable SoC sleep stats
Message-ID: <YLUjbwFSJOSWS0IV@builder.lan>
References: <1621596371-26482-1-git-send-email-mkshah@codeaurora.org>
 <1621596371-26482-4-git-send-email-mkshah@codeaurora.org>
 <CAE-0n53ySKwDwzRYFYjnQnqVAujVrkik2U-PeCuS61xQU-hbWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE-0n53ySKwDwzRYFYjnQnqVAujVrkik2U-PeCuS61xQU-hbWA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 26 May 18:30 CDT 2021, Stephen Boyd wrote:

> Quoting Maulik Shah (2021-05-21 04:26:09)
> > Add device node for SoC sleep stats driver which provides various
> > low power mode stats.
> >
> > Also update the reg size of aoss_qmp device to 0x400.
> >
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> > Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 6228ba2..889d04d 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -3215,7 +3215,7 @@
> >
> >                 aoss_qmp: power-controller@c300000 {
> >                         compatible = "qcom,sc7180-aoss-qmp";
> > -                       reg = <0 0x0c300000 0 0x100000>;
> > +                       reg = <0 0x0c300000 0 0x400>;
> >                         interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
> >                         mboxes = <&apss_shared 0>;
> >
> > @@ -3223,6 +3223,11 @@
> >                         #power-domain-cells = <1>;
> >                 };
> >
> > +               rpmh-sleep-stats@c3f0000 {
> > +                       compatible = "qcom,rpmh-sleep-stats";
> > +                       reg = <0 0x0c3f0000 0 0x400>;
> > +               };
> > +
> 
> Does this need to be in DT? Can the sc7180-aoss-qmp driver use the
> aux-bus and stick the sleep stats device on there?
> 

The AOSS memory space has N chunks of "message ram", one is used for the
QMP protocol (presumably the APSS specific one), a different one is used
for the sleep stats.

I presume we could have come up with a binding for the entire AOSS/AOP
and then describe (either implicit or explicitly) the QMP and
debug-stats under that.

But we'd also have to come up with the same container-device for the RPM
case.

Regards,
Bjorn

> >                 spmi_bus: spmi@c440000 {
> >                         compatible = "qcom,spmi-pmic-arb";
> >                         reg = <0 0x0c440000 0 0x1100>,
