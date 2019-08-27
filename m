Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2839DF08
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 09:48:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728726AbfH0Hs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 03:48:26 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:38700 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728803AbfH0Hs0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 03:48:26 -0400
Received: by mail-lf1-f66.google.com with SMTP id c12so3017327lfh.5
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 00:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aveC+J0Emg70L/B1CFCLvjS1bg6ZD6IQEoHlPzidU2A=;
        b=bW88/I9JXEKxT3chuNfwZrt8FeUG3zWSuZesoGgtpHpXTLtbJOFd/DU/mBh+W6VzSs
         by9Ao2XxYZ9uGyUmg0K8e53M3Yjs7NJ83vm5SaDncrWKNB9TqgHG22+Q0en4/i9wwH3x
         6PpT4b05IFeJWKYyyD2rVraNSspG3sv0/ZZfijfhd1RNco5hpGRnKqV5+N5yrdg25YgJ
         Bnb0WDlUcF0y5leW8CpioPlFc+sB5i6orfMKIUJ0/2PPla7H9UoWPpMlMW+SfRtEoKFo
         Xcj+RfMC7SQIPLPXDMkc8/XM8x18LlxuVRuYvC7023xhmnsoFHKXM6T9rABZhapzB5P0
         T3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aveC+J0Emg70L/B1CFCLvjS1bg6ZD6IQEoHlPzidU2A=;
        b=P1i4DzMfRlTv+nYRoC+i5GaOrkA5E59tFAA2g4a40j3F9O3lV+jithkzYkfTc8cVTa
         tGWK5pgIWnN6KYMamEoP3AOs24qGqJ+FDbRFR8vPCkIAlCD32QNejJaMJrCQVLmM5ZDX
         eE0xR+HgKHS9+D38l4GpZPsdg00OwNawWPwlMC6rD5EkzQNPg2HBK1XUDlstiRSBoFBj
         avXGe1tnKO0gWm5JnuOjGDBq4W/YJpbsVmcU0zMCd4QihMoO/D9olh68ffOEs5glqXzE
         2ysUMwZRhh6P9bZZP7fSubTMtAPBL5pjomhm/Ai+JI/iwlOaJ+bdEoVbxLuTbVjg7mzo
         /NxQ==
X-Gm-Message-State: APjAAAUDupzgxxjLdzpVgbo1l2D3rAcUMb8EcGQy1T8S2hMGQsUHESNG
        IItf+TcTIlxEbwu7X+pnCTffoxYRJsxW/xZ6FPQtaw==
X-Google-Smtp-Source: APXvYqy92ggM9A9QQ39Z/XAAwL5t1r1hkGmphw6DxMCCSZvgAh3WXo6lhfeAobnylDIIR5NiUXp+qWcOMrVSnuSl9Uc=
X-Received: by 2002:ac2:59d0:: with SMTP id x16mr14124035lfn.60.1566892103825;
 Tue, 27 Aug 2019 00:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com> <20190805101607.29811-2-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-2-miquel.raynal@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 27 Aug 2019 09:48:12 +0200
Message-ID: <CACRpkdbHvCUF1zkMUEcQJPmb=V8VudhU-JN+M0fRZ0tyA28Htw@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: mvebu: Add CP110 missing pin functionality
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
        Yan Markman <ymarkman@marvell.com>,
        Konstantin Porotchkin <kostap@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> Add missing definition for function 0xe on CP-110 MPP-62.
> The pin function is Data Strobe for SDIO interface.
>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch applied.

Yours,
Linus Walleij
