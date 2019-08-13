Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0CB868BA6E
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 15:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728229AbfHMNgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 09:36:19 -0400
Received: from mail.kernel.org ([198.145.29.99]:57698 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728708AbfHMNgS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Aug 2019 09:36:18 -0400
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 088C020874
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 13:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565703378;
        bh=nmpFtbTjb19ZTZT87e6AK+s+viettF7zvqv/K1p9Cqo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=vt2BSmoJyNKKO4SI79tFbjUy9/WOXV2QfUzcAPKajEJZcYc+UcI+oa4Lj+wIagFTz
         DCboRDh1ophSN4YWPMnMSEMCu1otITfmZSuLLji8o4e+CA/5gzFYc/A2UiYCjN3Xxo
         Cn/zrtF6bLCO1cGjz5WnzEOmTb5KaS4UEwTSusGk=
Received: by mail-qk1-f177.google.com with SMTP id 125so6596726qkl.6
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 06:36:17 -0700 (PDT)
X-Gm-Message-State: APjAAAWdiDye/OM48uWSuZ7VERNN+rebEOiMTVOYMd2Ea6GdKaC9bZ23
        l7G61iP02O7r50qJLktOi5HscJSuOrydIPadcg==
X-Google-Smtp-Source: APXvYqwpfh5bMhHyB6vB1pzd7n1Vwqw30R85w02ibqi4bz0YGLZcgMCRWKhBC91fIfnr0Z0e1jVizuPMSMNcsYw+qBg=
X-Received: by 2002:a37:6944:: with SMTP id e65mr31258993qkc.119.1565703377198;
 Tue, 13 Aug 2019 06:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190813133311.26441-1-laurent.pinchart@ideasonboard.com> <20190813133311.26441-4-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190813133311.26441-4-laurent.pinchart@ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 13 Aug 2019 07:36:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLaUrYOrn2hq8Lhb-7muf5rQOTMo=CgHPrM=LDHodPHWA@mail.gmail.com>
Message-ID: <CAL_JsqLaUrYOrn2hq8Lhb-7muf5rQOTMo=CgHPrM=LDHodPHWA@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] dt-bindings: display: panel: Add bindings for NEC
 NL8048HL11 panel
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 13, 2019 at 7:33 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB
> parallel data interface and an SPI control interface.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v2:
>
> - Add reg and spi-max-frequency properties
> - Make the example pass the checks
>
> Changes since v1:
>
> - Convert to YAML
> ---
>  .../display/panel/nec,nl8048hl11.yaml         | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
