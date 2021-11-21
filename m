Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A743458743
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 00:56:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231533AbhKVAAC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 19:00:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbhKVAAB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 19:00:01 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBA3C061714
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:56:55 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id bk14so34375855oib.7
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tzbEXCra2fLzuFHKeeSSwMjHfMOaWeE3atUdu+3gu8o=;
        b=vLMLN1XgfZQV7YTTPrqfEm7QvqYJCmTgDtjWXHU91XFSFL7oQHT0m/IeS26DlKGw7F
         RAceTekpWZ2aNVpUEhvlcpgNKBZPE5AhE5yQ5+Nmi65EdKgpT/y7a3i7YWQSFRDx5qyX
         roc/g++HNEEB0Brux8dNCe8RI+EJ30CfsESBs3+VL/yNKlEMtW+cPQCOPk1isEp1rX6g
         OBivQzKtsxw0kFODQf1Lmy3g0rO//GZlEcM6rnAun/zcTlMqKQP04OOZ+ywqqMer0DGT
         wPlA0NPMpsAxwqFY2EogDIn4Uf5MIB32WDk6rYFRF0TwljaF8HqR0OipC2wcglfseKqq
         jViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tzbEXCra2fLzuFHKeeSSwMjHfMOaWeE3atUdu+3gu8o=;
        b=VmGMu7+5WKuz5xOiIOR3/7utwPWS86zxYuPBBJ1rC9RpgUjaK0fQlaYG66sgwDCCO6
         lBUXGdkjYViPajM8PBsTByuveaDIJWoYnIl3SmG302HqeEqR0u4aRdVaa3t4DD0vKXjb
         cMwHv0Aivr66lFNOPCM8mHNqSuTFCaVMujRm5v6Zu6omvbuTE81cISCASNOhVDNoIXdh
         O+FgHqLC5boOTHu45jqDD9KvxlX5doeVKd8XMBR1aX7iWWhpdQY1AiCY6BgioOufp1MW
         GnwP6mdfCEc/E3Pnxyte7awek8Nlq8B1k4R4cglfp0//FLqmTfmSFgm6Tureir3zoY8Y
         6cCQ==
X-Gm-Message-State: AOAM532bZO4hQOrvIsQAGUYak+R+kxNw++cpaGEMxQvMtS56VSEjkqs2
        sO5TyGsznNP2TbXbbOIjzQ3DLbEDNRZynhq6sAmDkw==
X-Google-Smtp-Source: ABdhPJyTGoImZ9uJlXTMO6yPH+6/gwlRYX16UVj6ftXnbOgSxuJ1Q+oBW6tiPI7CgPtEk6VZnIA12irHDbjoqu1iPOs=
X-Received: by 2002:aca:120f:: with SMTP id 15mr17321547ois.132.1637539014756;
 Sun, 21 Nov 2021 15:56:54 -0800 (PST)
MIME-Version: 1.0
References: <1636416699-21033-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1636416699-21033-1-git-send-email-hayashi.kunihiko@socionext.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Nov 2021 00:56:43 +0100
Message-ID: <CACRpkdY=2X4ntwGpbQ70iUc4cfQMqsjZK9PWR+Qo5e9oijc3ag@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: uniphier: Add child node
 definitions to describe pin mux and configuration
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 9, 2021 at 1:11 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:

> In arch/arm/boot/dts/uniphier-pinctrl.dtsi, there are child nodes of
> pinctrl that defines pinmux and pincfg, however, there are no rules about
> that in dt-bindings.
>
> 'make dtbs_check' results an error with the following message:
>
>    pinctrl: 'ain1', 'ain2', 'ainiec1', 'aout', 'aout1', 'aout2', ...
>    ... 'usb2', 'usb3' do not match any of the regexes: 'pinctrl-[0-9]+'
>
> To avoid the issue, add the rules of pinmux and pincfg in each child node
> and grandchild node.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Patch applied.

Yours,
Linus Walleij
