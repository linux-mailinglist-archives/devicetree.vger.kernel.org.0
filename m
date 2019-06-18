Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B203A4977D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 04:27:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726151AbfFRC1Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 22:27:16 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:44556 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726023AbfFRC1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 22:27:16 -0400
Received: by mail-lf1-f66.google.com with SMTP id r15so8009136lfm.11
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 19:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vrH4UlyITIW3Kklxm4K11PO4hKeqUB+5+0NWGjvtcTY=;
        b=bKGxDFFLkp9ouI8Y2f7JYne4r72v1UTs5lFlQBWs9NdhAbEr64eyuACseV54EXRwNw
         mlapn2ReX00k3YdnoOQI9hU2aCWhO9MrZI9M2pnF35G8AM2Xp8KEYA0Cj5QzqS+ceTQK
         S8wIGiQLI/A92yEiV5ximZThSjTM0KcNf6+R6z3Ko3gKFYPsOTmMrg9OS7hyZrwI9O70
         0NBgJXDE52orjxjG0qwBNOlJHvWAWcBMvxj6xPS+fLo7c6j3MEJywhgNL8stDrwxnb0n
         WjAteum72VnlgyHoeH68i2tMi4LSY65JWNjsui9Ox1AteQn+5pcC3q6YwcjZ+y38aqjw
         BwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vrH4UlyITIW3Kklxm4K11PO4hKeqUB+5+0NWGjvtcTY=;
        b=BlnVpSYFVmT3fq3415Qe4a7q3vmNMOlaG1no/EFLpuFTHVX2SDygYihOL2QDwgNSbg
         ilaIv/ZTM39gFjc+ADPwiDmiZFfmbWxePNsFM9vJgqnco+54hp++DVLHcDONnuPAoCSy
         rnMrTKmMYlYckr4Ga1pzLQE7LHa+KxZTy6oceHqJA0Mk5Pcu4a4Rnh8X5A2cK1eVLwXs
         nvubaxlPWVgr/kZ8VVJEnBPFXuQt4hoNaL1izZebDf/8PKULXJP5ogrd0iUakoO7iwur
         06FZpnC7BL6F+sZoDPKlr+361NmbXzy/p+bth1PgMrXCyzA2h+VRSDlO152DE9pTFPZa
         1WWQ==
X-Gm-Message-State: APjAAAUeXn7rHyGGcrYns/3LohqTru9vZTcvJjHzBXjpGy9gJGezDg9f
        x2wFzI4BCjjrlYCNx4cmr6e+ajleAoxjQAIq8fU=
X-Google-Smtp-Source: APXvYqyvXYhuI2Yazh9lCRour0FSQtzopBKfusSjy30DqAVcm+Y2Qocm+VCIR4H0sIhpNi+9xdYJWyVqo7CrM5CO0LE=
X-Received: by 2002:a19:5046:: with SMTP id z6mr9304775lfj.185.1560824834387;
 Mon, 17 Jun 2019 19:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190617224028.26974-1-robh@kernel.org>
In-Reply-To: <20190617224028.26974-1-robh@kernel.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 17 Jun 2019 23:27:24 -0300
Message-ID: <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 7:42 PM Rob Herring <robh@kernel.org> wrote:

> +      - description: i.MX7ULP based Boards
> +        items:
> +          - enum:
> +              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit

This should be fsl,imx7ulp-evk instead.
