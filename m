Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A772879B12
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 23:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728894AbfG2VaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 17:30:21 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:32893 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728242AbfG2VaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 17:30:21 -0400
Received: by mail-lj1-f196.google.com with SMTP id h10so60022185ljg.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 14:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HKkIBvCgiYwjQhYFTYEAh/Mb6txeYN6WDDQ/uj2gFUI=;
        b=OVWD6wHlg/XSy1nOvWhd7RWa8UEN/Oef6ahYwW3GYqAbC3Jb8IYHyZz3Qv7guhv+ke
         ayQu1zm+nihPVb0TxklyfIsxxgs7QLFgrnETgq5hPDxJR+Xq3gHaM8a71PJDigK3Mzas
         KZtfwpERVnDnylTN3Kbty4zkw5EKnSCvzP0E8qgOSh9dABQwlX6tg1RvuR8Le0WyFLJy
         9MtK9kmmj3iapk/x10PWP9721MYBi2Zs1XcGoZH/gyCCpqaQAysmUGeep+ay3jjQDQow
         zm+h113ufbLccs2ZGo6v+zPMlUYQysd+GBvCM4N5JVd7lF/52GK8gDQYSQqHbQKVoasj
         SUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HKkIBvCgiYwjQhYFTYEAh/Mb6txeYN6WDDQ/uj2gFUI=;
        b=ppY7QnjUWrDXrjME/uWbNnsNRveunIKkNsFWILEtoNqyTAIbD81puwx1kQqnPS2r9W
         CLIB4Y86R5M8YElDdEMPyeHz67GOkg13wiujgdXxullIFTGqZ0qQXuCZRiY+oQxl57Bu
         Lg8bg3uQf03xYBnmqJT3a5ivUdgjqgMazP6uhCLg7E3W2RwD8XP5Zx6gH0wasBjfLSvh
         ehRN//H984idSPN1/widGZmEk974+eQoka+iObDz7nvTULzG2dfVIYejE7C7+cHbw7MY
         h66CjjSbVLzlvQLG5a3X3GjAJaVrpec8FfDidePa0R1SeRbVAFNm8y7zPc2VrxIX7vGD
         P/cQ==
X-Gm-Message-State: APjAAAW4aYweF1gXMgTiokFQi84AxsXt1r1c+1jkQcLYo5n3YE40lmdn
        S7O8b3LeDxtN91+TS/1X3D2NJeoA1ld446meSDWyng==
X-Google-Smtp-Source: APXvYqwUhL9uJMcJBMf5PD9Q2tJQYMHtg2CF0rvUKzbc9I7QW0dTFe+hQ+z0pJ0FnCmvAz8JSJ5iGwWObU6G3+Peq0E=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr12436136ljg.37.1564435819389;
 Mon, 29 Jul 2019 14:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
In-Reply-To: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 29 Jul 2019 23:30:08 +0200
Message-ID: <CACRpkdYrrpfGwTVHLbOwOWVxReAnH4q-bf5hTz_xFoM63sJoKA@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
To:     Marc Gonzalez <marc.w.gonzalez@free.fr>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        gpio <linux-gpio@vger.kernel.org>,
        DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 4, 2019 at 10:57 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:

> TSIF is the Transport Stream Interface.
> First, rename tsif1 to tsif0, and tsif2 to tsif1.
> Then squash all 5 tsif0 pins into a single function.
> Same for tsif1.
>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> Changes from v1:
> - Reword commit message for clarity (hopefully)
> - Drop unrelated change in qcom,msm8998-pinctrl.txt
> - CC DT

Patch applied with the ACKs.

Yours,
Linus Walleij
