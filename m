Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CE6E2978D
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 13:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390920AbfEXLuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 07:50:08 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:38178 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390772AbfEXLuI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 07:50:08 -0400
Received: by mail-lf1-f67.google.com with SMTP id b11so504027lfa.5
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 04:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AL2d0pjlVBmIWRs6fr455brLUAHkmqGB07RrA1F6UsQ=;
        b=h4/4vz3LD2ZII4MSJYVeGvEjd8RGbaXMRdluTLEVzPBGwfPTSo43vsYoHYH/xySLNX
         V3rGq013VRND/0yAuj7v5uqA7np6Ia3LuEJ6wQ25a8Wtm78bve/xXkyTWTs0vJJsXk7K
         PNhUmZcnHMsLAxNUFohIKBAKVFCyISAmeJe80Tox/KO2IeSu/8Jx4IWxl4SsrBCoU7CT
         AOyrklKJAz8x5PVopaL4hoIOkev5AbUTo1Jz/q03XW38IygBl/52Jwk3PZIfyKlRDDAU
         J81VG4MVmf005/SerSCAeZwN7SndZOQlGCaigSqqUn2XzmvwgxU/qS3+d0xxB1jItMgH
         8dNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AL2d0pjlVBmIWRs6fr455brLUAHkmqGB07RrA1F6UsQ=;
        b=mctbqzTDQy3Ecp2upGV++PJxWFU8NnPrO3Rb3z7bCUqdEWZb8FKtW9aZdXewfXH3ZW
         9xv7sX/4g9mlpAQqtqZYqkvEJllED/9rEjkSNrQrLmMD+m14Lx2ARHM5800HQnEwVn3I
         9p6HNsCjN5AekkxJZrU1RF30jCTF1gcQny2So7YbwXgyDPYzB95zPdjHA8n3kIg2nbuL
         JxQLq40f2L5Qr/0OeKHyUxCyYMSWBeXGrg12pGYqoB/IiQhc+2VBUoEsXtSTCPPEMoAJ
         hqAnWmWeSYPRbDOfMv5eWnEjbiK8C9JLXsYXh90A00OJN/j1JnI+tCkrX3bXXEQHRb5h
         AWug==
X-Gm-Message-State: APjAAAWGFnmMxggLXsMq44z8Jnl5UDs7BI/LDQxziiucZ5tsFJ2+6e1x
        1019ED2FisEkwjTOMUrR+sjiE1B3cd1QWZdH1yt8Cg==
X-Google-Smtp-Source: APXvYqwbOkonOaKhd8YCRIfmv8xAdTAD2vdgJCKAFZSw069Ovzk2VCRpvhyKKNBx3bpZuWAcz7AuNGltRgMJWnNejjw=
X-Received: by 2002:a19:4cd5:: with SMTP id z204mr5666594lfa.113.1558698606083;
 Fri, 24 May 2019 04:50:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190516151339.25846-1-jbrunet@baylibre.com> <20190516151339.25846-3-jbrunet@baylibre.com>
In-Reply-To: <20190516151339.25846-3-jbrunet@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 24 May 2019 13:49:54 +0200
Message-ID: <CACRpkdbxudSAD8rHbzpPFSAhxmd39=Jt62AKEXQV2CaDEZZQGA@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: meson: add output support in pinconf
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 5:13 PM Jerome Brunet <jbrunet@baylibre.com> wrote:

> Add pinconf support for PIN_CONFIG_OUTPUT_ENABLE and PIN_CONFIG_OUTPUT
> in the meson pinctrl driver.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Patch applied.

Yours,
Linus Walleij
