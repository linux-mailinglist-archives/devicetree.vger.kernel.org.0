Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 836E2247B18
	for <lists+devicetree@lfdr.de>; Tue, 18 Aug 2020 01:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726560AbgHQXdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Aug 2020 19:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726135AbgHQXdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Aug 2020 19:33:44 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E07ABC061389
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 16:33:43 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id a79so9009383pfa.8
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 16:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/YSn6G2qaZZ97AgbFQuvBWSKGPby/RQvf90QvpS7TDE=;
        b=XyWK0+kGqzCcjIFvlKM5y2RkGojzQUPEA1ozXTfYBDYdDDwx6MQqG5h15xZJBXrwcZ
         77zX+TInxUNxFjRnITypeHgGzOd70GewUW/DF5xgIMotew4vj3s8NevcVyzTUQO2xicm
         0qxJ+Fak6EvwHG9Mf3gb6CnpmPjb/frWi5HLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/YSn6G2qaZZ97AgbFQuvBWSKGPby/RQvf90QvpS7TDE=;
        b=fgkol0yBJSQ0bFN+DCSaOYnVRIKLz9093yYhGecPDVZIsGr3i91zOBjay4e6U7jKGP
         hAatlNVpdFWsZ/gC9I9NzZUw2tNtHGZExCk8VAJCOu3lwtHCXot6GirNAfnfi8dm10Zp
         8ONdHL9rtkak2pl6HB8GAxHEsHMGde5A3dMjFbzXPusU0Q/SuxlC9Q8M3WOZo+Qx3Oys
         YTufhmV6sjFnhk4o75xf41cbtPNkYTTgEjFsLUVnHJXXysMNvfB56NOVGdPxm+pKrRaP
         y/Nz+m+WP33/gArCMmfPSgq+e+4ArsLU+MniDZ+gH0EzJl9lHJlpe6Vsv9jaf0iIwKpL
         b8/w==
X-Gm-Message-State: AOAM532I8OAIf0XhYKMRfbZf6Hv3mYGB6nBohqSj0OoYPhebOCzXaUFT
        16+p/Zf7wVTFydgT+BHRh3dBfg==
X-Google-Smtp-Source: ABdhPJz0Jil5lrEs1dCmfcD2UOxiizTYAdbjcgAAPEb5cFG3tClye2TxpS/XMJi3gf1ry+OTnuCh3A==
X-Received: by 2002:a65:644f:: with SMTP id s15mr6268863pgv.310.1597707223416;
        Mon, 17 Aug 2020 16:33:43 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id y65sm21089022pfb.155.2020.08.17.16.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 16:33:42 -0700 (PDT)
Date:   Mon, 17 Aug 2020 16:33:41 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        gregkh@linuxfoundation.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, akashast@codeaurora.org,
        rojay@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: [PATCH V2 2/3] arm64: dts: qcom: sc7180: Add sleep pin ctrl for
 BT uart
Message-ID: <20200817233341.GE2995789@google.com>
References: <1595563082-2353-1-git-send-email-skakit@codeaurora.org>
 <1595563082-2353-3-git-send-email-skakit@codeaurora.org>
 <20200817180158.GD2995789@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200817180158.GD2995789@google.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 17, 2020 at 11:01:58AM -0700, Matthias Kaehlcke wrote:
> On Fri, Jul 24, 2020 at 09:28:01AM +0530, satya priya wrote:
> > Add sleep pin ctrl for BT uart, and also change the bias
> > configuration to match Bluetooth module.
> > 
> > Signed-off-by: satya priya <skakit@codeaurora.org>
> > ---
> > Changes in V2:
> >  - This patch adds sleep state for BT UART. Newly added in V2.
> > 
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 42 ++++++++++++++++++++++++++++-----
> >  1 file changed, 36 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 26cc491..bc919f2 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -469,20 +469,50 @@
> >  
> >  &qup_uart3_default {
> >  	pinconf-cts {
> > -		/*
> > -		 * Configure a pull-down on 38 (CTS) to match the pull of
> > -		 * the Bluetooth module.
> > -		 */
> > +		/* Configure no pull on 38 (CTS) to match Bluetooth module */
> 
> Has the pull from the Bluetooth module been removed or did the previous config
> incorrectly claim that the Bluetooth module has a pull-down?
> 
> >  		pins = "gpio38";
> > +		bias-disable;
> > +	};
> > +
> > +	pinconf-rts {
> > +		/* We'll drive 39 (RTS), so configure pull-down */
> > +		pins = "gpio39";
> > +		drive-strength = <2>;
> >  		bias-pull-down;
> > +	};
> > +
> > +	pinconf-tx {
> > +		/* We'll drive 40 (TX), so no pull */
> 
> The rationales for RTS and TX contradict each other. According to the comment
> the reason to configure a pull-down on RTS is that it is driven by the host.
> Then for TX the reason to configure no pull is that it is driven by the host.
> 
> Please make sure the comments *really* describe the rationale, otherwise they
> are just confusing.

Ok, let's try to reason about the configurations.

I didn't find the datasheet for the WCN3991, but my understanding is that
it is an evolution of the WCN3998, so probably the states of the UART pins
are the same (signal names from the BT chip perspective):

     active   reset
CTS    NP      PD
RTS    NP      PD
RX     NP      PU
TX     NP      PD

Since this patch changes the DT let's use the signal names from the host side
in the following.

> RTS: NP => PD

I can see that this could make sense, a floating pin could indicate
the Bluetooth controller that the host is ready to receive data, when it is
not.

> CTS: PD => NP

From a signalling perspective this should be no problem, since the WCN399x
has a pull-down on its RTS signal in reset, and otherwise will drive it.
IIUC there should be no power leakage without a pull, so I think this
should be ok.

> TX: +output-high

IIUC this only has an impact when the pin is in GPIO mode, i.e. in the sleep
config. If that's correct, does it even make sense to specify it in the default
config?

Besides that, what is the reason for this change? I was told in another forum
that Qualcomm found this to fix problems at UART initialization and wakeup,
without really understanding why. That's not great.

I'm no expert in this area, but my guess is that forcing the TX signal to high
in certain states is needed to not have it floating (no pull is configured),
which could generate garbage on the Bluetooth RX side. But is it really
necessary to actively drive it to high? Wouldn't it be enough to configure a
pull-up when it isn't actively driven (i.e. in sleep mode)?

In a quick test wakeup from Bluetooth worked when configuring a pull-up only in
sleep mode. Could you test this on your side or provide a rationale why TX needs
to be actively driven to high?

Thanks

Matthias
