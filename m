Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA10CC054
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 18:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389835AbfJDQNp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 12:13:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:44324 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389131AbfJDQNp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Oct 2019 12:13:45 -0400
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 49F02222BE
        for <devicetree@vger.kernel.org>; Fri,  4 Oct 2019 16:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570205624;
        bh=RcUOAl/0bmKCUXPftGv1Cq5XeNJkArov671bGsF0D4Q=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=TkIER9/mq7QtDrLA9SVkm9Qg2CxdZl1v+WKEBDLwccGyyuOUSuuREjTQlxmroLSWm
         jRFkkTWi+2a87F5v6IgeprVzFyHa4s/uiXLxUF/uWsRIbw3HNgTmMSd1e8bwbos3V/
         La6s4tk94D2cCEn7S4P/ByPazvltJr+prGFifUnM=
Received: by mail-qk1-f172.google.com with SMTP id y189so6320821qkc.3
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 09:13:44 -0700 (PDT)
X-Gm-Message-State: APjAAAU8VTagX76B1cT0gGDzMpQD1D8acRwZsqRrjyZGl+BouKVuMand
        G5iIaHW5R15v3skHOquPdK1jxctArMX6wfe93g==
X-Google-Smtp-Source: APXvYqziBbzyphZ1ke4M8acNOI/Px+d5v/VwBWzkL8PUPgDob5UN4SJAXMiBPIMUZIJikf/IUTuIwa+FGrVKl9gAX+8=
X-Received: by 2002:a05:620a:12d5:: with SMTP id e21mr10962435qkl.152.1570205623412;
 Fri, 04 Oct 2019 09:13:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191004142738.7370-1-miquel.raynal@bootlin.com> <20191004142738.7370-17-miquel.raynal@bootlin.com>
In-Reply-To: <20191004142738.7370-17-miquel.raynal@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 4 Oct 2019 11:13:32 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK4cbzOfaw5XCOdmP38w2n_djnJ6PaUTR=2Hi-rfOF=sg@mail.gmail.com>
Message-ID: <CAL_JsqK4cbzOfaw5XCOdmP38w2n_djnJ6PaUTR=2Hi-rfOF=sg@mail.gmail.com>
Subject: Re: [PATCH v2 16/21] dt-bindings: marvell: Convert the SoC
 compatibles description to YAML
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 4, 2019 at 9:28 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Convert the file detailing Marvell EBU compatibles to json-schema.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.txt     | 24 -----------
>  .../bindings/arm/marvell/armada-7k-8k.yaml    | 40 +++++++++++++++++++
>  2 files changed, 40 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
