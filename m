Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C08726AC36B
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 15:36:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230180AbjCFOgm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 09:36:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbjCFOgl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 09:36:41 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC91630B1F
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 06:36:13 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-176d93cd0daso2144638fac.4
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 06:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678113329;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxZOC/oFAJ7mVCTrB11HvO0wkDiTX72CDJEEOJC+H98=;
        b=zBZ8W6LPTWsLly/PfAxYxtMMqq2nIqULYofyptTN3FlXNXE97dWojgt0NZxl3dB+yn
         HQh1SeYObrhkqwVvq1RzthmgQ1ZtTsszjFYhGyeXpsiH9BJikNTk98Ii2jkEtO+cetgX
         0PdDQzA3Wt5Zs9IwbzlRH5lzZHvd6jvCLRWujj4/dZrFy2isCqkXcSMgZyhIXHbQqGje
         SZP67VRvV5rkxsLCwaFSoE/do6H6f3qwjMHP7r+gKg53YGoCV38MGFJd1Z7OikpqTjKO
         VkSuP+SgMbe6Svb5+3TjAEyNQWwX/Q9TAVfvokmxBTNvXhV9Jzb9LFixj3z1zwble2cM
         2T0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678113329;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nxZOC/oFAJ7mVCTrB11HvO0wkDiTX72CDJEEOJC+H98=;
        b=X9jGytKkQ17sHara2ilvc8FO7PkJjoi44zc6jCXkxo+jqcdjIyWECpVUwi/5rUJLif
         aQCyKvmK7o6GuHqtttR92NsjFjDJAePaLTnqTLnpCJrftWi5fWTAj90baobzjKR2nRG4
         hbAIB9TSNsA7cTswUE++kxVbkldca00UVU6uBiTYmNAjnXJB6u+8/aaypT/4/y+sVftg
         e1klMr1Da7toscn5GmqPQvp4HNDcdA2FlRHbNM6sJE1hFdo4oRPWQNehP7rvHTS3jTAI
         UL/0E2mGo8bM+QtJVKajNYUprQeNFB28aC1LC7BX5Q2gYo6BLaabTvsePA0Hmscgdyzy
         cJMQ==
X-Gm-Message-State: AO0yUKWDmWvGLthOGQgf/B6d/bUlCSUuICmWgHBpmHVRBlnl8SZyIc3A
        P0dMDVpBzxkRFOKQLFno0e+GJjDoR0HM324Uab5TH8KCeXtw2vVH
X-Google-Smtp-Source: AK7set/FqB1a3gzaiHVXuJsE8H16TW/OMBYIdNp4jrArFvJtsJcWBeIdZQ/8vyZPwqyhO7+6BMYOgloJ+MUsrPAUvRU=
X-Received: by 2002:a25:9281:0:b0:b0a:7108:71e9 with SMTP id
 y1-20020a259281000000b00b0a710871e9mr2331645ybl.4.1678112380304; Mon, 06 Mar
 2023 06:19:40 -0800 (PST)
MIME-Version: 1.0
References: <20230227205035.18551-1-git@apitzsch.eu>
In-Reply-To: <20230227205035.18551-1-git@apitzsch.eu>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Mar 2023 15:19:29 +0100
Message-ID: <CACRpkdZROb6q20yMJomhy4KF0R-vwNSwXPSkN7Tn8S-kf0wYKQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: input: atmel,maxtouch: add linux,keycodes
To:     =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Cc:     Nick Dyer <nick@shmanahar.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 27, 2023 at 9:50 PM Andr=C3=A9 Apitzsch <git@apitzsch.eu> wrote=
:

> In some configurations the touch controller can support the touch keys.
> Document the linux,keycodes property that enables those keys and
> specifies the keycodes that should be used to report the key events.
>
> Signed-off-by: Andr=C3=A9 Apitzsch <git@apitzsch.eu>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
