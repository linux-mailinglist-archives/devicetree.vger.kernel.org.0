Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB1DF387DD4
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 18:42:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243086AbhERQnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 12:43:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350862AbhERQnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 12:43:41 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4ACC061760
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 09:42:21 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id c17so7820740pfn.6
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 09:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=IopDq1WqbzN1ym3ZNy83wMiwTcHRL4aO72eByzE4j5s=;
        b=fBSqlS7iKRbQlaPtPvcRcqFedGqriKZ0I7iud8U3gRqBOVhpPX28ne0L8CIfBsDA41
         muD0rtjvfEQl7tvPCwGp8hKU4uYq1wJPqCJANEKknkoHaegpleblGSfdpjsw1LPqxolN
         RgShh/td5WlLdoT4xWOKjTexpy+QwMs/Bnc1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IopDq1WqbzN1ym3ZNy83wMiwTcHRL4aO72eByzE4j5s=;
        b=P5yrYBdXJMC4ENtBE77KKfguICcA5gWl1z3eP7Rqbeg7FNVf2qnDpg5s6DLRBS4lVo
         /K6KBsBqvroDnmNN7cNPC/5XJtGke2l+if4nURnpW/3SuM+3yuJvyakv+6INSCv/9H37
         EJruAm2dJTp6BY7L2eUIfJp0G81V/npl9EXe5FdA5j6N71MzXpfZENP/E/wkgW1F/Ns/
         0XQuj2B9dLpvaQcH2mQpwJYDw5qLr0gDrJ99bDzz3f1paIhgI99upxKu3WY6XBc8O+bB
         NWmxWQtoMgePdaimP749sL8UDd8T/e45qQIjX96dT0MUn3qb9cXoriRoTkXraPlM5MBT
         zhXA==
X-Gm-Message-State: AOAM531RT3ejH9acDQeRgJLFy90kKddn1BCZ226vKKL+cRhRHf580bce
        yTkKF9kxqSODs6MppcSOSrRP4g==
X-Google-Smtp-Source: ABdhPJwR32wdrHLXMGkWsSepSUSbuD0F9VgRg/LXJPLInDqLXav/kR2JpgXGKQhX1jiZqAuRQ5uPpg==
X-Received: by 2002:a62:7e41:0:b029:249:287:3706 with SMTP id z62-20020a627e410000b029024902873706mr5860061pfc.76.1621356141265;
        Tue, 18 May 2021 09:42:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:5b64:c814:4f8b:838e])
        by smtp.gmail.com with UTF8SMTPSA id h26sm4289692pfo.203.2021.05.18.09.42.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 09:42:20 -0700 (PDT)
Date:   Tue, 18 May 2021 09:42:19 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     satya priya <skakit@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [RESEND PATCH V4 3/8] arm64: dts: qcom: pm7325: Add pm7325 base
 dts file
Message-ID: <YKPua2M6t9yIJ5uy@google.com>
References: <1621318822-29332-1-git-send-email-skakit@codeaurora.org>
 <1621318822-29332-4-git-send-email-skakit@codeaurora.org>
 <YKOpE1V25rdDj4Tk@vkoul-mobl.Dlink>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YKOpE1V25rdDj4Tk@vkoul-mobl.Dlink>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 05:16:27PM +0530, Vinod Koul wrote:
> On 18-05-21, 11:50, satya priya wrote:
> > Add base DTS file for pm7325 along with GPIOs and temp-alarm nodes.
> > 
> > Signed-off-by: satya priya <skakit@codeaurora.org>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > Changes in RESEND V4:
> >  - No Changes.
> > 
> >  arch/arm64/boot/dts/qcom/pm7325.dtsi | 53 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/qcom/pm7325.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/pm7325.dtsi b/arch/arm64/boot/dts/qcom/pm7325.dtsi
> > new file mode 100644
> > index 0000000..e7f64a9
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/pm7325.dtsi
> > @@ -0,0 +1,53 @@
> > +// SPDX-License-Identifier: BSD-3-Clause
> > +// Copyright (c) 2021, The Linux Foundation. All rights reserved.
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/spmi/spmi.h>
> > +
> > +&spmi_bus {
> > +	pm7325: pmic@1 {
> > +		compatible = "qcom,pm7325", "qcom,spmi-pmic";
> 
> where is qcom,pm7325 documented?

good point, I missed that one.

> > +		reg = <0x1 SPMI_USID>;
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		pm7325_temp_alarm: temp-alarm@a00 {
> > +			compatible = "qcom,spmi-temp-alarm";
> > +			reg = <0xa00>;
> > +			interrupts = <0x1 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> > +			#thermal-sensor-cells = <0>;
> > +		};
> > +
> > +		pm7325_gpios: gpios@8800 {
> > +			compatible = "qcom,pm7325-gpio", "qcom,spmi-gpio";
> 
> where is qcom,pm7325-gpio documented?

It's added by the 'Add GPIO support for PM7325' series
(https://patchwork.kernel.org/project/linux-arm-msm/list/?series=481133)

The binding change was acked by Rob and the code by Bjorn, so it can be
expected to land, but it would still be good to mention the dependency
explicitly.
