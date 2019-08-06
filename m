Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D47458396D
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 21:13:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbfHFTNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 15:13:10 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:46439 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725906AbfHFTNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 15:13:09 -0400
Received: by mail-oi1-f194.google.com with SMTP id 65so68213999oid.13
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 12:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vsIcnWtDlXQXoT39FUMhv6STy1MA/nY/7+ohKy0CG9I=;
        b=PCva78234+8dGi9ooJjncnPkATqM4ogU4wQtMcMIWoJUt7R0rmuGYbMZgwfY/eb1rF
         4UJlb14BQxeXW5sGBddhNuPu61eGczQj3Sw6GKvwg9dXI6UfTwzNIb52CLYwZsa2QhTE
         kioMu2NkoWQPeZ5h8Ni46UfBr3Qzjwj2p1N+8bhzyHxYVXzChoB08YZClubTddE8QViM
         qycF0pGtPJapJiluqp7F0iUh3q/T9vJ0gGI0/wuIFxXLBvMt4nPeutpI6YD/Co/a1RD+
         1aGXaEzAoUxF1D1NEWCLT1FtB/MsV+o4kmH89HEwYZOHFRHzuoyAvQ9S5YS7QRFWLuwC
         ZXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vsIcnWtDlXQXoT39FUMhv6STy1MA/nY/7+ohKy0CG9I=;
        b=oFjrdpugKdZmT6qIExZPyIhKwIphey0wdailvw9qs5JWbUNFpbEtJ9hTmIc3w/08DZ
         zpG0TOdPmOWaH6WpbNO5zzwuN5olwo9o+wjsu1DG5e4zdpJP0gNKEQrpwmK+wzxvOLda
         Cfqr9PSNVaP4z10RsGC3d3aA96Od5jYslEZSuQWsIpBmmU/vDlA3Ruk42cX0WluuCk8+
         1S2BN/rx06GrP0+6r7OyrO6+ZXvDE3Vgbw9u6CQjDN1T/f9pmEFSZeXywZgQITJ81Du0
         DR+4ROzlDxyAknLJYTYCpdm7nm1VJXRU8PJNqoLw90dQ/rbt5KrzGunfmmWWhAqEGyrS
         q5zg==
X-Gm-Message-State: APjAAAX+XRN7V+4mKr5mrZfyMxYwq5i/N5RHsJrbjei+VxQ4+NjDzEzR
        ouwP0kTdoc/Yn6ZqWW6san9ifz1r7wNcvS2wCVs=
X-Google-Smtp-Source: APXvYqx1iaCtx2l6jQ/ORnw89sfklYFDiCu3d3ftL/+v2VZsnJxN0/SkcNSl0A0A0nWT/bugr/Ie6vZfl4ZTkagSVMw=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr2858373oib.15.1565118788681;
 Tue, 06 Aug 2019 12:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com> <20190805120320.32282-5-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-5-narmstrong@baylibre.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Tue, 6 Aug 2019 21:12:57 +0200
Message-ID: <CAFBinCCiEX3m7E8FLwgKjpEvVC+zZOy0XBbaesuxSKZuQNxv4w@mail.gmail.com>
Subject: Re: [RFCv2 4/9] dt-bindings: reset: amlogic,meson-reset: convert to yaml
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, p.zabel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 2:06 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic Reset controller over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
