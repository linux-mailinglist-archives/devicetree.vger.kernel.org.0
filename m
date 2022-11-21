Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03BE1632450
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 14:51:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231501AbiKUNvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 08:51:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231463AbiKUNvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 08:51:16 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22135BE266
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 05:51:15 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id z192so13666630yba.0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 05:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OC2dnciZqHbQv7bck4ZM4yvqMVwrtYUiDz/KQUUfBFw=;
        b=x81a3w592lABjIyzgo//7Odymi3SiKhozLTTKlLDmeO+Mn/JvoOVoluXDwKFgHG+C2
         KmO5eRADzFCpDvqkLvL5jTlKCZMM3Ucfsp1pgNxvaoYcp8dyEuqq5IbZm1/Tk2JDKdkT
         7skuRPkwBeVaulSzHHNhsnD/nPc7CxBn2Yc08ngiORywAG/YFbpgYcUxUnPDcfj5VXJ4
         DwKG80hcQzPrtE+lbf3T2opiZIed7ZqGhv9eDBH2PHuupcUtnfPWRR3389U5Kszazhhz
         Wv+ONbsT2C5RX5emiZVcdRDenTxcvCv7cwK22ihLFAGWka4WDiwKgG2vy80tBcVYqLEe
         BJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OC2dnciZqHbQv7bck4ZM4yvqMVwrtYUiDz/KQUUfBFw=;
        b=PqzyDpw/1vJtCA2z6/pHRw7Whheqm2sQUNtkVxHFazlVRcJmRJbXTbHZseM4qgfsIk
         8yEeL6BKe4iOdeShWJrV7B+89tZyj4i4qhceolcGRvrMbjjIf59qFPn9u6dm2kzg2UJo
         BCfUSW2gMdekp7lUSte/gF2Bm5w3GF2FLwFzt65A9RLji4EKt6cC0up5uo1Wt5d4qlv/
         t47Vq/RHn9caUhozF9b8TjAjU9yMs1qBqf0lZ01cTZkwk8OBboYM3doIDlwIrzMRG9Mh
         dPiDmJw61HRm+UU1j4i5+qR74Igbe1bxsCtZQ4OMIUWFnMhtar/1HNoVWXc7IWQZy7fI
         iKiw==
X-Gm-Message-State: ANoB5pnHRSIRjKDeZOK7dNYSl3pYyBgQTlKxOp8tAezhkzlcFoOqXp+B
        ArlkT40+f7D0CeatXrwfCiiXLcQRdgdNYvQjd3rVlA==
X-Google-Smtp-Source: AA0mqf53bbgUybixKyoC3FP/zMh6ddK5kH7FK1QEae9KYabkbpynAnpM9EWfCnBBfYiozyzqsSohAcgz/1Pgy027gNo=
X-Received: by 2002:a25:c7c8:0:b0:6bd:1ca1:afd6 with SMTP id
 w191-20020a25c7c8000000b006bd1ca1afd6mr16645628ybe.43.1669038674366; Mon, 21
 Nov 2022 05:51:14 -0800 (PST)
MIME-Version: 1.0
References: <20221005-mdm9615-sx1509q-yaml-v3-0-e8b349eb1900@linaro.org>
 <79ba65cc117db8102bd8f7e30d6d44fdbd0542f1.camel@svanheule.net> <b5970487-9326-9d41-a004-6369e854e530@linaro.org>
In-Reply-To: <b5970487-9326-9d41-a004-6369e854e530@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 21 Nov 2022 14:51:02 +0100
Message-ID: <CACRpkdYZOsBSx_ODLYPc-po8mCs0SB=XCZhvT1LzggHXCmA4Ew@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: convert semtech,sx150xq bindings
 to dt-schema
To:     neil.armstrong@linaro.org
Cc:     Sander Vanheule <sander@svanheule.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 18, 2022 at 4:23 PM Neil Armstrong
<neil.armstrong@linaro.org> wrote:

> > A quick search for some datasheets turned up the SX1503 and SX1509Q with 16 GPIOs, so I assume the
> > intention was to match "gpio0" to "gpio15". I think this should be "^(gpio[0-9]|gpio1[0-5])$" (or
> > something equivalent).
>
> Damn you're right, Linus should I resend or send a fixup ?

Just send a fixup on top of my devel branch please!

Yours,
Linus Walleij
