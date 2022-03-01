Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BAAC4C981F
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 23:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238628AbiCAWFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 17:05:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234508AbiCAWFm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 17:05:42 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E099723D3
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 14:05:00 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-2dbc48104beso58167557b3.5
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 14:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UcPAPgfcldc73jEP+C7Dej+leQMSuSLsqYm57vv73+s=;
        b=nRakB6HmSQvAY0Kx8G5e0XiHu+lZH+cNOSVvManb39OQg5KXxnMddGx3eaTlkqCwZ1
         tD3b2Xov2F7FLOGsOzjBxOVPu9aKqb2AqpjUU1eWbTbx00Ju3UR40XNvN0l3LMy4bkt9
         Rui06CAZMrodVpaNMV5lUTT+sDBGnsNvtd0hVGWHCjSw8DlzZ7frrYemADTorf6gcuYD
         kHhnCqVDMa2qFBaQLMP27xmcmelDgZEstkQIDIVpK1HV60D9tRmgAUcp+g6b9yplwuZ+
         Spq9ZALSr6S9zZA2jhs1GuzgkujBQTV2BcBMIp2DZVmie1F4BWb+HD0OKh8S+TaUi8zF
         espg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UcPAPgfcldc73jEP+C7Dej+leQMSuSLsqYm57vv73+s=;
        b=TXzRkvJQ/HBMgljfhM1OGw+t7QdEdC1aikxse3YN+H0RTkCcjXXtROQ0XF0RfaQL1n
         qznyf9fpEgz1o3Ec0QinnT6AE0VJSp9bqz1tdqtHrAMwUU+TK//77m4+SyTmN2WEUHqx
         UKjRX/sevptao6cUMX4fe02yhOkT5wHTV5t0FMYJVCVbr4I8ZQg7y9mGXMv6/FDBaAgK
         AwD2nc6LMfaBy9OMRSj8KkYZFtJ9vGufPlEhyk+iWLVyiE4MiLy5qsUGz0ZBnmZYczLk
         K+pIslFKQwnub938kUxrWVdK2YvvoeXCVERt9rLGGBfBpnhh9DAe80yO+qfnE+8xqv6m
         ROOQ==
X-Gm-Message-State: AOAM533nqQymY6wzLbUznuk+cjQJBY5mzdHb4ASMNMaCahQJYJXVdEld
        fdtnvR90vRLmJllkCc6YBWZ32j4icWe1LK+N4vsOOg==
X-Google-Smtp-Source: ABdhPJz0z5NUDx5yT9o5PaqMCK36QA8R6U5yziPTGeHEgqZnWomadFex96iDbgDg/IFQkrR5Udu+iKW6bIM/vAp44rg=
X-Received: by 2002:a81:d15:0:b0:2db:d348:2fda with SMTP id
 21-20020a810d15000000b002dbd3482fdamr6926473ywn.151.1646172299759; Tue, 01
 Mar 2022 14:04:59 -0800 (PST)
MIME-Version: 1.0
References: <20220215163926.894-1-paweldembicki@gmail.com> <CACRpkda=ky29PiTjWimnNihLDHSTfYWk68qg5GcLqZTD76ba=g@mail.gmail.com>
 <CAJN1KkygDrGPzJj4nobS-ZFSRqP+g9LQ49tbcLA8V7KvPhfYOQ@mail.gmail.com>
In-Reply-To: <CAJN1KkygDrGPzJj4nobS-ZFSRqP+g9LQ49tbcLA8V7KvPhfYOQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 1 Mar 2022 23:04:48 +0100
Message-ID: <CACRpkdaks_R11d6+LS7ER6KgS2uupO3xLunH1CxfoMiJtc2qaw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: kirkwood: Add Ctera C-200 V1 board
To:     =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Hao Fang <fanghao11@huawei.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-kernel@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 1, 2022 at 9:32 PM Pawe=C5=82 Dembicki <paweldembicki@gmail.com=
> wrote:

> It has a fan controlled by the lm63: PWM controller.

Aha it is one of those combo things, sorry for my ignorance.

>  But the fan blows
> only on disks, board temperature won't change even when PWM =3D 100%.
> It should be controlled by hdd temperature.

We have a way to even monitor the temperature of individual hard disks
these days and I create a thermal zone and use it here to control a fan
in this DTS:
arch/arm/boot/dts/gemini-dlink-dir-685.dts

Yours,
Linus Walleij
