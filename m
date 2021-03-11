Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CA5D337FF1
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 22:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbhCKVzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 16:55:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbhCKVyw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 16:54:52 -0500
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6CE0C061761
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 13:54:51 -0800 (PST)
Received: by mail-qv1-xf36.google.com with SMTP id by2so3319361qvb.11
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 13:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E3NToVMb7SyOcWd/eqRyCe7U4wiYDLs06rM6zg487v4=;
        b=Tw9Mm5ufk7p20s+L3uY8+zldTGCWGuQ5SIj+9jnt2SEBW4xfZEXuh0LutMljZFvcFr
         SWCo+l6lbEvuANlvJebP3XvWPa+bidF0dXQcTWNPmOGWznQBcfcbA7HZk0J7lQHXsKPk
         drHNU+8qTah0QZPvPkeO6jKoxRr5gougXcu1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E3NToVMb7SyOcWd/eqRyCe7U4wiYDLs06rM6zg487v4=;
        b=TgwqSIAKD0cVxwwf89uJSdUoD+E5GJ8gm3F3KJZBbFrv4iAcbpnburFWuN8BsWRaWZ
         V0rqjXjQn3mtUec2BKJnr7LbZ6YDXuBgYFKluNEZ/53/TblRRFJ+HXHAPVhb3nrZKcdG
         NmM5qfRL+3nt3EUL7Mzo2GFgD7EL9Y+RWV6nOVNn0h/ZALtvLEPS1hj0avG2X659+p9X
         OknWzsxXwpQuZuY1L4eLLFv5zFo1E/N1yMFIYXrsSXigT5HA2gJP+KeLP34E5+GOiv76
         92AJTnKIN/TUrgjt3sic9eoiEg01N2US046kbDVmoWAka6UODqkVTXRb1+/lvN4aNDe1
         4Hng==
X-Gm-Message-State: AOAM532VM3Biakinfn0CfXHGU15YV9WkRwVVpTHvegLQDzvRQs/9cadO
        H/slglZcEZlyj0aWenJfzl6xcljcT2GR4A==
X-Google-Smtp-Source: ABdhPJzBuvAkThh8/i2Hl3NsYWsshBVrs0ryxkO4fu1bQHtPpxBa+JnCRgD45/LcPUEY83CrLofZmg==
X-Received: by 2002:a0c:ed2c:: with SMTP id u12mr1916033qvq.30.1615499690516;
        Thu, 11 Mar 2021 13:54:50 -0800 (PST)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id n136sm2941348qke.123.2021.03.11.13.54.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 13:54:49 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id p193so23277300yba.4
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 13:54:49 -0800 (PST)
X-Received: by 2002:a25:9348:: with SMTP id g8mr11415895ybo.343.1615499689441;
 Thu, 11 Mar 2021 13:54:49 -0800 (PST)
MIME-Version: 1.0
References: <20210311033957.8978-1-rojay@codeaurora.org>
In-Reply-To: <20210311033957.8978-1-rojay@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 11 Mar 2021 13:54:38 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VuGPvUY8edN+PEuZS_pO+=3WHeJ-4J5tHDAPRnXJs0QA@mail.gmail.com>
Message-ID: <CAD=FV=VuGPvUY8edN+PEuZS_pO+=3WHeJ-4J5tHDAPRnXJs0QA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sc7280: Add qspi, qupv3_0 and qupv3_1 nodes
To:     Roja Rani Yarubandi <rojay@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Akash Asthana <akashast@codeaurora.org>,
        msavaliy@qti.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 10, 2021 at 7:41 PM Roja Rani Yarubandi
<rojay@codeaurora.org> wrote:
>
> +&qspi_cs0 {
> +       pinconf {
> +               pins = "gpio15";
> +               bias-disable;
> +       };

The "pinconf" / "pinmux" subnode shouldn't be used for new SoCs. See:

http://lore.kernel.org/r/CAD=FV=UY_AFRrAY0tef5jP698LEng6oN652LcX3B4nG=aWh0gA@mail.gmail.com

...same feedback for this whole patch.

> +                       qup_spi0_default: qup-spi0-default {
> +                               pinmux {
> +                                       pins = "gpio0", "gpio1",
> +                                              "gpio2", "gpio3";
> +                                       function = "qup00";
> +                               };
> +                       };

Please split these SPI nodes as per the thread above, like:

tlmm: pinctrl@... {
  qup_spi0_data_clk: qup-spi0-data-clk {
    pins = "gpio0", "gpio1", "gpio2";
    function = "qup0";
  };

  qup_spi0_cs: qup-spi0-cs {
    pins = "gpio3";
    function = "qup0";
  };

  qup_spi0_cs_gpio: qup-spi0-cs-gpio {
    pins = "gpio3";
    function = "gpio";
  };
};


> +                       qup_uart0_default: qup-uart0-default {
> +                               pinmux {
> +                                       pins = "gpio0", "gpio1",
> +                                              "gpio2", "gpio3";
> +                                       function = "qup00";
> +                               };
> +                       };

I suspect things would actually be cleaner if we broke the uart lines
up since the boards tend to have to adjust pulls differently for each
line. With the new "no pinconf / pinmux" world it's pretty clean. It's
obviously up to Bjorn, but if it were me I'd request this in the SoC
file:

qup_uart0_cts: qup-uart0-cts {
  pins = "...";
  function = "qup00";
};

qup_uart0_rts: qup-uart0-rts {
  pins = "...";
  function = "qup00";
};

qup_uart0_rx: qup-uart0-rx {
  pins = "...";
  function = "qup00";
};

qup_uart0_tx: qup-uart0-tx {
  pins = "...";
  function = "qup00";
};

...and now when the board file wants to adjust the pulls they can just
reference each one:

/*
 * Comments about why the UART0 pulls make sense.
 * Blah blah blah.
 */

&qup_uart0_cts {
  bias-pull-down;
};

&qup_uart0_rts {
  drive-strength = <2>;
  bias-disable;
};

&qup_uart0_rx {
  bias-pull-up;
};

&qup_uart0_tx {
  drive-strength = <2>;
  bias-disable;
};


> +               qspi: spi@88dc000 {

I believe the qspi node is sorted incorrectly. When I apply this to
the top of the Qualcomm tree it shows up after the "apps_smmu:
iommu@15000000" node. However:

0x088dc000 < 0x15000000

...which means it should be _before_.

-Doug
