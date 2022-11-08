Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E40A621DD0
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 21:42:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbiKHUmX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 15:42:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbiKHUmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 15:42:22 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D1667133
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 12:42:20 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id a67so24284108edf.12
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 12:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8PDeB4nZ2b0/kaV55EwLdKiv7+4Bjm3GYojARxweqjE=;
        b=AVqZhoAy5n+PtVAMMbVx+483gzWF1tI70Wt+diEOnr/EEFplpI0IFX1YwVIOi7rt+5
         xKjZRLDc7nKF1ln5nELX1axvNvA5KYnfEpaqcCUyQ1pFevFiis+oM1AT+lyQk3g7zHXY
         LCaPl0JSId8MgYe21cyHU2fF6H+jewXU4nMH02zBTKFcCs2BJmeM/k0IOqOeQqCcSB32
         Y6WYvyPjSIPQ9vvrFv+lQAHO3ltLKEVdP+WdsH1qA8J8GYSCb6l+9H4m2VSi05fgWWYa
         RryX9TkQXOsmrkLmuqRSFQyVkoTeXgUcRgclZKN9oXRwEyoI5GUOItPRM4ZgJNwyzF37
         S9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8PDeB4nZ2b0/kaV55EwLdKiv7+4Bjm3GYojARxweqjE=;
        b=2htHnChLIgSfuMzWx2b5I236e/GRB1vooqKrpf3ERVblP8RjsZUhbLgCI87shJU/aL
         CU/cvzc7JSP/aorr+PCUbQdwnTYjtSzlgjPGYYuGsR2PwtNP+SdaMvLSlzaKFgyT/h+m
         EEQvFca2ydwXMusT9dC2I4SVkcUYxPcGaFGCw7IUHEAX8lurRpeY4kivK3abaxfBVRv3
         m5D2ydTY8/5rz9oypC/1FyNZ97k/yFBAQWtKKUrdhMKLU+TFVuAVDOBY48vYekX5Df0l
         rgBUJooz/0HqTX6jmi+pJOF6+eiODej1cG7EPB78RB6+qnTkpdK1dcVj6PMHgSJKh9nS
         cJVQ==
X-Gm-Message-State: ACrzQf2D0//jk+NpScjj5V3D7PKLyAM0gJJ+myXwNqSZi1HrCh2kN8QK
        HzKqXt9f4bjkMxD/TLlmaWCyuZzDG9iknGlRnTR17g==
X-Google-Smtp-Source: AMsMyM5UacZlCRfKiRNa0kTrzT5kX7+K684naVNWV/pxq0wgKsP9jRI7CKgITH4pf2zDtNIwin7mrjQA9a0Qs67HpcE=
X-Received: by 2002:aa7:c718:0:b0:462:ff35:95dc with SMTP id
 i24-20020aa7c718000000b00462ff3595dcmr56160916edq.32.1667940139213; Tue, 08
 Nov 2022 12:42:19 -0800 (PST)
MIME-Version: 1.0
References: <Y2qEpgIdpRTzTQbN@shell.armlinux.org.uk> <E1osRXT-002mw3-JR@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1osRXT-002mw3-JR@rmk-PC.armlinux.org.uk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 21:42:08 +0100
Message-ID: <CACRpkdaPwe0igrZOnA3Q3QosySTEa9H06kdXLQMcpeEmt+hiBw@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] dt-bindings: mfd: add binding for Apple Mac System
 Management Controller
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        asahi@lists.linux.dev, devicetree@vger.kernel.org,
        Hector Martin <marcan@marcan.st>,
        Jonathan Corbet <corbet@lwn.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        linux-gpio@vger.kernel.org, Petr Mladek <pmladek@suse.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Sven Peter <sven@svenpeter.dev>
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

On Tue, Nov 8, 2022 at 5:33 PM Russell King (Oracle)
<rmk+kernel@armlinux.org.uk> wrote:

> Add a DT binding for the Apple Mac System Management Controller.
>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
