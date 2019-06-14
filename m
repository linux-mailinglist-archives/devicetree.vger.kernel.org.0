Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 58C4346488
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 18:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725814AbfFNQmZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 12:42:25 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:45757 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725808AbfFNQmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 12:42:25 -0400
Received: by mail-qk1-f194.google.com with SMTP id s22so2053768qkj.12
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 09:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LvCoDYGzGpZHWNqqXDyj7tZ68K9QYgLtd6i/LSuZlTg=;
        b=XXBSZfGyOTKE9BsbFQBuNfQwVQgClJSYClYOU6ByrrsGO7hk3alSpc7P3c8/QAsP+n
         kruTCr1qAeJ97ScPCodetCapVUhT2eiM0ArOtstD/khK4by7WJrG9bWIX3nOhecUbwnY
         Pmhi41UjKvR+SPzZHD4jFYpmo7uQdw7P5xdLinuSIYozNiJ2QO+fTYdgeyu49/qlqhs9
         mokzisWU6rlixJCHqL2G3w+uGcxunA6UKDsguyfOJBd5pq9PTCWyJUoKgKj1O7zoXvS9
         Zn1t9JZtIcZsPSBTp/QOC+sOJJQ+PxnL5gsK1cVpRM7Y7v5HbU4yNgD3u9nLdNWVbhMO
         14yw==
X-Gm-Message-State: APjAAAWU1+uWCvmZ4gh1x742uaAdv3Yr7QFleeHgP2b5xm6f1T3My5CS
        e3Zml1Gd1sLzbEnQWh4OsA==
X-Google-Smtp-Source: APXvYqxkjDZsM8wtlEDOhdkqswk52LRk6i4Tm9NDsqj3lu7WW63BnoOCyD1SGGrdI5t/apU2U7gULA==
X-Received: by 2002:a37:47d6:: with SMTP id u205mr11996243qka.214.1560530544550;
        Fri, 14 Jun 2019 09:42:24 -0700 (PDT)
Received: from localhost ([64.188.179.243])
        by smtp.gmail.com with ESMTPSA id l6sm1882553qkf.83.2019.06.14.09.42.23
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 14 Jun 2019 09:42:23 -0700 (PDT)
Date:   Fri, 14 Jun 2019 10:42:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Robin Gong <yibin.gong@nxp.com>,
        Angus Ainslie <angus@akkea.ca>,
        Shawn Guo <shawnguo@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Message-ID: <20190614164222.GA30277@bogus>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 21, 2019 at 08:41:13PM +0000, Leonard Crestez wrote:
> These values can be overwritten at probe time.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  .../devicetree/bindings/mfd/rohm,bd71837-pmic.txt         | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
> index d5f68ac78d15..3649c1191432 100644
> --- a/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
> +++ b/Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt
> @@ -36,10 +36,18 @@ switched power state to SNVS. If reset is done via READY state the power
>  outputs will be returned to HW control by OTP loading. Thus the reset
>  target state is set to READY by default. If SNVS state is used the boot
>  crucial regulators must have the regulator-always-on and regulator-boot-on
>  properties set in regulator node.
>  
> +- rohm,short-press-ms	: Short press duration in milliseconds
> +- rohm,long-press-ms	: Long press duration in milliseconds
> +
> +Configure the "short press" and "long press" timers for the power button.
> +Values are rounded to what hardware supports (500ms multiple for short and
> +1000ms multiple for long). If these properties are not present the existing
> +configuration (from bootloader or OTP) is not touched.

We already have a standard property 'power-off-time-sec' for at least 
part of this assuming 'long' or 'short' causes a power off. 'long' and 
'short' don't describe anything useful. The action should be described.

Rob
