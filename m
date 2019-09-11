Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F999AF9B6
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 11:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727592AbfIKJ7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 05:59:30 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:35242 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727590AbfIKJ73 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 05:59:29 -0400
Received: by mail-lj1-f194.google.com with SMTP id q22so14804345ljj.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 02:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9HXuMTVfcpW37UjviTlGUeNHddiNVnJw+Pnhmp5IW9U=;
        b=vqdRVbY3xkC8To+y63JXG0n3y8xeMP0cnqAh5gPos11TPx2MJ5YjNkuJkgPa80BtcF
         4JiZ4Xx8a7uw9Sz5tkqQGh+2m6Nz9+2vV/eI5yr843rVuAxXNoQohYhlWMnodprm0bcL
         5mCehv9pHsqGcrw1VDwaO9mzO4mDNVRhL+666OGE2jOYg6gdJaWopbdX5Zbcj0ZBra6T
         dYYWFHT4Y+ZSRGrLD3fdTJOXp6uxQ8LDzR17KwG3hJmcJvFECjC256VuIiJ6Y9q8XhrX
         afoPOGfqqiuy++3LDu/tUkWFuC7huA2fPV5Qkxe4M7wov2clbWPSOuYDVhLY+7mTrAXE
         hB3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9HXuMTVfcpW37UjviTlGUeNHddiNVnJw+Pnhmp5IW9U=;
        b=bTJXXJFYCAtn6hAMe8aVmvWqF3Wu50wc5PKhbONxW8Mf9BXo31HZIjkuUzgGMISsVb
         gYT4X6uATSqUpabxlfNvOhcUXX/Kg3zKcQTE10tbpFPV9XN4PIWx1DLfBkRGlNQxbdWT
         1NlT+/uM8QuGrELokhbfWSyrnY9CGBKjVMmzmhGkxoVR81pvGeKRQEKilO1m4EEi5WpU
         Y41bYlk5ZoIGRFz1EwAuTEHwL8EJiOVS1vZ2Kf0zImf0fm7DLsUK6jDbu+6fp50PO352
         40FYDMChd8fk7UauvNBvhDOX5I95sJFC7skPlswxL90mwifsIPejTr8CnI+FnbsPOenY
         2MDw==
X-Gm-Message-State: APjAAAWO5EHg2BeG55ADzM335BByOLctnHyx00SthMiW//lq4TP13oMO
        vkms5anDwVQd0Bqa6I51q3CiL88Fl8i1T26L5TsA5HPHgxRiYg==
X-Google-Smtp-Source: APXvYqxT1aoNXvUwL/ESu+QKh3xMgy/YTSB/t3k/OGav9Yicg3DARxKZrCRl4SpCBRaX/EF9sONVO8FgCZf9RKQtZBU=
X-Received: by 2002:a2e:7d15:: with SMTP id y21mr15616211ljc.28.1568195968059;
 Wed, 11 Sep 2019 02:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190829181203.2660-1-ilina@codeaurora.org> <20190829181203.2660-6-ilina@codeaurora.org>
In-Reply-To: <20190829181203.2660-6-ilina@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Sep 2019 10:59:16 +0100
Message-ID: <CACRpkdaReFzjb_hcDbQwqMX+whzscLpeZpJPHKqOo+9tANzemA@mail.gmail.com>
Subject: Re: [PATCH RFC 05/14] dt-bindings/interrupt-controller: pdc: add SPI
 config register
To:     Lina Iyer <ilina@codeaurora.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Evan Green <evgreen@chromium.org>,
        Marc Zyngier <marc.zyngier@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        mkshah@codeaurora.org,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 29, 2019 at 8:47 PM Lina Iyer <ilina@codeaurora.org> wrote:

> +- qcom,scm-spi-cfg:
> +       Usage: optional
> +       Value type: <bool>
> +       Definition: Specifies if the SPI configuration registers have to be
> +                   written from the firmware.
> +
>  Example:
>
>         pdc: interrupt-controller@b220000 {
>                 compatible = "qcom,sdm845-pdc";
> -               reg = <0xb220000 0x30000>;
> +               reg = <0xb220000 0x30000>, <0x179900f0 0x60>;
>                 qcom,pdc-ranges = <0 512 94>, <94 641 15>, <115 662 7>;
>                 #interrupt-cells = <2>;
>                 interrupt-parent = <&intc>;
>                 interrupt-controller;
> +               qcom,scm-spi-cfg;

You can probably drop this bool if you just give names to the registers.

Like
reg = <0xb220000 0x30000>, <0x179900f0 0x60>;
reg-names = "gic", "pdc";

Then jus check explicitly for a "pdc" register and in that case
initialize the PDC.

Yours,
Linus Walleij
