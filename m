Return-Path: <devicetree+bounces-453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 061FF7A193C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:54:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B27892826F8
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224C9D528;
	Fri, 15 Sep 2023 08:54:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E893C05
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:54:06 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B6592718
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:54:04 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d7f0048b042so1883502276.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694768043; x=1695372843; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozcR6ThzA7QtjFN0NTilMZpZlXZ4jUHDhIN9Pty4pME=;
        b=RdIFaPK6WXMA8NxoD/9rlB1kdvCV4zQZGOGc4ucqHpLktM3oMaUzdTegoRjCguHMUv
         hmbeN3hfzNWn7mP0iwOmit/5EA6low25RbjG6avZ0mcbM19iTa97ayLw2KEYEK/FIYeB
         0aBQqdtLcqG57CdfNKt9bKmX7rSq13R5OX/1y2jM834ZNux79R/mI9rg6uQNjurSpeDL
         6SM7K2RfasPQ4lxZ3wCeMqzuPXObIwRNcosrRajGTkhq6bWmwLIn+V7xmpP589EjN2mM
         h47f+VjcUlxQ6BMjRW6dQ9aZonuu3WmpuWwKIElNuCi0JNqKK2qgB7tn4L86mjSwMITU
         9Ovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694768043; x=1695372843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ozcR6ThzA7QtjFN0NTilMZpZlXZ4jUHDhIN9Pty4pME=;
        b=OgAHedKRAE/vhxBaUMJIuFPEw3CuySFHBMTyPBDQyqUwUY1XFgzCl7fxaF4fTQWOAC
         saLNZkTiTsOGZR1RhoyK7hzmXLTed+NTLZUh/cPaTJLS9JXJtZOZUfSyK7OrVCYYjJle
         94UGi4ZBgw5S5QBPcJUAufAFMBJ6lDmiA2jM5x5mKspolrG3k0RkXb48iq6Wt3rjNlb9
         WI+kFtnPqE8Dz2O7YMYzBRwtUw3fwZtg91UfStsfeWad7uJCqWKKQMjfD5dpqLZ7+2jp
         jByKOfGAsEurQxmgRZ/IEQS47InGmKUXJIF3q8K8iWijXaeGLP2f+JEGxWf+9+gDYDYk
         sOHA==
X-Gm-Message-State: AOJu0Yz3MFoWQ8gkf1zGWMCwv4utg86fWx3m1s8hi2dns/iOgMN6f0FT
	aXj9RvR2BcITwy6yUZP/GiWojA2cdmKNCI1inDsYww==
X-Google-Smtp-Source: AGHT+IE5GD6AR8wXJRyVCK8a8mpKDMVIWfxvb3VIxHpflBqUfMn3LyR3kah62SgEc2uR8Mpi15pSDhj55sdCR0ytQ7s=
X-Received: by 2002:a25:9087:0:b0:d81:3e64:f649 with SMTP id
 t7-20020a259087000000b00d813e64f649mr868400ybl.7.1694768043606; Fri, 15 Sep
 2023 01:54:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230914190033.1852600-1-robh@kernel.org>
In-Reply-To: <20230914190033.1852600-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 15 Sep 2023 10:53:52 +0200
Message-ID: <CACRpkdYjhwEtYdCF=Wd=oco4fnm0bOLFsQwjUYfZA3ZzK9FFOw@mail.gmail.com>
Subject: Re: [PATCH] spi: dt-bindings: arm,pl022: Move child node properties
 to separate schema
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 14, 2023 at 9:00=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> In order to validate SPI peripherals, SPI controller-specific child node
> properties need to be in a separate schema, spi-peripheral-props.yaml,
> which SPI peripheral schemas reference. Move the arm,pl022 child
> properties to their own schema file and add a $ref in
> spi-peripheral-props.yaml.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

That makes a lot of sense. Thanks Rob!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

