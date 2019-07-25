Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 857C5754AD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 18:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729633AbfGYQxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 12:53:38 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:42387 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729083AbfGYQxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 12:53:37 -0400
Received: by mail-io1-f68.google.com with SMTP id e20so68301451iob.9
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kolA9oGTMt2kJuYg8zC6oRG5UHIMOnhc3kiBOYsRrZA=;
        b=IPSevJy2liwkLBHgCIP++Od2vm8pxaK7qAFqKLBz212Z655uA/9ROOg+s5IaImVzfs
         mp32U3H4iTgV7TrIOZ+ToG924T9y/qluKpRZOuijot3YOobPniwSFgN0j+k3iBv5Ur+V
         vqSmZD4y6I1UTcz6Rz2aS0nGWj9Ge5ijQbM4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kolA9oGTMt2kJuYg8zC6oRG5UHIMOnhc3kiBOYsRrZA=;
        b=gmPcqamWJZkbRcV6yvl9ixaBW12jkqmBruk8lUf3+fxU85v4rjKGrD1xd/44JDjSLD
         nju2K9xJNynJ54ZNQ0eqycfTJZiQpenObDrRns1PmsTsws7ZtulvgnUlY+V58KnquWsM
         W95s7Uy9oAgb0QbdLnqLRhdOX6GNApQ45p2wut46t38QdZySecDg0WnJi8/XzRMdfiIv
         BnPrOnJSd/fnof4a89U+MOCE1s9rcfSgoH2yCptibvoJVjvyiL6pWRLVFQIu86d7Ij/r
         CNlWv/4T8saCqYkNupP6Hd9Wiw/zi9MvfAWU63ZG4nx7zcwMCeRo8GY9Nubb0eJVSA8Z
         xH+g==
X-Gm-Message-State: APjAAAXHDog7HkssEsxwP6xNZW4zjVIutdxtYX17wEN8hB+0V6iA346k
        qaPimhK8bk9/CcT7H26bF1US3HCiWhk=
X-Google-Smtp-Source: APXvYqwrE/ZQ868QTfZFMf54lUAYn6/pjKk61ZSG32v0zFcvi5OHz6EWC/nvC80WgEwqgq/W8gmE4Q==
X-Received: by 2002:a5e:c302:: with SMTP id a2mr73459361iok.62.1564073616557;
        Thu, 25 Jul 2019 09:53:36 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id a7sm39789501iok.19.2019.07.25.09.53.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:53:36 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id k8so98747792iot.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:53:35 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr77963588iop.58.1564073615649;
 Thu, 25 Jul 2019 09:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190725162642.250709-1-mka@chromium.org> <20190725162642.250709-4-mka@chromium.org>
In-Reply-To: <20190725162642.250709-4-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 Jul 2019 09:53:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZur9gPvUnRtdwieqkjMxx1nOabaRXjMsQ7hZwgNVE5Q@mail.gmail.com>
Message-ID: <CAD=FV=VZur9gPvUnRtdwieqkjMxx1nOabaRXjMsQ7hZwgNVE5Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for rk3288-veyron-{fievel,tiger}
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 25, 2019 at 9:27 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
> touchscreen. Tiger and Fievel are based on the same board.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - patch added to the series
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
