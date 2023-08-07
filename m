Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C28B4772512
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 15:09:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231139AbjHGNJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 09:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230402AbjHGNJM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 09:09:12 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9051171A
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 06:09:08 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-583b019f1cbso48750907b3.3
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 06:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691413748; x=1692018548;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VRQ9hJHPWGbMAqzJt8udNYEXKx/GaBsSQEifbFzwzZg=;
        b=M1V/WH3nRNl+lqoZHlvo15WXi/MKi80O1N9MIrda+9wJeWgszk/bg4300Lbzd+gv0U
         F/aWF1d/X4l5E+FqhE2sdeGBOw9pAjP/H1UG9Ca/E+0da232XxhqGenR/XSbvX9hgO0t
         LUTOsPUYDwOJw9kb/mNJzrC54UEFkFgO+c911JGCit+TiHJ3P36TzWEn2Bls5W3zgmrh
         WvYQFQomX2ao9db58TTi0PGcRMsnep0TGgN/5j2YLb7Mv3Yinf/R+VSeJKeUuaU1u5fv
         5BdA+B6QkDDcs7YfAh8MOEAFiehGcxObXhOB+6VVvLdFI8Tl3NX0jUJwAUuK9sTTXlrj
         VqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691413748; x=1692018548;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VRQ9hJHPWGbMAqzJt8udNYEXKx/GaBsSQEifbFzwzZg=;
        b=NGkxTDey+7zNJo+1yvnMtWGvSU2urU81UzEpy62kBYGtapizW/7AhuItJcujefVZcz
         D0WIBzNe3EAuvTnBGGxOhPuB74jPFcl5u3AfbPMNRX0lnHNtv5Pmo/OR5a8mFk2C+S7P
         cq7U5f8T5bleiWwKPvEH9vkkxeDGp3/DcK0VeLbZfq0fNUTw2BGclUDbb+Hgo7vhhd6S
         oJcv2QQiVbh9X4XKW/+qvweO9d1p2oXtvrRKq4muh6ln2AftM0mf8cTUb2Edy8/GSRZE
         jyPrrrNy2HqqD0D9MKcOVnG4S6CGMR7qrkC7Sy/J5YSXwMsbILPBrvhrbRT8WCiLaWb2
         I5ng==
X-Gm-Message-State: AOJu0YzLA4g08vyAXPtcsw6pOthNp+mUgqTLym+VKPx45ho4RceJVrMV
        Ez6PUcOaIr6f2TGnXXXzc7qf2j0DV8ai2ZLZYptkYA==
X-Google-Smtp-Source: AGHT+IGUzrAbzMlWE8uHtUYG7K19GHOdAT+kKGzN1diwoMh2c0wes0JJLDMHlhZoH4o9vt14l0IPfOUTYVBFR5cPkj0=
X-Received: by 2002:a5b:c03:0:b0:cfa:b497:cbd8 with SMTP id
 f3-20020a5b0c03000000b00cfab497cbd8mr8369298ybq.48.1691413747902; Mon, 07 Aug
 2023 06:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230727095432.82591-1-okan.sahin@analog.com> <20230727095432.82591-3-okan.sahin@analog.com>
In-Reply-To: <20230727095432.82591-3-okan.sahin@analog.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 7 Aug 2023 15:08:56 +0200
Message-ID: <CACRpkdY02BbfkxSbyb5U+B29CYyNrhxtSADinYmYJ+ZCM04bjQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] gpio: ds4520: Add ADI DS4520 GPIO Expander Support
To:     Okan Sahin <okan.sahin@analog.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 27, 2023 at 11:55=E2=80=AFAM Okan Sahin <okan.sahin@analog.com>=
 wrote:

> The DS4520 is a 9-bit nonvolatile (NV) I/O expander.
> It offers users a digitally programmable alternative
> to hardware jumpers and mechanical switches that are
> being used to control digital logic node.
>
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>

Too late to add review tags but just pointing out what a beauty
this driver is when using regmap GPIO. Total success!

Yours,
Linus Walleij
