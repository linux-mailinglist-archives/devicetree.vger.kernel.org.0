Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 440932056D
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 13:44:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728333AbfEPLnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 07:43:52 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:41567 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727869AbfEPLnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 07:43:52 -0400
Received: by mail-lf1-f66.google.com with SMTP id d8so2366599lfb.8
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 04:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EwIKElYEI2RR966fZy5tFSUKfG1M7XBGzxkxXp7I5g0=;
        b=KU8+qcbyvp5kDX7BH7qQNUPqa8Wjd/YMOjRv8hcdVmerdVCscvC/Ksk5Gl1EtQFqMa
         fFGul94v6PGH2cQ0pTVm0eQm8s2NSnSrFgowjqjHAHfSXiPGSQ0znBeqtWAebuqW8tOx
         ZUpGbRJd3AV53a/pmg9dHkCPMHKrmnv+Et38yA2VB1lTp5noumCw8f/3wih/xPdGd+3/
         7mH9ojpwkUIHwEyE6U47MYyHy+yr4shqCFrnFuRsv3FUW+8/tMwGmYteQpxdNLT3gekb
         lJksJC6z44hMP9mbF4Z4r77g+b2u1hkBgGzlKYXr//WIwiD+qHd8UjY9kdtIiOKZpIzj
         CAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EwIKElYEI2RR966fZy5tFSUKfG1M7XBGzxkxXp7I5g0=;
        b=DeEBWts4dp5Tsql3W35vkdvfvLCx3c7q8kowhs5nDnHU28g2JJb9fTV8+zeu17Km+w
         IGL/Ab4kC+7be8DweMlxL0P5+LcdTYj0fXSaYv1HeNjyIrL/yeDZxCvk99pPzayzKAdk
         SfVFanOMifPb4S4khUirvuXZgoQjdxws/HI70bhzrWr8G+9iGctl2alMBEsEOlzEcKF4
         gFvsz8D28Rr/hIL5+hASu7Li/Te84878UBDY9OiU1fCkOVVDKkxoOFgVg+3/vvW+b/uq
         UXBEK1QxoHogFKRcswdd1UPZxwHhchUz3s5WriLvXKZqRfjVGTcSLLmt/IRlOPOQAa8+
         xINA==
X-Gm-Message-State: APjAAAXEOGQWKpBOmxEbAaTnFaOERmEO5ObGBgl3DWIRiE0qkTT+MnLj
        U7bqJd4EowkIpt2QoAqHSS0fgbCR13uE2VTVhD4=
X-Google-Smtp-Source: APXvYqzVuaijyK9HljD5OeF3lV0gb7ydsggrIAcEsHJtU916RXVoenchlsZMBktrOaxKNdUEQKVEohWgrU7E1jqqdXQ=
X-Received: by 2002:a19:c746:: with SMTP id x67mr23290885lff.152.1558007030527;
 Thu, 16 May 2019 04:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190509155834.22838-1-m.felsch@pengutronix.de> <20190509155834.22838-12-m.felsch@pengutronix.de>
In-Reply-To: <20190509155834.22838-12-m.felsch@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 16 May 2019 08:43:40 -0300
Message-ID: <CAOMZO5CqbA6VaGhjgTnmmO=VJw1rUz=oReBqJ3HFHmL78vva2w@mail.gmail.com>
Subject: Re: [PATCH 11/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC
 SPI1 interface
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, Stefan.Nickl@kontron.com,
        Gilles.Buloz@kontron.com, Michael.Brunner@kontron.com,
        thomas.schaefer@kontron.com, frieder.schrempf@kontron.de,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 9, 2019 at 12:59 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> +/* SPI1 */
> +&ecspi2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_ecspi2>;
> +       fsl,spi-num-chipselects = <2>;
> +       cs-gpios = <&gpio2 26 0>, <&gpio2 27 0>;

Same comment as in the other patch.
