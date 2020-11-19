Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E5222B8F7E
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726073AbgKSJyk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:54:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725888AbgKSJyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 04:54:39 -0500
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com [IPv6:2607:f8b0:4864:20::b43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED31C0613CF
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 01:54:39 -0800 (PST)
Received: by mail-yb1-xb43.google.com with SMTP id t33so4642379ybd.0
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 01:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=eDVAIVdOU1MuWiQuY5T1RWB1uDIPdBXRwRv4/3oTVQQ=;
        b=udBbIM9ki4eNu4x5h9G8GwxdBSGr9QgbuH8GMg0EZ0pZPDvGc4U96VI/oGaAxVY+K8
         hrRUrJVqpQGXrjOLTg3iBP9qrsIxa8QbOoLPDrl4o0CAEd1lU07ni0wQgPw37QmugAtM
         S/c3VpD+oBF4oDs5CfwDODS2zTUeGYUQQ72ueELMH0SxhhoJt5mmL7e/FqlAThd600Mu
         NgDjiCQ7x5/VGA6JbpXOsaZo69FW6H4pxfK3FRJsvNOSTN9iB53jW5qEQNRtp2mEmURn
         uphasw3YFZF0J00f62quO9oVevoffqGSRJ5j+/mRAxgCoXsBj7j5vBFjgSHie7DjjsU2
         K5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=eDVAIVdOU1MuWiQuY5T1RWB1uDIPdBXRwRv4/3oTVQQ=;
        b=akr8M5n706qZrhpOOQapCHx7KGwYUPpHqmMgiyjdTXA+clWnuo745C4dV9o9zgBGeQ
         9paK/KcXPeLMQJBMuQOksP/juW4S14Fr8yEoLuCmuOWspyz0TpacjiFfEna3wDWPBY3n
         LB8vJG/IDxDWBICMUmLlAWlfC42BITVsmEJpoNumGOQD9orp5ihrC3j42b4RJkQXkzgX
         eCoy6Ij1/E7GTxB3spBwGwa6s39OGpnLJIkarTsn++fB4RVgpIvhPePEAP8cMWz4agQ7
         ZDyPTM/zAxerXctIvZf/79Gy+X09VvHZuro8ZxU4L9H5Hm2K4lrG+JfLhIHH6kxEk25s
         EPzQ==
X-Gm-Message-State: AOAM533zlSM/LpAhLRJa9LijTqgIPgUCcAyNp0cWmawEQZS7oo0mqeLa
        lSrULzNxbRA1maUFsDPV44NzyMc8ohsyomhH4PQ=
X-Google-Smtp-Source: ABdhPJykIzvJ6cJu2PnEAlCnmiftRVg488hP7iXHzN0rPtNYxIhRcAJz1W/wtydipcwVbIHazj/8/Kj7Zud6UK1ibfc=
X-Received: by 2002:a25:b68a:: with SMTP id s10mr10042558ybj.455.1605779678698;
 Thu, 19 Nov 2020 01:54:38 -0800 (PST)
MIME-Version: 1.0
References: <20201118132440.15862-1-zajec5@gmail.com> <20201118132440.15862-2-zajec5@gmail.com>
 <d09b2767-66df-fee6-cfc8-3eba116e10af@gmail.com> <3d66b723-3817-3fff-a464-8c04d9203f18@gmail.com>
In-Reply-To: <3d66b723-3817-3fff-a464-8c04d9203f18@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date:   Thu, 19 Nov 2020 10:54:27 +0100
Message-ID: <CACna6rwio99dP02Esi44FqEK4NGybvFzS5Y_s=q5P-ynvVHodg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMB binding
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 18 Nov 2020 at 22:47, Florian Fainelli <f.fainelli@gmail.com> wrote=
:
> On 11/18/20 1:45 PM, Florian Fainelli wrote:
> > On 11/18/20 5:24 AM, Rafa=C5=82 Mi=C5=82ecki wrote:
> >> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >>
> >> Broadcom's PMB is reset controller used for disabling and enabling SoC
> >> devices.
> >>
> >> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >> ---
> >>  .../devicetree/bindings/reset/brcm,pmb.yaml   | 51 ++++++++++++++++++=
+
> >>  include/dt-bindings/reset/brcm,pmb.h          |  9 ++++
> >>  2 files changed, 60 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.y=
aml
> >>  create mode 100644 include/dt-bindings/reset/brcm,pmb.h
> >>
> >> diff --git a/Documentation/devicetree/bindings/reset/brcm,pmb.yaml b/D=
ocumentation/devicetree/bindings/reset/brcm,pmb.yaml
> >> new file mode 100644
> >> index 000000000000..ea78ab629c45
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
> >> @@ -0,0 +1,51 @@
> >> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/reset/brcm,pmb.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Broadcom PMB Master reset controller
> >> +
> >> +description: This document describes Broadcom's PMB controller. It su=
pports
> >> +  resetting various types of connected devices (e.g. PCIe, USB, SATA)=
. It
> >> +  requires specifying device address.
> >> +
> >> +maintainers:
> >> +  - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - brcm,bcm4908-pmb # PMB on BCM4908 and compatible SoCs
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  big-endian:
> >> +    $ref: /schemas/types.yaml#/definitions/flag
> >> +    description:
> >> +      Flag to use for block working in big endian mode.
> >> +
> >> +  "#reset-cells":
> >> +    const: 2
> >
> > I believe we would need a description of the #reset-cells property that
> > indicates what they do.
> >
> > Other than that and the build failure below:
>
> I don't know how to express constraints on each of the cells, but since
> they are represented by 8 bits you may want to add mininimum: 0 /
> maximum: 255 constraints in the YAML binding.

I don't think there is syntax for that, I'll just use descriptions as
other bindings do.

--=20
Rafa=C5=82
