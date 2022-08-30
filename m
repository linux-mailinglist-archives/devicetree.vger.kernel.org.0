Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CA4F5A63CA
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 14:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbiH3Mp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 08:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbiH3Mp5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 08:45:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6496792DA
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 05:45:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 72EF3616C0
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6CEBC433D7
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661863555;
        bh=/Hb7FdYgi7Goc3ySWuch/POlUgrl5YJZqDvJrljg0B4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=PKg4VKO7XCKAO0rDl0ZlYgkpe9QI53d+NejWBKxM2kdGVNUfpQLOnYBPZhAGZ68uS
         rtMynmocjetUiE5Fa1Gw6nyFX4rHeoj0hc3waUYCjEFljROQ5gF063U+VXtsRaJXOd
         7o5qDLTbdM6MecBDO8xviJ8KuFXfbDrq/gjhETP7ixqqi2IT8QsoqkfE9bOjjzOTTx
         4el2YDSIVfkD9Q35TivTefVYMYewE8Whd1S/Xrx0ODemUo4jR744U0jpJOe+CIQ75P
         9p0qfP0Wep4ZBBE9tDxUN4u9EORN/IDsAYROr8XNcXC58C2klKaXcSR5Hqp31RP+ek
         DbsFNBWAakb6Q==
Received: by mail-vs1-f42.google.com with SMTP id f185so6551083vsc.4
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 05:45:55 -0700 (PDT)
X-Gm-Message-State: ACgBeo2RQ5XRNyKoUcuBPVaVbIskzYdEuW9x28ZQCOiUuE45ahr1+svE
        hXGEP6dbX4JH7aFfQevQbDdyKpdFefjsG/tGsg==
X-Google-Smtp-Source: AA6agR4hrWIw0E12ixnE9zL6m58ol5UYMg4IW60grgUNPzGR9QprVbM7bjodlUFuGy4NE8R5h765w5qxzBcJ7EQxVtU=
X-Received: by 2002:a05:6102:15aa:b0:390:9b9b:f679 with SMTP id
 g42-20020a05610215aa00b003909b9bf679mr5080310vsv.34.1661863554743; Tue, 30
 Aug 2022 05:45:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220822152224.507497-1-jean-philippe@linaro.org>
 <20220822152224.507497-2-jean-philippe@linaro.org> <CAL_JsqJqdz_0orzbghq9_Ae9HhVwc6gYj7azxCwAcJRzYczhZg@mail.gmail.com>
In-Reply-To: <CAL_JsqJqdz_0orzbghq9_Ae9HhVwc6gYj7azxCwAcJRzYczhZg@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 30 Aug 2022 07:45:43 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK561G9Us+GUBu3y5Q50vQaW6YJBEgofsrdBPimZGMWeQ@mail.gmail.com>
Message-ID: <CAL_JsqK561G9Us+GUBu3y5Q50vQaW6YJBEgofsrdBPimZGMWeQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: regulator: Fix qcom,spmi-regulator schema
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Mark Brown <broonie@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 2:42 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Aug 22, 2022 at 10:23 AM Jean-Philippe Brucker
> <jean-philippe@linaro.org> wrote:
> >
> > The DT validator reports an error in the schema:
> >
> > Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml: ignoring, error in schema: patternProperties: ^(5vs[1-2]|(l|s)[1-9][0-9]?|lvs[1-3])$: properties
> >
> > Move the unevaluatedProperties statement out of the properties section
> > to fix it.
> >
> > Fixes: 0b3bbd7646b0 ("regulator: qcom,spmi-regulator: Convert to dtschema")
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >  .../devicetree/bindings/regulator/qcom,spmi-regulator.yaml     | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
>
> Reviewed-by: Rob Herring <robh@kernel.org>

You sent this to the wrong Mar[kc]. Can you resend it and also Cc LKML.

Rob
