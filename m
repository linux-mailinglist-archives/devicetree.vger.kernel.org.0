Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 89A8B7302E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 15:47:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726769AbfGXNri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 09:47:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:38042 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726767AbfGXNri (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 24 Jul 2019 09:47:38 -0400
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5FA8C22ADB
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563976057;
        bh=tSZqyd/3UKG9x8EIlcarZf4zf4HWCH7HlHiD/EC9nXQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=mu/gavjtChRtZ7XCGlmqLxjp58HY2x0F6BH9fayVlXqp8KbUPQ/09QRhLy7vl/7NW
         8GgzKqQQsUxkWzB6909TRnVmDob12rdcNPxBzMOOC6A6LAxwWTf5ETLi3Ir8wAuFuT
         t/XflKThN3Jz807fXbVLGx8Y7ZaQqZhvPxiJc0Q4=
Received: by mail-qt1-f179.google.com with SMTP id r6so41295644qtt.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 06:47:37 -0700 (PDT)
X-Gm-Message-State: APjAAAU1JB8ZR/tidXWKRXbX+MuuqyQGTyJW1+X5v2MdpQN7AGH6zWXN
        xp6KY40EtQbnL2ROFsgc8YikLupMPxTXBWaWCQ==
X-Google-Smtp-Source: APXvYqwJMiXcCBvfaImQYBS4b/Leeh7lF/cCqXtyPUgsaqog6UFyMDuLHIvhOJLs2oQA4er68tf0IPvdJ+PtGpqy0HA=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr12412078qtb.224.1563976056600;
 Wed, 24 Jul 2019 06:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com> <20190724120623.2385-2-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190724120623.2385-2-sebastien.szymanski@armadeus.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 24 Jul 2019 07:47:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK84CrUseGbnNRhnsOdOyvDuO0o_ycuVfnwd=vQELk_Eg@mail.gmail.com>
Message-ID: <CAL_JsqK84CrUseGbnNRhnsOdOyvDuO0o_ycuVfnwd=vQELk_Eg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: Document Armadeus SoM and Dev
 boards devicetree binding
To:     =?UTF-8?Q?S=C3=A9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 6:44 AM S=C3=A9bastien Szymanski
<sebastien.szymanski@armadeus.com> wrote:
>
> Document the following Armadeus SoM and Dev boards devicetree binding
> already supported:
> - armadeus,imx27-apf27 and armadeus,imx27-apf27dev
> - armadeus,imx28-apf28 and armadeus,imx28-apf28dev
> - armadeus,imx51-apf51 and armadeus,imx51-apf51dev
> - armadeus,imx6{q,dl}-apf6 and armadeus,imx{q,dl}-apf6dev
> - armadeus,imx6{ul,ull}-opos6ul and armadeus,imx{ul,ull}-opos6uldev
>
> Signed-off-by: S=C3=A9bastien Szymanski <sebastien.szymanski@armadeus.com=
>
> ---
>
> Changes for v2:
> - new patch
>
>  Documentation/devicetree/bindings/arm/fsl.yaml | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>
