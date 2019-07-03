Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B660B5ECC9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:29:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726574AbfGCT3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:29:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:48026 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726473AbfGCT3l (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Jul 2019 15:29:41 -0400
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DE3A7218AD
        for <devicetree@vger.kernel.org>; Wed,  3 Jul 2019 19:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562182181;
        bh=hIPYB3ce0H+xDmhfFoBeCay5uQuElqa7Jy5Y17XiwL8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KGzLu8D1gDLkTtMQUhIzCm26RMORoByP+zQhksU9YmVwXIpMu0YOSakAcH+39zipU
         LPRMegVFN7/E8VgI+HWCVbMU6rAlb89va0je/2x2T2Fvoa9+OxhTTXcBmQFDtblN55
         71wXHQurdrkTvfGZRfjT6EDzcYtHAgzuNgOJUFGo=
Received: by mail-qk1-f171.google.com with SMTP id 201so1628415qkm.9
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 12:29:40 -0700 (PDT)
X-Gm-Message-State: APjAAAUelvIQMNsCgz/N0cBlgxohKkVYBYiA6UIQFAjKUQwrboRoaxJz
        kyB5RUIhOfgr8FkpKMWYkdLhXPCkyx87ILCByg==
X-Google-Smtp-Source: APXvYqxLdveaQlC+oMWA6I6GiA7QW5edrfo3SArGIl2+k4imUfqtHtgCvPSxie1gl1Qn2LsnQm8TwVtJFmlmVoVtifw=
X-Received: by 2002:a05:620a:1447:: with SMTP id i7mr32594588qkl.254.1562182180162;
 Wed, 03 Jul 2019 12:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190703095513.12340-1-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 3 Jul 2019 13:29:28 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJPojy3y5yMwEpE0y131SqbjPx9KetgmyfFdAb=d_Oebw@mail.gmail.com>
Message-ID: <CAL_JsqJPojy3y5yMwEpE0y131SqbjPx9KetgmyfFdAb=d_Oebw@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: net: mdio: Add a nodename pattern
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 3:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The node name of an MDIO controller should be MDIO. Let's add a rule for
> this.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/mdio.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Series applied. Thanks.

BTW, just some errors with Broadcom boards with the mdio schema.

Rob
