Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2F8B2D5E55
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 15:47:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389548AbgLJOrc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 09:47:32 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43388 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732977AbgLJOra (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 09:47:30 -0500
Received: by mail-wr1-f66.google.com with SMTP id y17so5719394wrr.10
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 06:47:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/tSo5wcbVzyLWcCQHYxBQHtGuN8N87Sz90mxuLWwa+A=;
        b=nAQv54JTEQRfxHISWTsPvlNI2h1b9gObkDPvoPsKk1Z81/RZaatAF7fSJ83VQAHHBk
         oNNrfoq+x9roJyt5j978/AuF9aILqw1eRdEz4SwzcBfEZvypQhnbBoXWAq4xn6fz0m1Q
         j0LiXsa96cDo1ypxWLloRy4eEh8VlRWNBIlVUpQ6ckxxGdjZcMe/WCgXMhTngdAdCMqM
         tvhYHGoK0AwFaYL5zYisU+mL5ivX9ZCockR1RJph5dnspJocD31hSTRfZhB1aFf7UPGb
         JZByAvAXNyUMk62o+VLAeS1ne2tJ3CLbhpxRNof8s5/wDoOXusesdRLMPdX2xZG96ADw
         6TTQ==
X-Gm-Message-State: AOAM532tlhdrOzK50FveG4NcWmYTrvN3e15zM7LYTB9bsJH+rXrJSX80
        BlXKPH8CvShqJAS96i99ADA=
X-Google-Smtp-Source: ABdhPJwwaBAhmM41+WSMMGeZUIJBbDumsMCriqnKV1ronOQTKKudL5opMaMJ5/V7jfOM6uFCiKZWCw==
X-Received: by 2002:a5d:6845:: with SMTP id o5mr8506323wrw.421.1607611607890;
        Thu, 10 Dec 2020 06:46:47 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id q25sm10779811wmq.37.2020.12.10.06.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 06:46:46 -0800 (PST)
Date:   Thu, 10 Dec 2020 15:46:44 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
Message-ID: <20201210144644.GA55201@kozik-lap>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
 <1607445491-208271-5-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607445491-208271-5-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 08, 2020 at 05:38:11PM +0100, Teresa Remmet wrote:
> Add initial support for phyBOARD-Pollux-i.MX8MP.
> Supported basic features:
> 	* eMMC
> 	* i2c EEPROM
> 	* i2c RTC
> 	* i2c LED
> 	* PMIC
> 	* debug UART
> 	* SD card
> 	* 1Gbit Ethernet (fec)
> 	* watchdog
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 166 ++++++++++++
>  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 296 +++++++++++++++++++++
>  3 files changed, 463 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
> 

With the fixes pointed out by Alexander:

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
