Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5369B54D371
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:15:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349711AbiFOVPN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:15:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345188AbiFOVPG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:15:06 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 418E95536A
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:15:05 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id w20so20776142lfa.11
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U4zrudTfpKSMt98XR2iufEyV1+uGBR6wStGeT3BqOFk=;
        b=iSjexz3mLcG79lRlUUZPUPkq8OBBprdOmNRAGkZEcmvAa4eQvTfbPk9WmCpbFPVpE/
         5IjIW1VvqnyWQIMo4gprntm+LphtyDdc7pa9pxQhRyYNbQ3sPypQpGvpVm2goTEqjXnD
         ZWIHzr9ALIdL8uSDepi8JGqdaUGJ9KO81GTDeglZtZzld+OdfsO6ivUoTALFkKTPaPle
         EBAdyCHjtkfqlSTu21w/CG11XS8bx7jqZO9mTphBt3RNJEys+Eq0Az+zPC92rLlqpnL4
         piH0IU2/m0Nc8T/9Edrwj9ROFMNSzW+SSvqduVjOVc0ysz3DV4UTT7udJAo7v4Z2HhU6
         Ud3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U4zrudTfpKSMt98XR2iufEyV1+uGBR6wStGeT3BqOFk=;
        b=TsZolgP0Q+GnCb2kQX/ASUZ371gOAgi4amxEZGVyn3jwTfbGU+dKyXTgftIAjrWYXG
         dP6hgacSB4XjFZ8rIShVH9ztNUIHjLYaruoCEILpjZv8dY4GcH6uwD9REge4kgfXevAS
         qNAuTmDQtcTHtY9q33uCBa0Wyl4jlZR2n0Q0mG5UTA2nQ8W2XGbAL1eQB3EES1o3I9D0
         Odu8asChFzQy+u2KuEL6A+NAdd9pRBg9n7f+QquM4hsWBzKI/zhYwZaL8+ATs9tkLW3z
         MrPz5CP1Ntz+5zv+wLxGctiYwMACvqZW6SnjYOl/EdRLeWH5n/pz1BiAWwPlW5RK8CzS
         LWyg==
X-Gm-Message-State: AJIora/bHdoXJpBspYylrKMQyeKBUhmAKVjLTPVpEGhN892ubeB+/ksi
        Wff4goxmNHLQEEzK8LDIZMGvWWtOZIllI8jxhn+Y8A==
X-Google-Smtp-Source: AGRyM1t5MyamwiCz7PoSdPQ8gjW8OM+EpbSRQMqDHUOoS9LUKaLFPkP4lLu+GObfpyOlL4mcqFgvi/WGO0uAYN5JDkg=
X-Received: by 2002:a05:6512:3085:b0:479:3986:1d23 with SMTP id
 z5-20020a056512308500b0047939861d23mr799565lfd.373.1655327703359; Wed, 15 Jun
 2022 14:15:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220609150851.23084-1-max.oss.09@gmail.com>
In-Reply-To: <20220609150851.23084-1-max.oss.09@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 15 Jun 2022 14:14:27 -0700
Message-ID: <CAPDyKFow5yxgCa-PTpNsiHzr3kCPCcOn-FVWdHCG9dx54cS=pA@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] power: domain: Add driver for a PM domain provider
 which controls
To:     Max Krummenacher <max.oss.09@gmail.com>
Cc:     max.krummenacher@toradex.com, linux-pm@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Mark Brown <broonie@kernel.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Kevin Hilman <khilman@kernel.org>,
        Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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

On Thu, 9 Jun 2022 at 08:09, Max Krummenacher <max.oss.09@gmail.com> wrote:
>
> From: Max Krummenacher <max.krummenacher@toradex.com>
>
> its power enable by using a regulator.
>
> The currently implemented PM domain providers are all specific to
> a particular system on chip.
>
> This series adds a PM domain provider driver which enables/disables
> a regulator to control its power state. Additionally, marked with RFC,
> it adds two commits which actually make use of the new driver to
> instantiate a power domain provider and have a number of power
> domain consumers use the power domain.
>
> The perceived use case is to control a common power domain used by
> several devices for which not all device drivers nessesarily have
> a means to control a regulator.
>
> It also handles the suspend / resume use case for such devices,
> the generic power domain framework will disable the domain once the
> last device has been suspend and will enable it again before resuming
> the first device.
>
> The generic power domain code handles a power domain consumer
> generically outside of the driver's code. (assuming the 'power-domains'
> property references exactly one power domain).
> This allows to use the "regulator-pm-pd" driver with an arbitrary
> device just by adding the 'power-domains' property to the devices
> device tree node. However the device's dt-bindings schema likely does
> not allow the property 'power-domains'.
> One way to solve this would be to allow 'power-domains' globally
> similarly how 'status' and other common properties are allowed as
> implicit properties.

I don't want to interrupt the discussion, but I still wanted to share
my overall thoughts around the suggested approach.

Rather than adding some new DT bindings and a new generic DT
compatible, I think the current power-domains bindings are sufficient
to describe these types of HWs.

To me, it looks rather like you are striving towards avoiding open
coding for power domain providers that make use of a regulator. Right?

To address that problem, I think a better option is to consider
introducing a helper library with a set of functions that can be used
by these types of power domain providers, in a way to simplify the
code.

[...]

Kind regards
Uffe
