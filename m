Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9485062D59C
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 09:57:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239635AbiKQI5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 03:57:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239504AbiKQI5C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 03:57:02 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B391C742E3
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 00:57:00 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id t25so3357934ejb.8
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 00:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SeApCFj63aQwxHKSi25tdgf7E0/rMGNESKYxLsFqjeI=;
        b=DIl45lRzv6JuWxa/tm7EfBn1krGYmnE+7rDk6ABGaT1oukMRkiZcJbaVPzvpDs9h2O
         ne9IGtFtQ7+vexoesrAoxkWKbYMu3IJTL60J2MqTodSw7hVVTfIKLOPXRunLg3HiqzIt
         1Rxh4Zj/lUO/qEbUTNxEbH37zvQcTuNFmkAqQnsE078qz0bmdblurrjmIZ0NusWGOTWW
         Y1wN393Z45sV1vBtrr+skiyeLZmRb6m2MVlnJn0M9k7PZNxT5IsaiRMOLeI6jAc/STVZ
         FwFJ7JWuSdBDhUP1iEElqAmFiTil/9ZdJI8qCc8i2qevymtLTp2WZzbA/zadY3TgaYNj
         d5wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SeApCFj63aQwxHKSi25tdgf7E0/rMGNESKYxLsFqjeI=;
        b=7lhscEcqjqil7NW+XubS2E7VQ1rNq3HqLyLjVT+EfmL2Nylg/8zX+pgzaf+hmahf3M
         vvV5a4XtyZO4jNRn5z9Sz1sfDA61KsSvpEoJNrXNmsV6gubuP/pWdvM/lBCE6uuNtAl2
         jvED/x5NK0+mcpsTjCotvA2/rrgUy5duasNqR0LduFiVESMRv70e7MggJFEFiCgzev9F
         r5YYpMWFUFPUHRKeeXzAodSzITHq/8Nf0VZy+FV1Lm9jqmeVo9Otf7z84bHfBHXveawp
         +tIDYcMwl560fBj8v3hmU4mc6CgF/OOHc5sksH5P3kHFs1G5b+7TB4zz+IXARGgYhyKM
         JM5Q==
X-Gm-Message-State: ANoB5pmhTgOpfmrXS5DYmqW0UUJ/j9I0nHcC+PGn/a8twnuAb5vJ5ak3
        SYrktziBUdqQWmB7Xq+bN6fmVUG3ooRRSiILnveFqg==
X-Google-Smtp-Source: AA0mqf7rU+dXTwN3jSzBosObZDYXrJK1CUa8WONpeBqxR2oWdncEgtNUGXM/hlvzsftBuYVOMcCNAHRK1qXETN3lEH4=
X-Received: by 2002:a17:906:ce35:b0:7ae:215:2dd5 with SMTP id
 sd21-20020a170906ce3500b007ae02152dd5mr1358583ejb.208.1668675419254; Thu, 17
 Nov 2022 00:56:59 -0800 (PST)
MIME-Version: 1.0
References: <20221005-mdm9615-sx1509q-yaml-v3-0-e8b349eb1900@linaro.org>
In-Reply-To: <20221005-mdm9615-sx1509q-yaml-v3-0-e8b349eb1900@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 17 Nov 2022 09:56:47 +0100
Message-ID: <CACRpkdYCUTb6-RdT0LPbmesxabUR1yMs5-YKCxxNcg+MC8Gf8A@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: convert semtech,sx150xq bindings
 to dt-schema
To:     Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 15, 2022 at 11:06 AM Neil Armstrong
<neil.armstrong@linaro.org> wrote:

> This converts the Semtech SX150Xq bindings to dt-schemas, add necessary
> bindings documentation to cover all differences between HW variants
> and current bindings usage.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

The binding is a piece of art. Excellent work!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
