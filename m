Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 328DE48BBD7
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 01:29:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347102AbiALA3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 19:29:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244632AbiALA3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 19:29:23 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 757C8C06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 16:29:23 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id s9so1305159oib.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 16:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=XWQPHdXybadB6e7/P7sAbUm970gAaRr2bcJInNv6MII=;
        b=OZwsXnDc9UPynogrYZXJH3NZkKffpbXSs+Dh0F9SzKL5beUBdoUZdVGXfmgY7dPL8D
         nAYOuFVL238WUh6Buu/adZacXUdhIOn7NE879ZhMcYPE3YaHEVOj3wtRUWXzEX+1QDpR
         hJa9EJmHaW57Mxvrxfj1vGMGSDv/EcvUVXCmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=XWQPHdXybadB6e7/P7sAbUm970gAaRr2bcJInNv6MII=;
        b=MqapzsxSqNUTzPzvyd1MT2EEqKwrV8Foja3272vMXfH+V6jHa5cdnnlUmJtlMDIwIG
         ZY9ubKYLk4ZZjcVT1LkYE88CdfeNEQ/VT1plNI4FPIfeemQiN7YnIn5+M8iAjI4TgAaU
         +gx7KfE3IYIwLfAVt7hNSzly2rhJ3Go3mrjfx+FKkcll+phmOjPQGyMJ8tExdG2zHhhn
         EotEeVv01GmDI6dyDQe/dFjo8qRYfC8gv0Ep5pIZETBT2+awyjGpSqEpclvGplxAm0lE
         3IMXO/ReVUYPlvY4AryuNNYhKvV/uY3vHVA5GgQxwlM9wnarYVE6GclkjUVnqqok7Xl3
         RqVw==
X-Gm-Message-State: AOAM530GGVPkCSIQ6gMjgX0Qpzkc6UD2knOzlgnpgqNp+H1e/+//0eiD
        mbOY80WjN2sJewplWoyLZu5FtSos7DmOwFTfiyMMwBBf7Nc=
X-Google-Smtp-Source: ABdhPJzs0Rk433uSwQw7ceFQP2bC9DKwS55Ky7plEX/1aptBSsq9LHbT1XbhIKGNGccDNMx12j+tEMjEY3DZmgZLWwI=
X-Received: by 2002:aca:4382:: with SMTP id q124mr3534110oia.64.1641947362878;
 Tue, 11 Jan 2022 16:29:22 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 11 Jan 2022 16:29:22 -0800
MIME-Version: 1.0
In-Reply-To: <20220111140519.1.Ie2662d6289af1e9758b14b37149703c846d5f509@changeid>
References: <20220111140519.1.Ie2662d6289af1e9758b14b37149703c846d5f509@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 11 Jan 2022 16:29:22 -0800
Message-ID: <CAE-0n51tqh7XP8SrqTY_EfsmqWnh2dVHuTTcRJt1BRR27bAL+Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: drive-strength doesn't default to 2
 if unspecified
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-01-11 14:05:21)
> If the drive-strength isn't specified in the device tree then it
> doesn't actually default to 2. Instead, it defaults to whatever the
> heck the BIOS left it at. If the BIOS doesn't touch it then that means
> it's whatever the heck the initial state of the pin was when the SoC
> booted.
>
> Reported-by: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
