Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF72359C924
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 21:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238665AbiHVTme (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 15:42:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237530AbiHVTmc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 15:42:32 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F09AB4A11A
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:42:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A82ADB815EB
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59F58C433C1
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661197349;
        bh=4Ea+SIwvaFr9VIGGAbqva4DTfOcSWIU0Cvl7rezXd14=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=OLPff+j7pDP0ZYuIaFJ8XfW6DCLhZ4ZYnpSOxWz8STtQ8t+MTUob7ulvKGNsNpT0e
         5fcF1TNObL8SaQCNlD7Bz8NDGItc+UvdPthUeV1Jo4pj5R9z/lhGxY5xmuThB0IKxb
         KBpF6sZQ+MqjV8rLQSAGaBYMPB3miH1nqDBFAI1nB0wMfhoIwnA55H1Szb9yXWy9Rz
         SOcI0MWHatdOkrvgLJCoo1w097iWX+C2l3qA9V54uJhiBZiazbLqZ+hI+VrULXt8PW
         RUHoHOJ1/IaOGC0+Romr5CaALQ3hb0GUNb/VbQPmMdAidqYGVvTSdmrxdyyRvmPzwO
         TfdYGF7Fb475A==
Received: by mail-ua1-f41.google.com with SMTP id t21so4763892uaq.3
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:42:29 -0700 (PDT)
X-Gm-Message-State: ACgBeo2L8lgYxrYI0/Grwk2REbq3tF6rvw+REIYpnp6dkaBIIzccsI/4
        +FiOHh5cb0vEXA9EGg2WvrjnU5ra3PwSj0Cz2Q==
X-Google-Smtp-Source: AA6agR4ZbJ+zZG/V52j2hD9uFCgGGzNgnU60nNVha22BCeztrJkeQkHLfk5iEyHF4xfAobLOsU97QqR0hoPQF3rMGIg=
X-Received: by 2002:ab0:4565:0:b0:395:b672:508 with SMTP id
 r92-20020ab04565000000b00395b6720508mr7802427uar.63.1661197348345; Mon, 22
 Aug 2022 12:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220822152224.507497-1-jean-philippe@linaro.org> <20220822152224.507497-2-jean-philippe@linaro.org>
In-Reply-To: <20220822152224.507497-2-jean-philippe@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Aug 2022 14:42:17 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJqdz_0orzbghq9_Ae9HhVwc6gYj7azxCwAcJRzYczhZg@mail.gmail.com>
Message-ID: <CAL_JsqJqdz_0orzbghq9_Ae9HhVwc6gYj7azxCwAcJRzYczhZg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: regulator: Fix qcom,spmi-regulator schema
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
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

On Mon, Aug 22, 2022 at 10:23 AM Jean-Philippe Brucker
<jean-philippe@linaro.org> wrote:
>
> The DT validator reports an error in the schema:
>
> Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml: ignoring, error in schema: patternProperties: ^(5vs[1-2]|(l|s)[1-9][0-9]?|lvs[1-3])$: properties
>
> Move the unevaluatedProperties statement out of the properties section
> to fix it.
>
> Fixes: 0b3bbd7646b0 ("regulator: qcom,spmi-regulator: Convert to dtschema")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  .../devicetree/bindings/regulator/qcom,spmi-regulator.yaml     | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
