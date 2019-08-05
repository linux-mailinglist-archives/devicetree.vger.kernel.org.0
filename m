Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD7681579
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 11:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727328AbfHEJap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 05:30:45 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:44230 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726423AbfHEJap (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 05:30:45 -0400
Received: by mail-lf1-f65.google.com with SMTP id v16so3507285lfg.11
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 02:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2F9uPCRSmPiTo2hK4r/nBZb2ETnTkjzstupTkcKIfow=;
        b=t7U6r61gh2G+txxmAuRpaIMbfCPRaDMyyIO/DfFxxg+JtNnGBLZnUxPz1OT31MR8Ta
         u+bgHQQrsqGfkRbNhJKzPtenaidsGBnCiThyLb/tzDCpvLiVaH90rNOyUb/jua0ryyG+
         nV4IiAWVB2f+6NLuV/5aG0usZKw/35iQ1ehdXDFboqr9ZKKz1MWi+luLMSLdXOZbFmXl
         8UtI6s3GxdQ+zbEt7opMRSYufzsClWfsWpvLl3KSpb997MD0EBvKNNuqkW3X/eYjtj+Y
         IulB2m4FlF2d7DwCcYEvXhSTTA1xAcZw6ZaYLGTBZtEJLhQRfIwYKHJzat/TMsiluHdf
         AQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2F9uPCRSmPiTo2hK4r/nBZb2ETnTkjzstupTkcKIfow=;
        b=nUUZOH7sYneEIX0nCGnKoTZhlqwkgWt/mWh77nC9RXHXR2ball6/lhCDUl5jTSk+vf
         GyQqWPx2EJtszc9SRvPZpn/AkrYyfhS7xB89Yq7f1EXuQG2+TJRle/sC36414Zhx2/Ui
         CuU/DWmAvjySnBKmdMTbmTPykGEGAibEUFnSQSe0DuojG/wA57nJdrLsnsqoVnVX6VAV
         RNzwtlE5862IuDb1SLvki1w+2Im3qw4pq+bYore9/YCz2IsfX+U3UGN2cjLjKDs3AO9g
         47ZwYTcaBiaS9JiHDlEc96+CvH61xz8gBW0ErAfp2yKsHZ1ph5xiNJst6dchQ38fN5Y5
         L3Rg==
X-Gm-Message-State: APjAAAUjV/AOwOOzD/B53KYUjv6NtxcAv/x+jfpYJC9BrM8Yeq3lFy2u
        3J08tv0GvQK8/v46dnuZl0ZOCWkVYZpfDUsRVkA0vQ==
X-Google-Smtp-Source: APXvYqz7JBE9oQJCNW1UI+7INxOFq+v6UPMn9y4R/8owWAYGv9h3lldCN/2lgwanhTATZmfTmuSrRDYfei2zMsXMHWs=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68650031lfh.92.1564997443136;
 Mon, 05 Aug 2019 02:30:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net> <1563776607-8368-2-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563776607-8368-2-git-send-email-wahrenst@gmx.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 11:30:31 +0200
Message-ID: <CACRpkdYN249RE+=MpKz0X6Y9rX=hMQHPQmou6EMdCkO-m2LsDQ@mail.gmail.com>
Subject: Re: [PATCH 11/18] dt-bindings: pinctrl: bcm2835: Add brcm,bcm2711 compatible
To:     Stefan Wahren <wahrenst@gmx.net>
Cc:     Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Matthias Brugger <mbrugger@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 8:23 AM Stefan Wahren <wahrenst@gmx.net> wrote:

> Add a new compatible for the BCM2711.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
(...)
> +  "brcm,bcm2711-gpio" - BCM2711 compatible pinctrl

Completely uncontroversial so patch applied.

Yours,
Linus Walleij
