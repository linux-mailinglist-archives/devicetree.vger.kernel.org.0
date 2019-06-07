Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61F6D39799
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 23:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731258AbfFGVTN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 17:19:13 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:37793 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730887AbfFGVTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 17:19:09 -0400
Received: by mail-lj1-f196.google.com with SMTP id 131so2939633ljf.4
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 14:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/uwQvvBLZhDAl9yhIggJq/EJTAtf+ICqBP+94QmKvpM=;
        b=N/c1f5tuWKYL8TC+mpD5tnEP7gezj/Sv0CKNXvK+vVV9p3HMyq0wWcteem8zBam5DR
         2XbGICxpKnalTKAESEL7c+epE+t4pCo88A27u4LOFET0um8g3iWYnRb4Z/5L8rkIylPi
         2jcYbG4YVFXcQkQ4q3ja1Cq9gYsYE5YNTR38P0gQDlZ16R2rHS0QdwGkOhpUJwIsJ5Am
         tWG0ZA9d55ys6+uAgGiJT/e0pgaq+cFehEqRSjDogyfw7AiX+d1jGhDPOni65wlYf/es
         rB3OsOg+4YpCsJSh06Xw88BD/TiZfHR4V2FBbVKphXXzjJXKekeEuRCKgDzPi/TxNalg
         cOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/uwQvvBLZhDAl9yhIggJq/EJTAtf+ICqBP+94QmKvpM=;
        b=gO3ewIAE1dcyWrGdNk8gkWhCvzwua3W4+uHiJjcQD3hH6MY6ktD3u8SEzDtH1TXAVW
         XNFD/yJgoosqqVhYV6wU7Vf3k/NrusyncAAoZKmqo5P187Xel/xC4GxTnwFdmsr/rtGJ
         lBfEnuS8TolTt3E2evaffEGzc2SOSUwzwzswyrJcF7HvXoXUJzf1948LmkifszFmiyOw
         MWXDLXR1JdfavB5Pqj5cEn0mrdk9GmbNiNyauMXJozx+2JjNQPfCy10QwN8giSyIXSwV
         mN3xgVMVjDNAf49ViXPc1q/MlZC2Us9piYWqBZCRoSqBWuwQfEuJ/MJEBAAIkUq2GMgu
         K3nQ==
X-Gm-Message-State: APjAAAUvlFIldeBTtBWaP+V9UA0zaboURoNZW12+xOEG04TjwLFe9zck
        LjB13f4nIa2yuOZAbgmgGzIhhWh6MuiXHLi2B71Ggg==
X-Google-Smtp-Source: APXvYqxoSrFtpdn+Y/8JUdQf+IzKlqg5LfxsLNBpOURN47jOXNKje3csy/VgjGKZFSN/pgipJ/qQdxmih3J6j1aUAJs=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr5296121ljj.113.1559942347590;
 Fri, 07 Jun 2019 14:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190603073421.10314-1-manivannan.sadhasivam@linaro.org> <20190603073421.10314-2-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190603073421.10314-2-manivannan.sadhasivam@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 Jun 2019 23:18:59 +0200
Message-ID: <CACRpkdY9j+4PGGyMC-bCKuhP3Cg6xj4mFBt1VuSOi_14JcphPw@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: Add drive strength support for BM1880 SoC
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        alec.lin@bitmain.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 3, 2019 at 9:35 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:

> Add drive strength support for Bitmain BM1880 SoC.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Patch applied, no point in holding this back about nitpicking.

Follow up if you want to change the below:

> +static int bm1880_pinconf_drv_set(unsigned int mA, u32 width,
> +                                 u32 *regval, u32 bit_offset)
> +{
> +       u32 _regval;
> +
> +       _regval = *regval;

(... lots of fun with _reqval ...)

> +       *regval = _regval;
> +
> +       return 0;

I would avoid using any _names and __names because of ambiguity
(no clear semantic meaning) I would just call the variable in the
function *regp and the _regval just "reg" but it's just me.

Yours,
Linus Walleij
