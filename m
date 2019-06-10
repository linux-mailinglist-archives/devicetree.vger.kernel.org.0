Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7EE643AD4D
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 04:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387549AbfFJCwY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jun 2019 22:52:24 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:41432 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387530AbfFJCwY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jun 2019 22:52:24 -0400
Received: by mail-ot1-f68.google.com with SMTP id 107so6956807otj.8
        for <devicetree@vger.kernel.org>; Sun, 09 Jun 2019 19:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W/MfzJg7c9DX2ZNb9NjuMd10Rr7cerwvLZmvt7k7/+w=;
        b=rVZygW2PoODN+f8HdixyM+h03uiMRuiSR5mD4dSAgGV2NTHG1J/ywPnV41ybe4rEoo
         ITBwsxDeUNl8BG+5hOjA7njHpV0+kDgr9jmsDmJsA/WuICKLQSz/f2wvUApuEqx7vNWA
         iKYWp3VOVBtVEgrDWrjYU8tnxEH3I3eCOXk5LVK1Sx2cI1ICX82X1F6sQ5TP31H/4se4
         HTmWvQpNwAFfNKazu1DQ8I5VRYOiLclpaPT/DVzWCxRvYHo+MjZzODMxtvpzj6EKnlpq
         RVC/JSTqv0kX1sHW60YRJtjrxC/QBzVi9Uy80+0PQNLHIkeF2D/7vv4w+v/VQY+I5ft+
         8ebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W/MfzJg7c9DX2ZNb9NjuMd10Rr7cerwvLZmvt7k7/+w=;
        b=mIqEn6nAq8O/7vITAMlqO+D5THSjVbb+nZXATmL6G2+BJhNZJHdz0OOtk/ieymAVFV
         gtoUGvdFoBhF5mwp1dtzk7RZ6Dji3DnaI2kIXStSGlVdfcgwHxyOw/20g1m+fmmrkJ44
         KTxCpyZ0nh1vy/jnXpuvXOi78OkUjM2pEPVRJ3S8OLlgCi7nyzfnknlEFK95J6Bxi2t9
         7Gt2Np3THuKeU89fwF+hVfB8XHqoflxwq7IxMiFIRFBgx+ADQrScfQf59ui0rbGZn8wB
         5tRfwTzh0wtazYWusccDCPeyw2bfyCzTzObIprMmrailW2pyWxqwge4edZ5g3q0FSa0+
         e1hQ==
X-Gm-Message-State: APjAAAX65mz8xJ3Snxh0r88U0rNFifBGA3zBHofCGNHLeIyQy7czBIQX
        IoWPXag2LxnaJ+uaJKcfPCQ3xMtxIONhNWHUee2Q8w==
X-Google-Smtp-Source: APXvYqxAimTcIhB0rhj7ECSrbtfm8vcFVwPFdfOqnhswkGX/W/CpCR7lAQcIg5CMKXUq/12QVu54SGP+weUrHpQLtLc=
X-Received: by 2002:a9d:10c:: with SMTP id 12mr28837859otu.123.1560135143789;
 Sun, 09 Jun 2019 19:52:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190609190803.14815-1-jacek.anaszewski@gmail.com> <20190609190803.14815-8-jacek.anaszewski@gmail.com>
In-Reply-To: <20190609190803.14815-8-jacek.anaszewski@gmail.com>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Mon, 10 Jun 2019 10:52:12 +0800
Message-ID: <CAMz4kuLHxxDB2SrYZp5TWSk8ZFjiCWPaRX-r_=zpFy+-YM3WEQ@mail.gmail.com>
Subject: Re: [PATCH v5 07/26] leds: sc27xx-blt: Use generic support for
 composing LED names
To:     Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     Linux LED Subsystem <linux-leds@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh@kernel.org>, dtor@google.com,
        Guenter Roeck <linux@roeck-us.net>, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jacek,

On Mon, 10 Jun 2019 at 03:08, Jacek Anaszewski
<jacek.anaszewski@gmail.com> wrote:
>
> Switch to using generic LED support for composing LED class
> device name.
>
> Signed-off-by: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Cc: Baolin Wang <baolin.wang@linaro.org>
> Acked-by: Pavel Machek <pavel@ucw.cz>

Thanks.
Reviewed-by: Baolin Wang <baolin.wang@linaro.org>

-- 
Baolin Wang
Best Regards
