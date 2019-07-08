Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E9185628CF
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 21:00:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728562AbfGHTAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 15:00:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:54340 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727028AbfGHTAu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Jul 2019 15:00:50 -0400
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0D72721848
        for <devicetree@vger.kernel.org>; Mon,  8 Jul 2019 19:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562612449;
        bh=uGnc3RdhO6+Sq0J7DZ+i0A59tIPFnzrjqH6S+XrEzWk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=GgGFyI6i0VPptKNlsOVE1jhu+9W/EWPekGilLobTvTeIYxC5wM+RdMYcJyKd/xUp/
         O4GaMQ0SKEFZFfm9PRpzeRnHfRbTpZJ1j2VBjhLmLS12ZKP5C3R3gC/OwFL4u0u7e+
         ELAMcBWPg4BIVcDzI4KtYFlclJEN3GpYVzgjyW9s=
Received: by mail-qt1-f179.google.com with SMTP id j19so19072674qtr.12
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 12:00:49 -0700 (PDT)
X-Gm-Message-State: APjAAAVueV5f6DInV9qjlvkmimH7rGucQlwuEVxzGkWWygS71QcjHVjZ
        +ImdkiEkCyTu9g0CCrl3Kbp5ZExhQ4HtSzGFqw==
X-Google-Smtp-Source: APXvYqzlSTQnpnRv/CV5vQu5Z8IXUWZ6zkbM3J87cJIxmi39a/LLXEvuqPj3FTtNG7bNz9JcifmEnofntf3eTfq1nLk=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr15266589qtb.224.1562612448256;
 Mon, 08 Jul 2019 12:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190707180852.5512-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-1-laurent.pinchart@ideasonboard.com> <20190707181937.6250-14-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190707181937.6250-14-laurent.pinchart@ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 8 Jul 2019 13:00:35 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLJy=UCeQ_Ex7tFh2OjtitNFVjT4v=PDZSbseva+ZrGDQ@mail.gmail.com>
Message-ID: <CAL_JsqLJy=UCeQ_Ex7tFh2OjtitNFVjT4v=PDZSbseva+ZrGDQ@mail.gmail.com>
Subject: Re: [PATCH 17/60] dt-bindings: Add legacy 'toppoly' vendor prefix
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 7, 2019 at 12:25 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The 'toppoly' vendor prefix is in use and refers to TPO, whose DT vendor
> prefix is already defined as 'tpo'. Add 'toppoly' as an alternative and
> document it as legacy.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2514463f2c63..d78527eb8254 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -867,6 +867,8 @@ patternProperties:
>      description: Tecon Microprocessor Technologies, LLC.
>    "^topeet,.*":
>      description: Topeet
> +  "^toppoly,.*":
> +    description: TPO (legacy prefix, see 'tpo')

Add 'deprecated: true' also. That's a new property in json-schema
draft8. It's not used for anything yet other than documentation.

Rob
