Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E311919DE55
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2020 21:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728188AbgDCTGN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Apr 2020 15:06:13 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:39265 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726087AbgDCTGM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Apr 2020 15:06:12 -0400
Received: by mail-oi1-f196.google.com with SMTP id d63so7069302oig.6
        for <devicetree@vger.kernel.org>; Fri, 03 Apr 2020 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wTReRqnZdM7LeM2kve1cUiMUJNylNm6ycb8la3HHaJ0=;
        b=0aAsAdaHEwB0VgD8CzMLC5AdHyRM2ECSVANS25qkQSGLLNz4lq8tgw9c3PPmUgoyKJ
         P9icSKnv076YOyWE7NZzVjx/DjmINtpCBwcQNMjac39LwoqveToVNhHQAkGUw694RPY6
         fAvuoWFdJYzMW4Hp5xRFXJq4Spr3J5as4jzZjEX5f1MUCssfT7PrsCFVnW5vO+Ad6wNU
         Vv3WwmH2vtaLgC9m8Bm8kZvQ1GLtbTiwUa1DCYJjxh8J1DC9L1Xq/OeiwnXV/ylCwECh
         h598soyQVMTC8yoKgSk0OXUCSsUxF0AhTDaV5ZmYTxaNNMNWAAq3OuRb8sDEJI8r/d8O
         8LdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wTReRqnZdM7LeM2kve1cUiMUJNylNm6ycb8la3HHaJ0=;
        b=XCMZgJieG78BGzMbavTMD9C2+P8MbyMVqlmAlgbWXUoQFHNLjw7DRThJrBXwl/UrBe
         +yFh2XQh21a08+4AR237hcuNQ1FAyP86rOuVja+ezt1zF9iQ1pP+f03yh5dfIg8529bl
         UNj8gWhYhLXgP0+WGEjtKIqznUc03yN1mwJqDnFhXCcy1xMZ+XYfrz+yYITkjyF4FKmG
         RNew39WyenbfN0q+0DbR4md2wJch8XuvXdkmDapeKiC8f1tss13Q5Qd5faIQW0p0+7rP
         fr937iMtjjWyvfFGxNMuDHVorB5RY+2xS/se1Joz19RSmBvHLiGcDvUHRmGXXB4yc+YP
         /EYg==
X-Gm-Message-State: AGi0PuZb59yRIrWnsm+GFiRtyj4gd7FisZFTGJZJDjuGkD+sZ8VQ99nt
        mqYVM39Jn9GrvPWuICHXmhwy2oJISj293S9yMKnzqDyghFHLUzzn2Jc=
X-Google-Smtp-Source: APiQypIsZ2d8AsAE4RSoHnHe+9bpshKUWvYMZnZRa/dpSiCKfPBZBvxkftK0/fqGsrj1dal3mc2tcGERHrw+aDERYzk=
X-Received: by 2002:aca:5354:: with SMTP id h81mr4176546oib.164.1585940771598;
 Fri, 03 Apr 2020 12:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200403182342.GA27383@x1>
In-Reply-To: <20200403182342.GA27383@x1>
From:   Drew Fustini <drew@beagleboard.org>
Date:   Fri, 3 Apr 2020 21:06:41 +0200
Message-ID: <CAPgEAj5RjC+p0fXEixtrKm7+JTMSrWNeSrDmHs_mV=AbNr4N8Q@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: Add vendor prefix for BeagleBoard.org
To:     devicetree@vger.kernel.org
Cc:     Jason Kridner <jkridner@gmail.com>,
        Robert Nelson <robertcnelson@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Icenowy Zheng <icenowy@aosc.io>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jyri Sarha <jsarha@ti.com>, linux-kernel@vger.kernel.org,
        Caleb Robey <c-robey@ti.com>, Jason Kridner <jdk@ti.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 3, 2020 at 8:23 PM Drew Fustini <drew@beagleboard.org> wrote:
>
> Add vendor prefix for BeagleBoard.org Foundation
>
> Signed-off-by: Jason Kridner <jdk@ti.com>
> Signed-off-by: Drew Fustini <drew@beagleboard.org>
> ---
> Changes in v3:
>   - add SoB from drew@beagleboard.org
>   - email patch from drew@beagleboard.org
>
> Changes in v2:
>   - Use 'beagle' rather than 'beagleboard.org' to be shorter and avoid
>     needing to quote within a yaml regular expression.
>   - Assign 'from' to author e-mail address.
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 967e78c5ec0a..1cce6641b21b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -139,6 +139,8 @@ patternProperties:
>      description: Shenzhen AZW Technology Co., Ltd.
>    "^bananapi,.*":
>      description: BIPAI KEJI LIMITED
> +  "^beagle,.*":
> +    description: BeagleBoard.org Foundation
>    "^bhf,.*":
>      description: Beckhoff Automation GmbH & Co. KG
>    "^bitmain,.*":
> --
> 2.17.1

Apologies, I just discovered that this does not apply to robh/for-next
as Beacon was added on March 24th in
f756619f26edf74ad55d2151a6757a260e660fa8

I will send v4 rebased on that branch.

thanks,
drew
