Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 30190166FD8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 07:50:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbgBUGuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 01:50:15 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:33342 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgBUGuO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 01:50:14 -0500
Received: by mail-wm1-f66.google.com with SMTP id m10so4443755wmc.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2020 22:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q61/N6jKzSDGt/dt2Ij4V86BCpsgubUQTNr9KPnbsfA=;
        b=VzXfMrb9VSxxxrTJ5DDpS1xdw0dsZ3h+H5ZwFs9uigBL9YpFt0PFhdr3SG3lZ+hF7Q
         Gm/KInKtrOYR51jFwrjfeMxvPtSXPOVGtYZGXsxTAJoT3fhttjsQdAJNkWjBFqJuqzhk
         7odQ6VLtaVDtHK5Zqt45oi8BKD0XLZoXyON7wer0RfUMNVXnJjx/DHDGjMach0Ar6nBP
         qeapLe03hmprJaKD4rfHRQIQRlx1a1es69I4nvOSgqGGNObe6LZ83WBcbd2EA5q9j/0h
         rs/XY11RvXFxQwhdws8EjTVo0BDLdjtC8kPB3iG28X8ILnPe4HeYCf3cm+bwcJNm6IAh
         9fpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q61/N6jKzSDGt/dt2Ij4V86BCpsgubUQTNr9KPnbsfA=;
        b=toPSgRhwDGeKRdRox5NDsvXSsiKmUJm9ToqWYdkrzpCOwVnBBsi89o369OIkfpYe52
         ZoPvhr/xcLDKIlM7U4prN7bANvvxuaDuuCHga0Ec76xy7fHJmSoOkDVvuN4nUWAt+531
         6jOw/+Vu51svT+Fw4b/gVBIvFqB9wI18eKvfLkhZ6JvPA4RUcemLLT+h1lKeIlXCWbEf
         882EqoZL3JtQsU5UnW2btMjec99waME6LU0i2obNxigf//JaCAuptwBOzEeY9CoZwDHj
         uMaaIM1fmSI4YTAFMibxS8x5p3oS/EKGlCP38GMIoR68JHiWJRUaxK0MKQE5fZrjMS7u
         +MXA==
X-Gm-Message-State: APjAAAXX1OjwVLV97Ttcwq2LVA2BqTmDW+/9/xbECS8tEBjBwE5rYXvV
        LF5HgjZSO5Rr/hh3KhPFn0s=
X-Google-Smtp-Source: APXvYqzEZJwZsv9NAveAC2FjcWcHpl771MrGsbDrYjQQgJbqUJeWLRf2jv4lld17Hkk9bm6M9EG3Ag==
X-Received: by 2002:a7b:c152:: with SMTP id z18mr1742573wmi.70.1582267812932;
        Thu, 20 Feb 2020 22:50:12 -0800 (PST)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id h205sm2551959wmf.25.2020.02.20.22.50.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 22:50:12 -0800 (PST)
Date:   Thu, 20 Feb 2020 17:04:41 +0100
From:   Oliver Graute <oliver.graute@gmail.com>
To:     aisheng.dong@nxp.com
Cc:     peng.fan@nxp.com, festevam@gmail.com, devicetree@vger.kernel.org,
        linux-imx@nxp.com, Anson.Huang@nxp.com,
        linux-arm-kernel@lists.infradead.org
Subject: RFC: imx8: imx8qm with LCD Panel on lpspi
Message-ID: <20200220160441.GC31464@optiplex>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Aisheng,

I try to get a LCD Panel working with the imx8qm. The Panel is connected
to lpspi. But I'am not sure if I handle the imx8qm clocking the right
way. Should I use the imx7ul compatible or the imx8qxp compatible? Which
clock defines should I use for the SPI1 Clk?

Best Regards,

Oliver


	lpspi1: lpspi@5a010000 {
		compatible = "fsl,imx7ulp-spi";
		/* compatible = "fsl,imx8qxp-spi"; */
		reg = <0x0 0x5a010000 0x0 0x10000>;
		interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
		interrupt-parent = <&gic>;
		clocks = <&clk IMX_ADMA_SPI1_CLK>,
		         <&clk IMX_IMG_IPG_CLK>;
		clock-names = "per", "ipg";
		assigned-clocks = <&clk IMX_ADMA_SPI1_CLK>;
		assigned-clock-rates = <20000000>;
		status = "disabled";
	};

&lpspi1 {
	#address-cells = <1>;
	#size-cells = <0>;
	fsl,spi-num-chipselects = <1>;
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_lpspi1 &pinctrl_lpspi1_cs>;
	cs-gpios = <&lsio_gpio3 24 GPIO_ACTIVE_LOW>;
	status = "okay";

	panel@0 {
		compatible = "sitronix,st7789v";
		reg = <0>;

		/* reset-gpios = <&lsio_gpio3 11 GPIO_ACTIVE_LOW>; */

		backlight = <&lvds_backlight1>;
		spi-max-frequency = <30000000>;
		spi-cpol;
		spi-cpha;

		port {
			panel_input: endpoint {
				remote-endpoint = <&tcon0_out_panel>;
			};
		};

	};
};
