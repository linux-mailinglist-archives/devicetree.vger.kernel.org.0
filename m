Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 924DB754BD7
	for <lists+devicetree@lfdr.de>; Sat, 15 Jul 2023 21:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbjGOTt4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jul 2023 15:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbjGOTtz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jul 2023 15:49:55 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDDE6E5C
        for <devicetree@vger.kernel.org>; Sat, 15 Jul 2023 12:49:54 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5768a7e3adbso63889127b3.0
        for <devicetree@vger.kernel.org>; Sat, 15 Jul 2023 12:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689450594; x=1692042594;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2yEv6eKAuSe0Kz+0k8MmuU8ikB8Aj5bM/CELpHQ0gMM=;
        b=wYv+ZsaTaEP2A45rv1sjNOeHYAFX2V0lVgEyE07Ojf6YAntYV0YxIwcZgZQ7u+0os3
         UKm6yT3m/YgrqDsFcgGd+XE/cnUs3fa3sNGaUepi+7z89dAwLGd5aM82qa4azsAuqutb
         hUtKd5pQPj9lJ/uBRW7c188TFADSyr5OQlKUZlVD3wRfHhZs7mqXSEwbnmmQK4ZVDMSf
         94q54nBE5JsAa3nEoodOwy/KE430zsTqvO4RiyRCRpUU5Tug6ww42eekYYJzC/4za8mC
         YmQJ12Bnt8pbzEVelvSL9wo/W81t/XB/0uUea0OYK+t5TqypS8LsfKGrpQFaaQziN+wS
         QbIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689450594; x=1692042594;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2yEv6eKAuSe0Kz+0k8MmuU8ikB8Aj5bM/CELpHQ0gMM=;
        b=lY5STMEia9+Vqx5BU/Hl11ZakAQD3Q7fO3VwOrPoRFVHLJ4wxy/r/6eolULDQW+JSN
         HD4HPGyXJUKh6C85s52mIAcLWu6aABxfghL+rLKZnSqkR5vazJWrkuaqL1bUl46sdKpZ
         SqAL6Adp0ZKG8GLjPV5UXIQFPXD0yWO836fxNUA3ulP3fGO04WyqPvq2gwk+Dv+/3VKu
         uUJuTq9R5iJwDSCqew2KhlYTE19Q0J5T1GWBNwjsKDY604ydu09m1CwSvSW3ouDnw/xR
         hNO/IQqEuIT+dFzNfVQ1XW0KpmiBVABF+EzpaOUHUYOCibtFsz4kkL5gWszFt07OGxB/
         ythQ==
X-Gm-Message-State: ABy/qLZKc+x4bdCi5lbMpfvRPa1ieiCt/9sWeF4gKK2O22QmPcUs724Q
        hdd8AhCfelyux6f8FN0riCod6ar30vWUDSQDTZepLg==
X-Google-Smtp-Source: APBJJlHDX1l/02CkrPB4AA+mf1Cf9BnpPzp8eeatR/+0KdBd23LlTWLRqBFXzkUgceXyN3+q+M2QVQIfXwJjTJmfsD8=
X-Received: by 2002:a0d:e645:0:b0:579:e6e4:a165 with SMTP id
 p66-20020a0de645000000b00579e6e4a165mr6926436ywe.10.1689450594020; Sat, 15
 Jul 2023 12:49:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230713002519.109392-1-david@ixit.cz>
In-Reply-To: <20230713002519.109392-1-david@ixit.cz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 15 Jul 2023 21:49:42 +0200
Message-ID: <CACRpkdY8LqRsjSbHX+fPhUrCswOHYiOHuGovCbVz6=LjFtG6iQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: extcon: extcon-usb-gpio: convert to yaml format
To:     David Heidelberg <david@ixit.cz>, Rob Herring <robh+dt@kernel.org>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 13, 2023 at 2:25=E2=80=AFAM David Heidelberg <david@ixit.cz> wr=
ote:

> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>

I don't see why I should be listed for this? I have nothing to
do with it, I think.

On the topic:
Can't this just reuse Rob's excellent binding in
Documentation/devicetree/bindings/connector/usb-connector.yaml
just add id-gpios to it and list const: linux,extcon-usb-gpio as a
deprecated compatible.

(Then we should make the Linux driver probe from the existing
and better compatibles from that file, but it's a whole other issue.)

Yours,
Linus Walleij
