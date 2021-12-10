Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AA3446F8A5
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 02:43:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233609AbhLJBqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 20:46:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233599AbhLJBqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 20:46:39 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FB67C0617A1
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 17:43:05 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id w5-20020a4a2745000000b002c2649b8d5fso2088442oow.10
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 17:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vNt01PgNPd3YSDPf1qGCkNvtxUggbk+ibJ1UrH7sY3g=;
        b=oTUB7o5tEgUiCdAFBlzj2EI+58ktxVJmCb0G36bbXEX19M223b7F9czGwGQuIkEXrO
         /TuutKs1GOi25EWlbWKDBRrKgFvBeqz7X/KTB7MYr/tNcuBSxkBBPAWzOUm9Pk2CKL/o
         XIaO9HKkCfY2rfC/k3re6N/gabMUvctpopS2uTLIAChAnV55LjGd7ApAVaw7vv2AR2RC
         7RbyV+0cL1l5052RKY2LnNcge64lHUh0q7jeySprTvSt71Wp/hPBm5w6SlEzR2w2DRFh
         q+9Y+pLE9mPSyL5yyxbdwmNhahPrLKgehKvNDnqFHhPc3xoofrgYhEaIrnAiG/B25AMg
         wEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vNt01PgNPd3YSDPf1qGCkNvtxUggbk+ibJ1UrH7sY3g=;
        b=4kn6EBNvXz4/olC7H/MVBCOoVsJNBW59/b1MF4j6/1QfZ17Y53FF7kLJxgCcE6KMVY
         5Fxj5w+Z7P/Qu87+Mu88snBCpC0nhRac1wRWFF9rrqb8JA1WoS9S8FttuLnIAbik/wo8
         c6zaYCHW7Oy4aQkOMWHm5HVD0Bl2JWe42U3avBWXeCvarWAhjKyjnconawhE+8A2WRin
         ct+V188NzhUAbTotBV0kH+4KIaZIY7J5KJ5JuVLL/ZuAjqQ9B/E0vvUjckEcqMupDlls
         icg1NTt+Up5h4Tqop8VYmeFP7HpXk/ygjLykh39HN9nqO1ykguZI4YIXFzXx+PVXlZK8
         0+zA==
X-Gm-Message-State: AOAM532UBefxcYyytAa0rB30aRjZhIkWNa4Qqd5EcxgmXLdnA0XybpLn
        p9NN7vRwHEggnHmt+q3ElSNCahSHNUDR06GoIpsHzZ101Y0=
X-Google-Smtp-Source: ABdhPJy7sYPUI5H7vA+hj84AaMMHAMzrvQz8iXXHhrZzqnNVH23YiTM2mUfm1+Oa9j7y73v/T2CtSIwffTt6nWKZuDs=
X-Received: by 2002:a4a:8515:: with SMTP id k21mr6564505ooh.71.1639100584964;
 Thu, 09 Dec 2021 17:43:04 -0800 (PST)
MIME-Version: 1.0
References: <20211207210823.1975632-1-j.neuschaefer@gmx.net> <20211207210823.1975632-7-j.neuschaefer@gmx.net>
In-Reply-To: <20211207210823.1975632-7-j.neuschaefer@gmx.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Dec 2021 02:42:53 +0100
Message-ID: <CACRpkdb_i4H5+hWTrQQ4KkOaATDHb-Xi-dQ5+SM0jpe+zYJsqw@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] ARM: dts: wpcm450: Add pinctrl and GPIO nodes
To:     =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, openbmc@lists.ozlabs.org,
        Tomer Maimon <tmaimon77@gmail.com>,
        Joel Stanley <joel@jms.id.au>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 7, 2021 at 10:08 PM Jonathan Neusch=C3=A4fer
<j.neuschaefer@gmx.net> wrote:

> This patch adds the pin controller and GPIO banks to the devicetree for t=
he
> WPCM450 SoC.
>
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>

This looks good.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
