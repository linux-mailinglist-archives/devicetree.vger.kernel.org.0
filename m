Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5ECD97FEF
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 18:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728481AbfHUQXc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 12:23:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:51846 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726857AbfHUQXb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 12:23:31 -0400
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C9B6522DA7
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 16:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566404610;
        bh=Fu6zfOBX3AI5KWtTSZafuQQAF8bGSK3gF/is0kKpuAY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=EXSAnRTsFyt636veuN7y3dcdM14MYPogEK42gLTn6TVUoAnELfOOq5OOjQ0xOtDAy
         jEb3tu8xEBFiv29JH2m786j89ZQOK24emPViB6cAZ27SrybQ8J+RSAxzATOq6A8OLP
         EZ4l62u174ej53LeBy5vGlPTEVC/qfGMZ4N7vPQw=
Received: by mail-qk1-f171.google.com with SMTP id u190so2352529qkh.5
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 09:23:30 -0700 (PDT)
X-Gm-Message-State: APjAAAU2Ax75b1zIl7NZl1qHqs5tzXVWPxQGkuqsYgx4t9yY12cnPvMp
        Lqz803lCyFV6xit8017Pegi2Iv0vUUQYP/NLTg==
X-Google-Smtp-Source: APXvYqx7jliLwl32fZb5QjZU335HexP3hY8IwcnBzHIqSH45RRHoAYAe7+oJIjM94Ra+S4ayKwHMV4e1XUsgY6mOtIk=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr31383435qkn.254.1566404610034;
 Wed, 21 Aug 2019 09:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190821055530.8720-1-joel@jms.id.au> <20190821055530.8720-2-joel@jms.id.au>
In-Reply-To: <20190821055530.8720-2-joel@jms.id.au>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 21 Aug 2019 11:23:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKXUsBdZ3x+zsJdn-2yLEJSCvLFjtUdRzUwU1vi6iiHfQ@mail.gmail.com>
Message-ID: <CAL_JsqKXUsBdZ3x+zsJdn-2yLEJSCvLFjtUdRzUwU1vi6iiHfQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: arm: cpus: Add ASPEED SMP
To:     Joel Stanley <joel@jms.id.au>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 21, 2019 at 12:55 AM Joel Stanley <joel@jms.id.au> wrote:
>
> The AST2600 SoC contains two CPUs and requires the operating system to
> bring the second one out of firmware.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>
