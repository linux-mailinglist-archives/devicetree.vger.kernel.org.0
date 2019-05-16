Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7524F20801
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 15:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726736AbfEPNYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 09:24:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:58542 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726703AbfEPNYL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 09:24:11 -0400
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BE13B2087B
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 13:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558013050;
        bh=WC/f5/dSz84BLEkLCwH5U1Ll+l1qX8eGJWnolT70naA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=mMP7Wzmthjy6/0ck2UaNN4pJP5P8nV7mxvFMGXF/TXYcTLRh/uSIQe7sLPkomaF5P
         UuK4HcS5R0vgmx2B3+OJsYBGXM4bD2J4a6cEsFeaAZLmsQLxmZcHEIU/Ni+Dbe+Crd
         OOycWYTzu9X1HBX4OX90uNcziIg7l7XeU9A1xw2M=
Received: by mail-qt1-f178.google.com with SMTP id a39so3857677qtk.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 06:24:10 -0700 (PDT)
X-Gm-Message-State: APjAAAWu/38P7UlqFQ2LQON46nu/+IKyWuWOStqDFHkA+yZ2s0ReRheT
        NhCOhxew8IKXbkV0HP38qVo6a4jLlDOgO8baLg==
X-Google-Smtp-Source: APXvYqwyjeW+HDz4tETM+qCkBYtyxCUgfVIbX6tfJRijPiTqWWE5F/OFxbxutdZT+809kJ9yZ7QBXnSwzANIq6CG5w4=
X-Received: by 2002:aed:2471:: with SMTP id s46mr42283987qtc.144.1558013050035;
 Thu, 16 May 2019 06:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
 <a0558cf83011d21c4f44fecc078dff1e67cdbe9d.1557993523.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <a0558cf83011d21c4f44fecc078dff1e67cdbe9d.1557993523.git-series.maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 16 May 2019 08:23:58 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKKE1XT12SdqG=nUnW0-F9Nb8VNxHq0jwm_AYowRKjJOA@mail.gmail.com>
Message-ID: <CAL_JsqKKE1XT12SdqG=nUnW0-F9Nb8VNxHq0jwm_AYowRKjJOA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: sound: sun4i-spdif: Document that the
 RX channel can be missing
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
> The H3 and compatibles controllers don't have any reception capabilities,
> even though it was never documented as such in the binding before.
>
> Therefore, on those controllers, we don't have the option to set an RX DMA
> channel.
>
> This was already done in the DTSI, but the binding itself was never
> updated. Let's add a special case in the schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Removed the expanded items description and rely on yaml-bindings tools
>     to fill them
>   - Fix typo in dmas property description
>
> Changes from v1:
>   - switch to a draft7 conditional
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 38 ++++++++++++++++++++++++++++----------
>  1 file changed, 28 insertions(+), 10 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
