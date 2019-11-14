Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 55234FA72E
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2019 04:21:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727637AbfKMDVv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Nov 2019 22:21:51 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:39476 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727611AbfKMDVu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Nov 2019 22:21:50 -0500
Received: by mail-pf1-f195.google.com with SMTP id x28so615963pfo.6
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2019 19:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Xh+7KfDEebguVponzVADQ5ThctCVNju/ZJ+WScN9xeg=;
        b=Yq6TmwlcvtCDW5xGFvdKBjI3po7t2FcN6NDfBj6I/LGeoYJ7/VwyM32gb+2sLqWXVj
         Fun17i/K9DxOMJhHaBvGo49xV4HmPOukm0ud07FDScJBuCtFj/uIX6afsfQRh5Qr45Vv
         /1qgZsnM1ZHRx1zlU01qEoJu3hx/Fv4GA7XhZbDwvEpl/Jh+rT4LGnr2mdC0LVN1ZHoL
         hHus+qjwamgwXRNIECtPM4R0tuD2j7T4dAhX1Jo6IKTAjgIMrI8KGKWbZ7zuKQ2vAn8Z
         6Kmhl7ByhPiXKXLD0VoJSHBfxQIOkXKz1WoIQZoOqhLjEpB9ffWl/v9f20PVY4NTsgIQ
         EWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Xh+7KfDEebguVponzVADQ5ThctCVNju/ZJ+WScN9xeg=;
        b=f9H/MR3k7FNsiLK70ZZUoZpP7YcQZ10rcGg5IDCxtBFC0azspnT6wUp0WQAgkBLKAk
         17L8BMlTFkVqtkoeNhST76jcXROPlOVaLthXERBew3TPTCfY1OGwZ25Uqmgazjm1CyIi
         0QIhf2QxiYMPfu6nigRSd0aziNcfQOV7AQmM5MBMqoGVOugW+XRkaPX5g0moJ18UPts0
         3S6NVVwNDGOgQiOUPhKw/sc7pgYs/K/xWd7An16jbszkNae1lolwOX0lzbk14ajHYAhI
         We8xlLGkbZLYZCxIILNmFve3SHyFThGHYS2vykmSnh5c9TuxYyzMrzjw7foyNZRf35pP
         HEMw==
X-Gm-Message-State: APjAAAW7DxF+BkRGJbxMn7TQ82wplZXFw+wZUk5AIzK08oJFFnaxPsy/
        1OV/Yfty/EatuoneY11wFftS
X-Google-Smtp-Source: APXvYqxb2tsNSW+6NmKeUfJB7q5vWYKaQHqkuMP/WE/jr8h0+qMnFPvtBuYdgUTxCHAGsRDnFMxQZA==
X-Received: by 2002:a63:1b5c:: with SMTP id b28mr1066372pgm.69.1573615309606;
        Tue, 12 Nov 2019 19:21:49 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2405:204:71cb:37b6:9dd7:8b8c:35ea:81b7])
        by smtp.gmail.com with ESMTPSA id j4sm568352pjf.25.2019.11.12.19.21.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Nov 2019 19:21:49 -0800 (PST)
Date:   Wed, 13 Nov 2019 08:51:41 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Kever Yang <kever.yang@rock-chips.com>
Cc:     heiko@sntech.de, linux-rockchip@lists.infradead.org,
        Akash Gajjar <akash@openedev.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        daniel.lezcano@linaro.org
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Message-ID: <20191113032141.GB3377@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
 <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
 <20191112171726.GA18622@Mani-XPS-13-9360>
 <885996a6-e314-52c8-fec4-f66526dd1397@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <885996a6-e314-52c8-fec4-f66526dd1397@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kever,

On Wed, Nov 13, 2019 at 10:44:02AM +0800, Kever Yang wrote:
> Hi Manivannan,
> 
> On 2019/11/13 上午1:17, Manivannan Sadhasivam wrote:
> > On Tue, Nov 12, 2019 at 04:10:17PM +0800, Kever Yang wrote:
> > > On 2019/11/11 下午1:22, Manivannan Sadhasivam wrote:
> > > > Hi Kever,
> > > > 
> > > > On Mon, Nov 11, 2019 at 08:51:57AM +0800, Kever Yang wrote:
> > > > > Add vdd_log node according to rock960 schematic V13.
> > > > > 
> > > > > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > > > > ---
> > > > > 
> > > > >    arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
> > > > >    1 file changed, 12 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > > > index c7d48d41e184..73afee257115 100644
> > > > > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > > > @@ -76,6 +76,18 @@
> > > > >    		regulator-always-on;
> > > > >    		vin-supply = <&vcc5v0_sys>;
> > > > >    	};
> > > > > +
> > > > > +	vdd_log: vdd-log {
> > > > > +		compatible = "pwm-regulator";
> > > > > +		pwms = <&pwm2 0 25000 1>;
> > > > > +		regulator-name = "vdd_log";
> > > > > +		regulator-always-on;
> > > > > +		regulator-boot-on;
> > > > > +		regulator-min-microvolt = <800000>;
> > > > > +		regulator-max-microvolt = <1400000>;
> > > > > +		regulator-init-microvolt = <950000>;
> > > > The default value seems to be 0.9v as per both Rock960 and Ficus schematics.
> > > 
> > > The default value is 0.9V when pwm-regulator is not enabled, and this
> > > 'init-microvolt' suppose to set the
> > > 
> > > init value when pwm-regulator is enabled. I set this to 950mV because Peter
> > > report that he experience
> > > 
> > > the system hang during Fedora boot  up, and update the vdd_log to 950mV can
> > > fix the issue due to
> > > 
> > > engineer measure on another rk3399 board puma-Q7.
> > > 
> > okay. Previously we had post-boot hang issue on Rock960 Model A boards when the
> > performance governor was set as default. So the vdd_log node was removed from
> > the devicetree. Have you tested that case also?
> > 
> > Here is the commit:
> > 13682e524167 ("arm64: dts: rockchip: remove vdd_log from rock960 to fix a stability issues")
> 
> 
> For rk3399, the kernel does not touch this regulator, it should be take care
> by bootloader.
> 
> So I think we need to update both U-Boot and kernel.
> 

Hmm, okay. I will try to test these patches soon and share the observation here.

Thanks,
Mani

> 
> Thanks,
> 
> - Kever
> 
> > 
> > thanks,
> > Mani
> > > Thanks,
> > > 
> > > - Kever
> > > 
> > > > Other than that,
> > > > Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > 
> > > > Thanks,
> > > > Mani
> > > > 
> > > > > +		vin-supply = <&vcc_sys>;
> > > > > +	};
> > > > >    };
> > > > >    &cpu_l0 {
> > > > > -- 
> > > > > 2.17.1
> > > > > 
> > > 
> 
> 
