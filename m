Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1161B9DF12
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 09:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728762AbfH0HuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 03:50:05 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:46221 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbfH0HuF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 03:50:05 -0400
Received: by mail-lf1-f68.google.com with SMTP id n19so14366367lfe.13
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 00:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S8ZPnzIzwp3dPl5EFI/1g9MYzH1aSuoZopYt/nP5q80=;
        b=YNYgBIyRPbSylY9yVS6fq7ufI5mIEOPQwSSIxhWCaFS6EppIOFX8+8R3WzVvbsdkTv
         0dWBrvkU8dkIYNTLDM2+P2zpmD8+2MUTxYM2RjmAc42BnPuE9BL/yzqmzDc3E8Gsjszv
         cWYnPdPljPLcBHEjO8obgZBS70w3HCWfiXX3HGC4cJjgpMtMuDJjpczks4lFG791PBtV
         OVukTj/HICDHCW/KSGHs8dxdAfWwx5Xk2wwm5oq4OgeRMFgsG0XIx6C80ajP5JtnKehu
         b/wAdpEeVxeMZBbi7rqbmOEshVQT9D38kWNcrF/+w+jQ9Qy2pagW/3OWXzrlaqjGcyhb
         c+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S8ZPnzIzwp3dPl5EFI/1g9MYzH1aSuoZopYt/nP5q80=;
        b=rKI2kzNzdE9nn9+AA9QoTjcwAYviosQK+Ubm72apsRbULyPn89AqYV6StV0AeEjz/q
         RSr+oMdyUI9DY2A+p+XQ3GrkwS3PJCYYuqsGJiepzJgL7ejUKaRqBH6a1o+9vDUSGXoQ
         FXaAc4LD2nbzmrEhKntheAVSbrnD8vC/h1hxjYDFHkpaAl9pbZl1vyho8JViY4Y299Ov
         ZKOF7ZQVvxwpCaR0b++T2mOnPVtqxdtBNaaRySVhfRG9yu1N/NmYURC0rfTTP1O7DSrJ
         PnFnKdmdWqc3B1icQiBtSk5EDjtdIh+ICuon9UwzIoYTH706qkCi6NdtiRuY9/Hgi5Il
         8ezw==
X-Gm-Message-State: APjAAAXAAqvPhA2qA7VF0dL8m2jI0r0JrEixZUyMR2i8NBqf4c0r9i1j
        Ay3EnVVVFd2cfzlcGkHzl3JwCX+CRinNBelyQ5aKog==
X-Google-Smtp-Source: APXvYqxQ5kTmN/fXTcZ+sapT/n4YUo9Fiby1B6bZg0qbOjRVjoB/nX0hNjZmjRwzPSP63fisdzPHEwGUuyid++LnJyU=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr13681194lfi.115.1566892202913;
 Tue, 27 Aug 2019 00:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com> <20190805101607.29811-4-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-4-miquel.raynal@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 27 Aug 2019 09:49:51 +0200
Message-ID: <CACRpkdbaQjPeDKhaP75aOGtnXEf6DVVmUAdxbAP8PLSAJPSdAQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] pinctrl: mvebu: add additional variant for standalone CP115
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
> With CP115 standalone modules, all MPP configuration are
> possible. Handle this new possibility thanks to the new
> "marvell,cp115-standalone-pinctrl" compatible property.
>
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> [<miquel.raynal@bootlin.com>: mention the new compatible in the
> commit log]
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch applied.

Yours,
Linus Walleij
