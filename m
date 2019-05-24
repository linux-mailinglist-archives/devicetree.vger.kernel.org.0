Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A3DA2976C
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 13:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391010AbfEXLjo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 07:39:44 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:36433 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390743AbfEXLjn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 07:39:43 -0400
Received: by mail-lf1-f67.google.com with SMTP id y10so6905738lfl.3
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 04:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nw+POxuhjOTYtQGqsyL5bjoYOB/aPj9wvUKgQQiws2g=;
        b=aSJXq0vshoZfdpD7APSg/y2msxZ7hmuQ/3IG61oqn3lb25YTcDYaR/Ch9LsaZVLkNI
         tsjggAF53zFVHqcg4TyvWOG6PxI4DK3lvoaYFBQ0YyINy1AI+hMnklmoV8IN34juFbBp
         V2Fk+YAcJtkVKCtnPXSkyiRWAsB5EtK0TRSYFGZHYEr4VN4BnMfrCdR/goetTFWFotTI
         hoho1HBtwHsWg869aZZ/7GYsEVNtnt8sP2yedOHb4MoIr7dbryNBHZY9l0eTQOS0/TNf
         9N6lzlEgo3Rc2vpuPOYbd+8bTnsnQimZh0ymYy4+mVTGMKP1TFxwhNvRgEsqqnxAN1OF
         TlpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nw+POxuhjOTYtQGqsyL5bjoYOB/aPj9wvUKgQQiws2g=;
        b=R5m62Df8kLKGNHLeLF+LMdYTi4qrX30G0Z86o6wyvXaYTEy8CxlVSHqUx4MGyr86h0
         nPoso89FfHPwo1GcbdBIHvCr/lJ0x1b9KZrjTBwRFWhKBuAl0oZKaV9n+guRdvw7j1wT
         DwQKMPdGZvjPrvhwA2zMH2sG6ZJpsa1YELYoEuy5Nyn2B12CMLPEqhaYwePm6SYMCGMN
         fPogLxg321WPhYZ4wtwe8MdzHPJZdq3K5TItzD1okX3yVw+eqUGjTxG2KZbKbP7qPS62
         8EVwFUXT2A2S8qZ1pkhreX+Z5/2nYsDGSMqfPFxgp/LDsyyP82Kj0QrVAy4H+1yCKWWZ
         Wa9A==
X-Gm-Message-State: APjAAAWxltWbAobCUomdxADoBzngVm239wxzsEtexsPA1LP7i3RfTPeU
        E1LqyEdiUKQDYx5V69VlQOo9Qy/5fnpU+qA+OIvGGg==
X-Google-Smtp-Source: APXvYqy63wjVa+ai/FqWlFI9mg2nO3cUq8c4ueKPOiEFHwFicAI6R4MrXweOnXhthzdjjDkjD3IR/5eNp1n8GTFbd6s=
X-Received: by 2002:ac2:5935:: with SMTP id v21mr9221532lfi.117.1558697982150;
 Fri, 24 May 2019 04:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190514085316.17883-1-geert+renesas@glider.be>
In-Reply-To: <20190514085316.17883-1-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 24 May 2019 13:39:30 +0200
Message-ID: <CACRpkdZbv+Xr4_1EZ=Zmry_3coGP+AaWgM8F8jaJmvH5vrFHTw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm-boards: Update pointer to ARM CPU bindings
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 14, 2019 at 10:53 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> The ARM CPU DT bindings were converted from plain text to YAML, but not
> all referrers were updated.
>
> Fixes: 672951cbd1b70a9e ("dt-bindings: arm: Convert cpu binding to json-schema")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
