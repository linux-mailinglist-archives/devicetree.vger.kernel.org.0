Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB5EE66429E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:59:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233241AbjAJN7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:59:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238788AbjAJN6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:58:47 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BEF6251
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:58:32 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id 16so11887426ybc.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFZwRY6uBLBZuERv09QJDFRGTgg+VDphnUtXg9PxNVs=;
        b=dl1jEucuqI5UQ9nBOsumkthDB4PfRmN3wVSlcmlvbjubyaXxhwoQ7Exr6BgRMLd3Yo
         P0sufSV6uSsrNZD49qZPiPEnlGyGxMNqEZrgNsnyKlOYRdG6DdsMn7Lfg0JybwCZj0vi
         MyIqe543F2JLZt0XdMGGP4/ox3OeZqQUmQTVSMB5Q778gXqGTJAWY2SVpZ5lMspwnfNz
         vigfWaQcd9yxjRSF2feHGUfQZPA1naqqYrUl/uzEAwoCcxqiFFEVAWeleDuNEoqxwWre
         3s07ItqpkVuBScfPpaZpgKfi7qbEYt17ypOVoxxHKyqZKRFHbhSlqyktHV/Yh3L+1siH
         E4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFZwRY6uBLBZuERv09QJDFRGTgg+VDphnUtXg9PxNVs=;
        b=UjNqBJChpf0iu3Bqi+nex159tyaJgBu8a66BU4c3LgKLk89yx9iGoo0lcdJjCsoeaj
         +tu2B/w5NeJ1A9CKnfqtRJkTGIDbBpIgdEo3WKi8vDqo+vI+0QaWnCfeN5/mL/brPfmz
         56dmeYmYJxi5xh2c93VQ7VjcHClH8zBMbJzIMCtdfWcBPgE2ygzunVg5RTAxHDVWI8+j
         MraLvmfdzxyeh3q9J5fACWISVnf5fDU3TVjpAGwXB9i7dC7zAPLEYHOC9DyM7bpLGkBF
         UMRHWJLyp1l+XMIQILtldc4jcW99wXBcNtXvmJz7WgJ7XpeVmaQX7raBf4sOsKOdvQdO
         rAgg==
X-Gm-Message-State: AFqh2kodFqoKXIgTe5ZUX4Xa0xA+8IuL1JtZCBCr0VYH0nfs7oGuku/6
        JiOhrNck0haghmYLzIq563SPlPMJPorwN5eFrm6vAw==
X-Google-Smtp-Source: AMrXdXtOECa1Nex6QNZ4s6NPdbEMGaCsgxgZn2oFye7UY6Yw2EAr94MI/GfGgzcchhu1QTDe4tNi6+wPyE/Ue6w6WxI=
X-Received: by 2002:a25:606:0:b0:709:9335:236e with SMTP id
 6-20020a250606000000b007099335236emr6135998ybg.288.1673359112123; Tue, 10 Jan
 2023 05:58:32 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-5-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-5-sebastian.reichel@collabora.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 10 Jan 2023 19:28:21 +0530
Message-ID: <CA+VMnFy3CbspUFwGv9VGuDPE3ffNJFj1fwH-1qkhMX0rWgYbwg@mail.gmail.com>
Subject: Re: [PATCHv8 4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Christopher Obbard <chris.obbard@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Add DT binding documentation for the Rockchip RK3588 EVB1,
> Radxa Rock 5 Model A and B.
>
> Co-Developed-by: Christopher Obbard <chris.obbard@collabora.com>
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Reviewed-by: Jagan Teki <jagan@edgeble.ai>
