Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 972C963AF3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 20:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726636AbfGIS3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 14:29:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:51902 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726618AbfGIS3Y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 9 Jul 2019 14:29:24 -0400
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9C28320665
        for <devicetree@vger.kernel.org>; Tue,  9 Jul 2019 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562696963;
        bh=pUZIeC1S9z7OJMHABuIQ2/WFjaI1KT27EcpgVYoUwaA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=2vnakC3yYM5AyoyldeQx0/K4PMoIrqyyubnkr1KBLlSHia56aVzXLqFQN5GISTAPL
         QL6BmNAkPzIildPxSZFm0QZZ7bLlOUfNDyGyukw9scj6hgsgE6IoVs8+yFr1UPnuHT
         zgiu5PLf9iuOPckZF3gJpxTKI/1/VbQOep/G7mlY=
Received: by mail-qt1-f169.google.com with SMTP id 44so18781688qtg.11
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 11:29:23 -0700 (PDT)
X-Gm-Message-State: APjAAAXVXrDMobXiPssn/cN/uz3qKKrcjSXzGlhasPobqkHCpKRaaaS2
        yeVKbAipcBjvqqvE40eG+HX1uPCy65PpkKeDIA==
X-Google-Smtp-Source: APXvYqwbmrL/V//0g8rzcfG0Up30/DlFA0VgMobiAbQUSjeUKKolaQXczlK0u67eBPBMMb1j71KIkj8Jborh0LxqxNM=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr19874524qtb.224.1562696962930;
 Tue, 09 Jul 2019 11:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190618212229.32302-4-robh@kernel.org> <20190709171508.GA10127@Mani-XPS-13-9360>
In-Reply-To: <20190709171508.GA10127@Mani-XPS-13-9360>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 9 Jul 2019 12:29:11 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
Message-ID: <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to json-schema
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 9, 2019 at 11:15 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Hi Rob,
>
> On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> > Convert RDA Micro SoC bindings to DT schema format using json-schema.
> >
> > Cc: "Andreas F=C3=A4rber" <afaerber@suse.de>
> > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > Andreas, Update the license on this one too to dual licensed if you
> > want.
>
> I'm fine with GPL-2.0. Since there isn't any other RDA specific patches
> in my tree, you want to take this patch? Else I have to send the Pull
> Request to ARM SoC folks with this patch alone.

Okay, I can take it. The preference is actually dual licensed which is
why I asked, but that can be done later.

Rob
