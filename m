Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6B9F64DC0A
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 14:14:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbiLONOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 08:14:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiLONOn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 08:14:43 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 999722ED78
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 05:14:42 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id b16so3483758yba.0
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 05:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x6pBWVNsgjAGpd1VZR5eExNtUZDulyyfEXZFcwo/ZY0=;
        b=WF4o50+yPVOO/nnc2PZfXnrSc1OnWJMoIQMCSAHiR3Ve08OeUkWD08m5h8J10eBfBf
         BXWZR3DSYK/6sysM9p7jBdK16k3bbrfEofFpd0MotYLAzCgLIPh8Pg5JZVh42YkNmk2B
         D0n/BOjzV4NKURVcVIngw6qDAQm3zGNyT3cmJmbHmiI7JB8+TS5LA28YZ080rXLTLp9x
         s60ixwHmlOPbxyh807wRM9opkMeDeyMlBFMZVwOEiPMSQSpQTqra2XKx96rNT0xayWoV
         IMzrFlgYVPbsY8FWWeN3XRTwQVxhkTbX50etJdlRahfZ7Y0SdPIKtSm8r/IrPBlp2VZN
         esZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x6pBWVNsgjAGpd1VZR5eExNtUZDulyyfEXZFcwo/ZY0=;
        b=ne3dMq3EH+/nwHrGzwlrS8XWjqPlGk9FrAmuEcsgAI482ExHjbB94F+kWmH+Z0+KJP
         Iz/SkD2RChnnmS8VU0BslImIe/x6G02jG9ZrKRFSNcAJn7Fv8fUauvPh0/p3CdHIMYxM
         QH37fkQoxF1gM3Nt7yPPZfa/138cE/+UIMt4Ny5JDv1wTuBIWt0cUaFzhTJuw6LYKj5w
         57/UpHGq9PKxpkyjXCjBnzX6P93vcYyNZHzCMYzsqJ8AGPH7uRJBQyv/G9Vr9PgQRc9n
         wnKSvmcAIj8zrOqLZW5dNm2kr7I0eOHRX4Qp6OtP2AFMh+gBoxhZtBwZH3dJsS5lhS7i
         4XJg==
X-Gm-Message-State: ANoB5plZM5Jnjv8ibNLxMUJSZBU6OMLLpbz51hEHEKulUC4g9hz6K7gd
        EzwE5wljEHn3B9eSUUa/diUk2iRvLNb8wAWVtIUgKQ==
X-Google-Smtp-Source: AA0mqf4VCeS6cDmE/8cI63PEOCskGBZt2whnoZo0ZMYoL1fTX7u2fERUW9ycXmeeLPdzN6L2IfhejUxuNfP+Ggbfv+w=
X-Received: by 2002:a25:d782:0:b0:6f5:6b11:8110 with SMTP id
 o124-20020a25d782000000b006f56b118110mr47667581ybg.560.1671110081841; Thu, 15
 Dec 2022 05:14:41 -0800 (PST)
MIME-Version: 1.0
References: <20221214095342.937303-1-alexander.stein@ew.tq-group.com> <20221214095342.937303-2-alexander.stein@ew.tq-group.com>
In-Reply-To: <20221214095342.937303-2-alexander.stein@ew.tq-group.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Dec 2022 14:14:30 +0100
Message-ID: <CACRpkdYbn3XDeswTeAHatbGUnraDT4-4FkX9FBXMGkzpHpEQUw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 1/3] dt-bindings: gpio: Add gpio-delay binding document
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 10:53 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:

> This adds bindings for a GPIO enable/disable delay driver.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> +  input-gpios:
> +    description: Array of GPIOs which output signal change is delayed

I would just call this "gpios", it's not like we're ever going to add
any more specified GPIOs to this hardware, ever.

Yours,
Linus Walleij
