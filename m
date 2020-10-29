Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CA8329EDC7
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 15:03:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726598AbgJ2ODN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 10:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726548AbgJ2ODK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 10:03:10 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F4EBC0613D6
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 07:03:10 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id l2so3491658lfk.0
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 07:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=92Wvsa8QeN5oXBJQBgSBXtwtg0x+2FMYvo64EHUo00g=;
        b=myoxkGc4nH0UwcnEdAdThIJXXyu5AYXIxCiqvNsG3zJefwbWiIjt7BDjTDjgOqCeMV
         vpV8/pRUqT1IU/z1tIR09QZxo1L90FUoZoKIlMB9V2m1e75EuDGU/1d5MHyHGTsXriis
         qel5M4rKVY8HFype+DFBb6fn9CAEXrzjVutpK9TwgY8DB8XSyyyCimubSpIgO9oV7fYv
         0/xt7A+J97tgHfCFRNuWs9HR6nDhaoL3O4+XOi3ThfN8ECf5gPax5o0i6/CHdw2ZDhmu
         8rX7376FCicQ58AA2Buq7mrFkkhZ/7/aAs/27/ZFb556RYVR55pZdIeu0okYmfLrwD21
         VRkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=92Wvsa8QeN5oXBJQBgSBXtwtg0x+2FMYvo64EHUo00g=;
        b=inztUmcQX78Jwcow9tLSl04oYLSCtAmr8XJRPW0JEbdBjEGEk62TJ4aZAULxHsNUso
         XJZHteqI5PGn486Vl71M1an8FyGzIkRDaFcjKcXBDGEDVQOpXvOOE9l59O0WwfUEP36z
         txF1aajLMjVbWe3dqGHJVDF33q74ROi2MVBGTPug+8mX9FXsmo8uyQXp959eWfJrh4Ee
         gVLqsQDCi/j1Wn5peJUBawHWgmq7HhFPOkNGG+inoAq3ZDZIbX+s6f9y3eX4STpib2bO
         uZkm4veeQOzNyFqZACF2FDM9pk8ECwUg5VdAOQ8lMktgPS95G3/Q+ae/JphMX6trxMOt
         S0Rw==
X-Gm-Message-State: AOAM533CnDW4BJ62bsAUEtt35zuUjku8Wa83u3t8U2D5YDhTmNquPcpH
        hF8JK6rKeJKH2NVpDtVW1kkjBUEme3N0iDuk3wChow==
X-Google-Smtp-Source: ABdhPJw5f+pbm+OCagVx13Hp7rRSTnDM2rKzYJ0oz1US7r1kPYSzVzcaUKCONaqZZFCt0KqI/bJrCI92slLADNyb38I=
X-Received: by 2002:a19:191:: with SMTP id 139mr1536310lfb.502.1603980186701;
 Thu, 29 Oct 2020 07:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <1602831532-24818-1-git-send-email-rnayak@codeaurora.org> <1602831532-24818-2-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1602831532-24818-2-git-send-email-rnayak@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 29 Oct 2020 15:02:55 +0100
Message-ID: <CACRpkdarjBLJFtM7-Cq=G40Bo9dEEgxuny=QDh5y0LogD3CQqA@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: qcom: Add sc7280 pinctrl driver
To:     Rajendra Nayak <rnayak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 16, 2020 at 8:59 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:

> Add initial pinctrl driver to support pin configuration with
> pinctrl framework for SC7280 SoC
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>

This came in during the merge window I think, waiting for
Bjorn to have a look at it.

Yours,
Linus Walleij
