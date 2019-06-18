Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABF214A348
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 16:04:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727584AbfFROE1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 10:04:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:41266 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726047AbfFROE1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 10:04:27 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BCDFE21655
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 14:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560866666;
        bh=RMo3dveCqEw2/IPM/6BRVp4ytVeD64jFkOa/WMbSHno=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=16cbd61xfUvIO2YxuI17Ra8Gy4fogV4eaNkPqTMKU1OvFeMgcw247sK7wWoU1iUqU
         3CRfL5c9akJqQe/8c+Vt0OzZMlCDYsdZUpQdeGT/UubuvrC9UJQQ3weuDTq7q1zDG+
         lJvUa5XKjIIdFETun92wQkLf7hSMwR/+anbIEB38=
Received: by mail-qt1-f181.google.com with SMTP id x47so15376161qtk.11
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 07:04:26 -0700 (PDT)
X-Gm-Message-State: APjAAAWR5VxAFPj50mxy2L03TPvrHzWwB1nxjOdu7Nw51qhDXobitOr5
        0uFgyB35ENRTDCAXC0ZBVGD4t9DvDfhwFnJpLg==
X-Google-Smtp-Source: APXvYqzOrUa96+8O3bfJW7/DbJXbcxEL9dnV8/sduRy2rK1nFsWFMYPJ4rHyJRojrU5jOop/AERTxM9sUOtrhr2hT7A=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr99007875qtb.224.1560866665973;
 Tue, 18 Jun 2019 07:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190617161432.32268-1-m.felsch@pengutronix.de> <20190617161432.32268-2-m.felsch@pengutronix.de>
In-Reply-To: <20190617161432.32268-2-m.felsch@pengutronix.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 18 Jun 2019 08:04:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLrm5cRh=uVs9rmfaoL97XFbRjJeCtP7w-si4i7jxfkhg@mail.gmail.com>
Message-ID: <CAL_JsqLrm5cRh=uVs9rmfaoL97XFbRjJeCtP7w-si4i7jxfkhg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: add Kontron vendor prefix
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Gilles.Buloz@kontron.com,
        Schrempf Frieder <frieder.schrempf@kontron.de>,
        thomas.schaefer@kontron.com, Stefan.Nickl@kontron.com,
        Michael.Brunner@kontron.com, Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 10:14 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Kontron is a leading embedded computer supplier. More information can be
> found on: https://www.kontron.de/
>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
>  - convert from vendor-prefixes.txt to vendor-prefixes.yaml
>
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

I applied this one to avoid any merge conflicts as there's a few
changes in vendor-prefixes.yaml.

Rob
