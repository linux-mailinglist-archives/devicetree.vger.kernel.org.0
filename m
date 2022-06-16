Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79AFA54E1F9
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 15:30:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiFPN3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 09:29:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231305AbiFPN3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 09:29:52 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA5C12ADF
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:29:51 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-2ef5380669cso13762267b3.9
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S4Rth2T8dY5O32h9DT2ztkebr91/U2eF/Sf0RxQK/FQ=;
        b=G10a5zdkOQdNTP0AbXjEj6kRfJFY2b6IvG1bgL75n9mc+TJdfZwMmtveVAjC4++975
         OubqAvI2DCGbh7pZMPqAZfSJWj7JS+XCC0bdm99zn4hhVYqWBd2whUKxDP78IxVcDnDH
         sFoPUQ2r6Z7o4+2ke3bBYqW8ozlObTsMAVqB2O2U8q+v6gh+gJrwnJU8XRbmJ7WImqLP
         PDagWx2QfGCMizzni9CLLSXiAxdFcEbuaK6U/IQoRqFkObWPu4rec0K1jiyYjHA/co4l
         KH5N0AuDpn8k+baLVP/79rQxke959qyd7KqnFulN5I8lVwgOrsfPcJsIZPTaKoRuvVA3
         TqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S4Rth2T8dY5O32h9DT2ztkebr91/U2eF/Sf0RxQK/FQ=;
        b=qV3/4Htuz6XYVzD2caiygBIM9IO7mQfFYlCXvmRl03qZICJDwT/5cx31rwu1/hzmaw
         DRox94JW5xGmLBNSnnVJqQ6uxfjM30i9XCQn+JZAv9/iDrFoM6haVrI9cmOOeND0CPTS
         Hn3D7e52nUrf4xCzZAZ0BWSp0XwYEbNX3nAtyLjVBT0CIUV6hmDidjlEfWjbikx5UDHr
         FBy8O78w/pmZrzs8p9OLdhEVzl4ccV7Stem9sxb6KSOZYIrcw5Wze4lhGAZ+ubOXSGI8
         vNq8tKoVCv2eAz3MhKyTYsgfTJVCyfOQsbE314GHh15+koX583BGmZDlUd6bjAXCV9U+
         lLAA==
X-Gm-Message-State: AJIora+avJCKmR+Z2SrC9hnSTN5ebi7TlSCf9eO3M/xE4ahCtHv7KyNs
        b9R4f5moZUXMWRWuud8aCr72Zkp0KUWE7JrDF6og+Q==
X-Google-Smtp-Source: AGRyM1uXkiUuSLdEs1ASKLxAXK6AYMSIEjGeNtbA1b/G6Effm6lpPwlZAq6cTbaG9DSHKdJ0ukrhCskqThLfiMIs5P0=
X-Received: by 2002:a81:1154:0:b0:2fe:d5a4:f26b with SMTP id
 81-20020a811154000000b002fed5a4f26bmr5792489ywr.140.1655386190157; Thu, 16
 Jun 2022 06:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220613145709.3729053-1-robh@kernel.org>
In-Reply-To: <20220613145709.3729053-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Jun 2022 15:29:39 +0200
Message-ID: <CACRpkdb6KCRfqOMEqm+9SfQORNwWPyWa7-XL1+n2BLr3MfDpRg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: Add Arm virtual platforms display
To:     Rob Herring <robh@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Liviu Dudau <Liviu.Dudau@arm.com>,
        Andre Przywara <andre.przywara@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 13, 2022 at 4:57 PM Rob Herring <robh@kernel.org> wrote:

> 'arm,rtsm-display' is a panel for Arm, Ltd. virtual platforms (e.g. FVP).
> The binding has been in use for a long time, but was never documented.
>
> Some users and an example have a 'panel-dpi' compatible, but that's not
> needed without a 'panel-timing' node which none of the users have since
> commit 928faf5e3e8d ("arm64: dts: fvp: Remove panel timings"). The
> example does have a 'panel-timing' node, but it should not for the
> same reasons the node was removed in the dts files. So update the
> example in arm,pl11x.yaml to match the schema.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Make arm,rtsm-display its own schema file instead of using
>    panel-simple.

Thanks for fixing this Rob!

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
