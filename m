Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7789F9E728
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 13:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbfH0LzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 07:55:23 -0400
Received: from mail.kernel.org ([198.145.29.99]:60364 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725850AbfH0LzX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Aug 2019 07:55:23 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5C5C821883
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566906922;
        bh=JiIH7GvJBqIxLgHBqdAcR6l0tLEHUHaDAkOIev7Itr0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=trzMOQh6oZRO2pC2WPUJO+UAuISCDB3Ul+ISna6+GjiF9AQ0VsBlOswIOikqm5YJo
         trwRBjITsBFlMVOKWXfbbnofPrPCqHnrclSmJ911WA80Bi50zHu6WEz1JrMGVMcArq
         ZX8WplDbV4CvWTmuPgkFgxyf8L0B5KpP96g69Dl0=
Received: by mail-qt1-f181.google.com with SMTP id l9so20935860qtu.6
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 04:55:22 -0700 (PDT)
X-Gm-Message-State: APjAAAUBnkRLSNTAufPHWfzhF7p1mLn44SCzBvdLJltJOFiV4+qiaX31
        gKDK/BxRE7ft33EUWzHSOQf9EoYTUFhkw3jpmQ==
X-Google-Smtp-Source: APXvYqxCV/v7Inh8wWhYTUZAYGrC60mkBp9+b9uV5KJfPw0V8JXBVd0Ry8xbsYF6Er9EbPJLQGadfPnHe8X09KiOeQA=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr22131243qto.224.1566906921516;
 Tue, 27 Aug 2019 04:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190821195217.4166-1-sunil@medhas.org> <20190821195217.4166-2-sunil@medhas.org>
In-Reply-To: <20190821195217.4166-2-sunil@medhas.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 27 Aug 2019 06:55:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKLLUX+CZOuBWqxB3UZv7uY74snqqz8fHPqnw4Zrz-p0A@mail.gmail.com>
Message-ID: <CAL_JsqKLLUX+CZOuBWqxB3UZv7uY74snqqz8fHPqnw4Zrz-p0A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: sunxi: Add compatible for A64
 OlinuXino with eMMC
To:     Sunil Mohan Adapa <sunil@medhas.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 21, 2019 at 2:53 PM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>
> A64 OLinuXino board from Olimex has three variants with onboard eMMC:
> A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
> addition, there are two variants without eMMC. One without eMMC and one with SPI
> flash. This suggests the need for separate device tree for the three eMMC
> variants.
>
> Add new compatible string to the bindings documentation for the A64 OlinuXino
> board variant with on-board eMMC.
>
> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>
