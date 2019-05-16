Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B3892055F
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 13:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728561AbfEPLnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 07:43:16 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:43353 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728091AbfEPLnP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 07:43:15 -0400
Received: by mail-lf1-f68.google.com with SMTP id u27so2352863lfg.10
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 04:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N0Vajohvp7pC40QLi0xNB0OrPVg+iL9Pv/aJOHp68Dk=;
        b=E7XW6t4QuOlZm5jpFuAcsaJU8E0rZ92Q4He7nQNYbSCcJ80y2vXr4kO4H3ks00E+h1
         /opBCYXbCTMOHGv2E2v7bNnc6pXrN7sRI7EAEUimF1brU+QrrB8b1LegjDsrxcGsPSXd
         SGZ8lL8sNhYXA6cMKwurSVLB7kWEeRc+kO4sBuGdDD7YU4wY/B4gp9EIA1z1j86aRuOi
         QK+Knuzp+1LU+0+Ici5NwbJp7EmFJ/LuZ3Wm5KoRnn5slKljK3sGG5fz0HWmD/JzyqKx
         LljdiurkAVaoqPw+MHXHknFJjSLV7PcwsL+9grSP6tBoBUSe632sDI75sQ2fvllMRugs
         p93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N0Vajohvp7pC40QLi0xNB0OrPVg+iL9Pv/aJOHp68Dk=;
        b=UOmH3wyUSu9nZTPFRzujnRNKJtlmE7K/88NWo9M6xily9dgLBLWXK72DEhi0n/FKiU
         WgO3tf8PoqLTpQ+B2F7bfLcPX6nki83pFrwxrCmzyO006lm7D1iPUgwHnRMpQ9hepmrb
         P+BXHSLrN8xOfSMq5XtQJzXI+44pePQpjph/dHdn3W9nEE04gSwNWOQ0WQDryeNxiSF8
         RHILgiJznIli/ZCpNq61aCamDLgCy8Hc/qy8LRNNdacMruzrZx9mL7k+T+Y8vjPtdbTM
         dYSMRWbkncfY0P2OF5vmu7mRq/jY57+szWQN2bqYK9W7MUcmPCM2vX8T+7Q10Pidqvxy
         mBig==
X-Gm-Message-State: APjAAAVdkAp0+bq8Sfy83jZcX0rthiMHJxVrlDmt5iUW4gQC6QzNj+yg
        YkmC7lOqinES7vkQZmyv0xUjMMD38L/db5Uehr8=
X-Google-Smtp-Source: APXvYqyNI5iuZAo6U9ZOjf95hZnB3CdnvR81CWZNQZ/GdHxds95FZEuQ1ZehBtCzbuGc6BX6j0oj1YArEFSGTHYpY48=
X-Received: by 2002:ac2:4479:: with SMTP id y25mr23606677lfl.95.1558006992849;
 Thu, 16 May 2019 04:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190509155834.22838-1-m.felsch@pengutronix.de> <20190509155834.22838-12-m.felsch@pengutronix.de>
In-Reply-To: <20190509155834.22838-12-m.felsch@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 16 May 2019 08:43:02 -0300
Message-ID: <CAOMZO5B0-zM=gDZntSRfiP7D55CWM5e9FTiTtYFtc+k1u1CxQQ@mail.gmail.com>
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

This is a deprecated property and can be removed.

Please check Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt

> +       cs-gpios = <&gpio2 26 0>, <&gpio2 27 0>;

Please use the GPIO_ACTIVE_HIGH macros for specifying the GPIO polarity.
