Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E45178271F
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 12:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234735AbjHUKdH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 06:33:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234730AbjHUKdG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 06:33:06 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40612EE
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 03:33:01 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d712d86eb96so2887274276.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 03:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692613980; x=1693218780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7QH95jHBqWIxVR7mqs55h58lm3p4pOggAhZ2D3QcTk=;
        b=TdgCCHiO/SMRYUmmZAwWaOlEn9JMUmZ7oWiflCO5R9riNIDEVrciC9kcnIqWLXtGTT
         fvvAUFCIw1idIS2wQuTK0f6XJk1S2XMAAZ3q3T9nqReYX4Xw7pHnF7xB6y3MryIw0jfc
         yUz0VXp0WPJcO+R8cQ9P0edkja2h/ZVjOTLcjOKyQwXfNuw8W5fmyuntWNggM9Gc1ch6
         R5zKgl9YHj9Jt83TTXYR8fBI2zSKjkD4iANk6erymz4GXAwGZaA4eAYAHCPEQmrDgawb
         XZ1Erafvly5jVIlGIne7jRDHo95CnI/D6l3LKqjpBm8rDpv/rUnhi3MDx3O/PurVh8w/
         hX1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692613980; x=1693218780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q7QH95jHBqWIxVR7mqs55h58lm3p4pOggAhZ2D3QcTk=;
        b=aefoXkkQFdGCJP+bySxXVm+OeMvGiVoZXPm6LUxAerwYdPFAIUOQwx2KtYpmf8kER4
         bn03EOdbUX7dNj4MArGEwtoH3l0qt2RrG61IpAByHlS7GTTctE14jea50DZ2F2ueVOrs
         vsuLq0cf0RjK2QfkIvre0jN2PaCRqlNRdzEWF1NRWkI7tAveWTpl0a9ThsFq3qelZon1
         IfLkQ6pCrQOTpz8GsBXQBu9kdOyG0E9I0wE6XAPok8U6pxll0VmjSvR5yvDOJQPpwvnK
         7PrrlzdYJ5+Qf3Ei+GU9puGJmZutkk7RJiri71dEr66uhlPGAuJUtac2iZAdwkxwJZLn
         kyIA==
X-Gm-Message-State: AOJu0YwVCsPTVm8Y0UabW5BDf6r/j1xR3DV8ln8swq/px9GOSFuYCI/v
        FNe47nytpFB5bA6viqAwcjFeFxsXqN5SbjEvem0qbw==
X-Google-Smtp-Source: AGHT+IGRl2mhuGTfCN/KF/Nitxl2U0XsRMCfNpgl5mhsl8YWXSW88C/b2vvv2xSAEAdreymTqTbpPxbQXvUgIewfCpI=
X-Received: by 2002:a25:bc8:0:b0:cec:81af:cf92 with SMTP id
 191-20020a250bc8000000b00cec81afcf92mr5694932ybl.36.1692613980506; Mon, 21
 Aug 2023 03:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230819010907.916061-1-robh@kernel.org>
In-Reply-To: <20230819010907.916061-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 21 Aug 2023 12:32:49 +0200
Message-ID: <CACRpkdZQVry-p90AZSfrJHJuscN3CuJU-ySKU2+zCHbVt-Z1Kg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Allow only defined pin mux
 node properties
To:     Rob Herring <robh@kernel.org>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org,
        openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 19, 2023 at 3:09=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:

> The Aspeed pinctrl bindings are missing an additionalProperties/
> unevaluatedProperties schemas on the child pin mux nodes which means any
> undefined properties are allowed. In addition, using
> 'additionalProperties' for child nodes with any name works better than a
> pattern matching everything with an if/then schema to select nodes only.
>
> With 'additionalProperties' added, 'pins' and 'bias-disable'
> properties need to be added as they were not defined. A $ref to
> pinmux-node.yaml which defines the common property types was also
> missing.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

> Really 'pins' should have some constraints, but I don't know what the
> possible values are. Happy to add if someone can tell me what.

Aspeed folks: put this on your TODO!

Yours,
Linus Walleij
