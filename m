Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08BD470AA7B
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 20:33:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232281AbjETSda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 14:33:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232382AbjETSdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 14:33:18 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEA7910E3
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 11:32:49 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-ba71cd7ce7fso6781347276.1
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684607490; x=1687199490;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y73bSaHPGyiUwlXasSjqWIS/TzIKwYaUuDBHy0MIXJU=;
        b=wtVEK3mQzhRUH8sU7zAjE891YvKq1Hlgf6jcntlW48uKW37Ipl413p8kSdjg//J9vL
         0HMBTJTSmhIyfBEG4kB3TDeb3haD2//FOb7i5YLTbHZhZmEj04vd1WX9PJ06BGvXIgQ+
         vcRr9kC2rMW5h3UFrvaStdiG2ClAxJUCLqezYZ10/Qlpa3feOl2fWkCSbYBviQZ5jr73
         hzMiTPArjNWCIhkODCsOydy6OI/uD/jTb3EIEFD1guuBJsAt1JWRk7SbcynTXBWRHYiB
         yo/tgU/mtRDKOWZwmj6SBzyID5t+lIAekl/V11VCABxAYkD83B3Hl0MkkfP1nPLlAyYT
         TrIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684607490; x=1687199490;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y73bSaHPGyiUwlXasSjqWIS/TzIKwYaUuDBHy0MIXJU=;
        b=SQEa6dD6fPUUkRgHyT7Z2nIVtNyJiCusrnXGmQkeK90LP5L2jO/eb60Chyp+Od8ala
         LpHzCsNfcNQY36M1mIYUkrYkpPLp1qbBxyOjPtu0KF1jxnmZwulxlnX/3V0xmxUKe5D1
         l9iM3z14l1psrnqpX2ddViflqoEHVxIQu7T9g/fcB9KrQYeG+wvtV0WwVWT0H2HCpLkp
         EgYWCLW4bGd/FLkoOqrZJpNXD1khr7S35OSgsYGbJdVN5S0xSRkA2vZ0ONWGJQ+K/qjv
         O6y4vStT+S7BdqTbX4DwAx51IQ1YHxuPEBq4VsoVi76TvyjVvDMvnBGjPKsfOlabkaUi
         JeaA==
X-Gm-Message-State: AC+VfDxqOsIRyAebtJ9m3kXuX7MX/hzHRBQ+EcXnNJaNO0c2WIzrNFvg
        j4FnjWN/HvM2KJCY7B+NhaQ3q6pntWX6vhRgm79SnQ==
X-Google-Smtp-Source: ACHHUZ47bO1TgRvdXcBxSl3BoDzhPHzFX+XFyJGorZcEfT79fytWZc/GhAetnWxu3qw+pdf51p8VsL/+DDX//kxjDGE=
X-Received: by 2002:a25:b007:0:b0:ba1:6bad:41a6 with SMTP id
 q7-20020a25b007000000b00ba16bad41a6mr5684383ybf.38.1684607490240; Sat, 20 May
 2023 11:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230520112601.11821-1-zajec5@gmail.com> <20230520112601.11821-2-zajec5@gmail.com>
In-Reply-To: <20230520112601.11821-2-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 20 May 2023 20:31:19 +0200
Message-ID: <CACRpkdYPP2-iQokTF2357Xs4HVHkQ7ht6VuDTGTPbY34Ayn4xQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Use updated device "compatible" strings
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 20, 2023 at 1:26=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Northstar binding was updated to use minus/hyphen char between model and
> version for all devices.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
