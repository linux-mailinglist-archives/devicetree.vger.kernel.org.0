Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D840020806
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 15:25:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726742AbfEPNZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 09:25:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:58844 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726717AbfEPNZJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 09:25:09 -0400
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2E82020862
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 13:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558013109;
        bh=WNuqEHpbsjF3V2nlPtAGov/5DMwCSoLWptkVucGbyVY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=wzEn6pbNaiEqoysDMjMLeEIiedjNG5ImjbiQPwVntaXLoLda3QCC2w+i9LI9k4DOU
         C2KElw9E0Kd99Rgn7PTOmiHSCy3SyWGlaHFfGjSasUgzJNHT3Ig8RL0D/M3qXSEGI0
         OxgBaxmQiI15Yl7Fp9DYiiFOFoQsdYhVuV+fsFNg=
Received: by mail-qk1-f180.google.com with SMTP id p18so1659580qkk.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 06:25:09 -0700 (PDT)
X-Gm-Message-State: APjAAAWFu2rZufYLphm3t1t5j+A8htPUU9ty7a7JyINM8rUq2yjDNuQp
        SIKMTYYyyPqH8/pJayRYjyMX1Hwqt9whdLSVdQ==
X-Google-Smtp-Source: APXvYqzhI3LC1U9lpGnWZZm7DhGgRFFQYomJQssdXmHE06C6cfyvv1SGkWtW749ihce0y9GQ66xFIrA1wtO+q2ZhKuQ=
X-Received: by 2002:a37:7fc3:: with SMTP id a186mr37652270qkd.65.1558013108453;
 Thu, 16 May 2019 06:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 16 May 2019 08:24:57 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+4+LD+x-bd9iCwA4bGtRUjdqo7=g4HgGzcYTsZG17KLw@mail.gmail.com>
Message-ID: <CAL_Jsq+4+LD+x-bd9iCwA4bGtRUjdqo7=g4HgGzcYTsZG17KLw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: sound: Convert Allwinner SPDIF
 binding to YAML
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 2:59 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs feature an SPDIF controller across multiple SoC
> generations.
>
> However, earlier generations were a bit simpler than the subsequent ones,
> and for example would always have RX and TX capabilities, and no reset
> lines.
>
> In order to express this, let's create two YAML schemas instead of the free
> form text we had before.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Add comments
>
> Changes from v1:
>   - Merged the two schemas together and used the draft-7 conditionals
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 101 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt          |  42 +------------------------------
>  2 files changed, 101 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt

Reviewed-by: Rob Herring <robh@kernel.org>
