Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EB3C2C182
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 10:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726441AbfE1Ikx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 04:40:53 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:38964 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725943AbfE1Ikx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 04:40:53 -0400
Received: by mail-vk1-f194.google.com with SMTP id l13so54939vkk.6
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 01:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L1gEe0Qo8uUw419whddZefVmtI1Y7WOAQp/Jh1nRbBY=;
        b=GgRPe8E23Cer8Df2SQau1m/3AEgbXMJIUf9Mzz4H1Om4WYidE64+qFE0cnf2/qjdNf
         nKzLE1aUuA7hdhVAZe14ZNmicWNfhS1TTTf5mBvhC7KDo66j5v/uS1D8RXfibCDbLeV7
         tXRUgxh9BcrEvkxi36Qg9Wbw9z+Yw8Px/cW0AQ5a1Dk3rPxG64mXomNtsK7uTlKcWNYt
         gaBEsdD968TJcWOLIRFic9Kp+v7xkMoS/oHh/8MkM79TkCssqljli4Hl71gkjer7ydLp
         dLGjYQlGrdurQYJsGv4mLcyblN9hl5NEF0wVIgI9ES+8Gm84uPI6v72NFa4dNnEqocjE
         t9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L1gEe0Qo8uUw419whddZefVmtI1Y7WOAQp/Jh1nRbBY=;
        b=aHutVEjOm5Q4BGBVt+cjWqNM79FRtA1V2qYVnrxPyzEmwIkyf/4TwPqpbsrLg88IAr
         WxsA0nAQswHtYEICNakDbQ3Tg9SAskjXMXUM7BeNHmv76UTCPUtjFWQtIik6m7sOST1E
         ffVJDMP8EFc/HPo/QtROWvnB9Pm4FHpZcL0Cw1QQv1tpx/Rp0Qnv03p/rHKZ59YpF8cu
         POtONCCxPGLBJnsH6p76Y027AMJ0QU06zKFzzLmOhVkpY3QjwjjWNGVw7XH96sXGZCx2
         C84PBjb9pPqMdhRvG9jATYqiG7oX16JgxBBGW1hydafB0OThvLCL2gd66wHErBk12yvK
         mQIw==
X-Gm-Message-State: APjAAAVi7zhqm1bDX3WB5u16nAvtys5n1/ukLzd0G56a7F4gVcLeFxHj
        eMtTGuFlHhf+rZhK9OVTcJeDTmuJ6eQV2dF13wofUg==
X-Google-Smtp-Source: APXvYqx7LhK72f0luzwT93lolmN9FxjSTp2ZQy1E52COyZc/gaMuKcVA6k4ogJNFhunQ6qfXUyFIxCroR3vUPGJZ9Zw=
X-Received: by 2002:a1f:bc4b:: with SMTP id m72mr2400696vkf.36.1559032852442;
 Tue, 28 May 2019 01:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 28 May 2019 10:40:16 +0200
Message-ID: <CAPDyKFrs6f4_Xr=ATay_wDYNPa+-jdZvP4XSB55B-EFMAETN1Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +patternProperties:
> +  "^.*@[0-9]+$":
> +    properties:
> +      reg:
> +        items:
> +          - minimum: 0
> +            maximum: 7
> +            description:
> +              Must contain the SDIO function number of the function this
> +              subnode describes. A value of 0 denotes the memory SD
> +              function, values from 1 to 7 denote the SDIO functions.
> +
> +      broken-hpi:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Use this to indicate that the mmc-card has a broken hpi
> +          implementation, and that hpi should not be used.
> +
> +    required:
> +      - reg
> +

[...]

> -Use of Function subnodes
> -------------------------
> -
> -On embedded systems the cards connected to a host may need additional
> -properties. These can be specified in subnodes to the host controller node.
> -The subnodes are identified by the standard 'reg' property.
> -Which information exactly can be specified depends on the bindings for the
> -SDIO function driver for the subnode, as specified by the compatible string.
> -
> -Required host node properties when using function subnodes:
> -- #address-cells: should be one. The cell is the slot id.
> -- #size-cells: should be zero.
> -
> -Required function subnode properties:
> -- reg: Must contain the SDIO function number of the function this subnode
> -       describes. A value of 0 denotes the memory SD function, values from
> -       1 to 7 denote the SDIO functions.
> -
> -Optional function subnode properties:
> -- compatible: name of SDIO function following generic names recommended practice
> -

I think most of the information of how we use sub(child) nodes
disappeared in this conversion - or at least gets harder to
understand. Could we perhaps keep some of this?

Kind regards
Uffe
