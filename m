Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F3163F8F38
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 21:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233898AbhHZTwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 15:52:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232398AbhHZTwY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 15:52:24 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 301C0C061757
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 12:51:37 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id j10-20020a17090a94ca00b00181f17b7ef7so7345280pjw.2
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 12:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=VDKSZwM6+MkspeAfVSvtL1ryQMnZ/8yIsg8vSwepJrk=;
        b=kKU5fomT08zxgo0C6ur54X+WSdXkohiKvaojhLd65QKKOp1DUTy43t4weo5hEyBW0/
         LGi2JAL/MobSKVsax+S4xp7F94wJP8F7bkEgpyVd/1FkDLxw1NPGL00nkQRIl9kaXcls
         zVTo+8SrCNlubKZsH42QWBHs3OLWvlCkPkTnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VDKSZwM6+MkspeAfVSvtL1ryQMnZ/8yIsg8vSwepJrk=;
        b=F9EJSXUtqM2OBhLNOGS3zlztXhySRbj1/x73V09jI7CRRWacCi/P1xqqkJINwIktJz
         n8BFPa3DZSiEUJ3jBrs1VGDHTrLEvc1y14GIFdmGbGh7qE/h2KMFiAouGureObtOqFJI
         EjGSIala4DZpE4/0DdraSqxrEu4EMZGOD5J//KStXesnACmYmCrgYqj/g7wZKnKefUhO
         ZhNK1Yp3PuZtg1UYE7nkhJ7pOw8n1e7lmAfEnti3Z8aJZJQRGWZjRcVwL8gardR1W8h5
         xuBV8DYP1SWD6wfexb2DG3J2S8I6G4Z2qQMEYLlTEtb+j57Rd79FWtx/KKSh5iASgxvr
         vZ0g==
X-Gm-Message-State: AOAM532DCuIryqExc8/JQ4Jw2JpgySWBhRoW1XfQWT5QctG2TVd34Q9u
        sa04inpuJyTcevs+ltnARIf7sQ==
X-Google-Smtp-Source: ABdhPJx6mpM4H0UsaVPSAz7cl4fw0b0Mrl9F8syKLHFXkbN/VITueXvFSZJ84fZAJAYlW/wHoRFHIw==
X-Received: by 2002:a17:90a:9f91:: with SMTP id o17mr18336584pjp.29.1630007496692;
        Thu, 26 Aug 2021 12:51:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:bd0b:bcb8:ebdb:c24d])
        by smtp.gmail.com with UTF8SMTPSA id z8sm3749169pfa.113.2021.08.26.12.51.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 12:51:36 -0700 (PDT)
Date:   Thu, 26 Aug 2021 12:51:34 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     rajpat@codeaurora.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, swboyd@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org
Subject: Re: [PATCH V5 3/7] arm64: dts: sc7280: Add QUPv3 wrapper_0 nodes
Message-ID: <YSfwxuX22Ix4fqX2@google.com>
References: <1628754078-29779-1-git-send-email-rajpat@codeaurora.org>
 <1628754078-29779-4-git-send-email-rajpat@codeaurora.org>
 <YRUsr6x9vqvaBB9i@google.com>
 <114d7419b0a85fcacf775cc34f279f0e@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <114d7419b0a85fcacf775cc34f279f0e@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 26, 2021 at 06:37:02PM +0530, rajpat@codeaurora.org wrote:
> On 2021-08-12 19:44, Matthias Kaehlcke wrote:
> > On Thu, Aug 12, 2021 at 01:11:14PM +0530, Rajesh Patil wrote:
> > > From: Roja Rani Yarubandi <rojay@codeaurora.org>
> > > 
> > > Add QUPv3 wrapper_0 DT nodes for SC7280 SoC.
> > > 
> > > Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> > > Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 720
> > > +++++++++++++++++++++++++++++++++++
> > >  1 file changed, 720 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > index f8dd5ff..e461395 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >
> > > ...
> > >
> > > +			spi0: spi@980000 {
> > > +				compatible = "qcom,geni-spi";
> > > +				reg = <0 0x00980000 0 0x4000>;
> > > +				clock-names = "se";
> > > +				clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
> > > +				pinctrl-names = "default";
> > > +				pinctrl-0 = <&qup_spi0_data_clk>, <&qup_spi0_cs>,
> > > <&qup_spi0_cs_gpio>;
> > 
> > What is the story behind 'qup_spiN_cs' and 'qup_spiN_cs_gpio'? Both
> > configure
> > the CS pin with a different function:
> > 
> 
> As per discussion here [1], we have split like this.
> 
> [1] https://lore.kernel.org/patchwork/patch/1393353/#1591826

IIUC that's only about having separate configs for each pin, instead of
groups like 'qup-spi0-default'. What you are doing above with 'qup_spi0_cs'
and 'qup_spi0_cs_gpio' is to configure the same pin (GPIO 3) both as SPI
chip select and as GPIO. Which one is it?

I imagine we want to have both pinctrl definitions to allow a board to
configure the pin either as SPI CS or GPIO. However it should be only one
of the two at a time, and the SoC .dtsi should provide a reasonable
default, which probably is SPI CS.

Maybe I'm missing something, if so please provide details on why it is
necessary to have this config.
