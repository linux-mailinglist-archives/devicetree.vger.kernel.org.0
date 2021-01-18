Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94FCB2FA688
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 17:43:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403905AbhARQnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 11:43:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405392AbhARPSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 10:18:37 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34ED9C061757
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:17:57 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id h205so24546647lfd.5
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=d4mD/h6nxqpiRu/BWSX918zUfZx2NAp3BrA5+RH1Z4E=;
        b=UzBNbCangQD/mVcFqFwepNy+iz161oo/MZZ9Pym/pT8Bzsl1HkIglKhTINldVjZ8ce
         pztScQQuY/blyZt4LGJvuBu7WmdPr42WWd/8AuIZHpuxjbcwZjjEY9u61QTcBIpNfXuM
         JCxuu9MMjMtdzYp9vc2oguDNnDt6ioLWx9CnxutJkTw3jSamZnxHu1+x0EP3xph8c52l
         VAIKeCuezhmU8Nj85p495BmXSfIKapQnEzoFefUUyvMJAHmAfrjYLggj7wgIy5vfzhVr
         JQ+xLiYoI8/DZzc+P0kbNDUDCo78vXrcGXsqtTAD/pnyBYeUEWmA34Xdd7tHqTQKdvMF
         owqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=d4mD/h6nxqpiRu/BWSX918zUfZx2NAp3BrA5+RH1Z4E=;
        b=BTMU5d31oXQSN3AV68zAcXH0XZoKPkNqPibAX/rUMQnPKrhZSV7Rh0qhjxJ7nZfiuG
         EBD8e/r4WeQ8AhvySTNPmlwVMsWWW6kANFHKrKY+U+bIUI3k8blYhbjtB4FBosZ72ZQe
         xlR+DLNaUihQHylFsJxRRDcadF8ZoWkx+UrEYFTfJp2y/WiE2zd0X0EQ5TH65UajgdKS
         4I+onmR/WUw93isne7TDzwt4fhSdQ1GD8wrgYY1PEiNV8I/7UdXUEG7wR+qrIqdMBNS1
         370HjX83QJBE0qrYWyhFOEIRptIl2qrj96DmZCdO2cqcPW/q9FVx5pNuD0xnfOtYlGbX
         x3pQ==
X-Gm-Message-State: AOAM5337CzgDEEm3G4GWqGpgKw9hdffMTZpwlsLvruj2sYySFuxRXlt3
        n9uNSCYo8LTql9NgKy4upizssDEEZoNV9SUPasB4MA==
X-Google-Smtp-Source: ABdhPJxe12CdgBQkBixy5pZj2HmyQq/U9TbW9/IdkSbNhSwLNpvqIT9NGF7ds7M8rh/UGbxNnYYH5gbanOc6SSw6yqo=
X-Received: by 2002:ac2:5597:: with SMTP id v23mr10765276lfg.649.1610983075766;
 Mon, 18 Jan 2021 07:17:55 -0800 (PST)
MIME-Version: 1.0
References: <20210115164658.187681-1-u.kleine-koenig@pengutronix.de> <20210115164658.187681-4-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210115164658.187681-4-u.kleine-koenig@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jan 2021 16:17:44 +0100
Message-ID: <CACRpkdY-Uei-cXWOQ05z_7fC97jHJqUQkS7-5s2_r7FkENxQrQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: gpio: pca953x: Increase allowed
 length for gpio-line-names
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 5:47 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:

> Some supported chips (e.g. pca9505) support 40 lines. To be able to give
> each line a name the length of the gpio-line-names property must be
> allowed to contain up to 40 entries.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
