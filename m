Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E9B5439898
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 00:25:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730799AbfFGWZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 18:25:26 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:41939 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730561AbfFGWZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 18:25:26 -0400
Received: by mail-lf1-f67.google.com with SMTP id 136so2715591lfa.8
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 15:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rGW8Zw9vrerYLKuQT2nRCi+4sph/YuDXDjL6O2OUlyY=;
        b=YoToUoWcx3852gvqkcDqaAMEmvxpkHkiUSN4e9zc8dZ3goxm71AXrawyITaIP5GLLS
         rx8hYH26Xwb+TFFur666Px//Tfwd4vaFmukaXEVxWybwGOTaBZBGIruWs4fpO789FIy6
         AHnYYBcAvstBHMkkTugoQ3vKfE+mGkEWW0d2EV8/DQkiXnUerfubSJdBuU70KlkB2QLa
         HB7QXW6NkYRO8/wG9fo4DrzI2En8SOVEcua2UQk/+9wJ4XDCsURRpCMV2n112gAgRjt/
         g+Wd1S1krdN31vYrT3InbPW9RpSg4p1pHwLs1HVgEEfY/NHDHfgty7gAJ/Au1Rlud4qS
         sDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rGW8Zw9vrerYLKuQT2nRCi+4sph/YuDXDjL6O2OUlyY=;
        b=ilc/aVCUL7tkBhPM91S9KuI8wBcnO020usHY49XkVf/+nUluGGbRsO5IH1/ZOMuv3Q
         fmUUybO64XTh+tytuE8eLkLaroSsuTs+rVpplUJZZiIlq+0E1mc6hrVxW47OeHHZibiS
         VusgAp2dd1qPHYZmo+7Q4py8yN9XL2nluG7ylSrsQPpAqCbw9pdpp1GyckCiZ7ObSMpQ
         yL58opkWX/8b9qsIdvOc7eRIBRb11kFJR+Br+jSORaB8Rp3w1YEvMGJNWotRM7LorZIs
         8EXsr0P42gS2QfXNOJDuZrZfzfafzwqP2AYhNnHp6CUW2ELtd1kT5KGJsSSDo73oCJyU
         dqGA==
X-Gm-Message-State: APjAAAWh3nCTglMpyUnt+7KuPHBEvnknMFpUAdEDbQ5di49MCk9CW+Ue
        XmtU3JRA8YAiXun/IiGnVmmi8tf51W+mVNdm/Rx5lg==
X-Google-Smtp-Source: APXvYqxNvBh6hAcA49cetya1d7GzlkGbHULmzKnolLcB2hj9KdHRpewtAF6MLQb+nLBB50KHLqayPIOHqmuTwhkTOL0=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr14458737lfm.61.1559946324431;
 Fri, 07 Jun 2019 15:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 8 Jun 2019 00:25:16 +0200
Message-ID: <CACRpkdYW3rezzJ3XAuuSNNsRiDh9nYNL8NNFjaZ=_NeXrmZbqA@mail.gmail.com>
Subject: Re: [PATCH 1/3 linux dev-5.1 arm/soc v2] ARM: dts: aspeed: Add SGPM pinmux
To:     Hongwei Zhang <hongweiz@ami.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed@lists.ozlabs.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 4, 2019 at 11:42 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this part of the patch through the ARM SoC
tree. I guess Joel will queue this?

Yours,
Linus Walleij
