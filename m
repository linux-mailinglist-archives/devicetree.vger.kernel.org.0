Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D40513FB602
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 14:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231792AbhH3M2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 08:28:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:42034 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230423AbhH3M2w (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Aug 2021 08:28:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BC6A60FA0
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 12:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630326479;
        bh=v7MwI/XeB72qqwU8rS34TthIHCEVN+PHg88o9IbMgJY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=gYIbE9dTr/AdTNhQn0Q+ozhrCAYi5TgNuMKAnCtOcxXxaE4xf4o1F8+pgtVWC/Af2
         m0s7aqaxc//oaDeseY6Gt5x5/KU6/PZw69Lfy0oZiaUEAGACxk1HYXHpayUG8jeogn
         JvWTLBNHKXVKTC/MmjYA2HmfaYy5TS5GvL4mm366xAMjfMc7h0eqdlbVTzQDQ/SWzx
         0QocVfRjV4RYd4l6GCkbKRjlnkOq/dD0vhY0495Lv5TpjBeeNAPdZkerxChIVHHphG
         DMMz7aRs4wT6vrVEtSKro2G7qx1WnkeNUbpa8FRJpGYjrgwIgNWMEJ6w9GuC1IZH3J
         Mox2q9oYZBNiA==
Received: by mail-ej1-f46.google.com with SMTP id ia27so30722424ejc.10
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 05:27:59 -0700 (PDT)
X-Gm-Message-State: AOAM532Scw0aEYhsrt3ZVmoWn3FIuBv2cgDmkkD4EE5l6qOy7vBHbr9u
        rtoS0zTPL4m1ExkzoOsmD4hJL7Gatn2jb42GKg==
X-Google-Smtp-Source: ABdhPJxHvlqKYhELbS+l9fLJPyT3nsoI0TfZXUn+97LPVC1cv4HMuhSNIBBkPANJQEQo4u6QzvsP+E1CXIJVQuYCNq0=
X-Received: by 2002:a17:907:b06:: with SMTP id h6mr23180827ejl.130.1630326478034;
 Mon, 30 Aug 2021 05:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210829134224.58987-1-david@ixit.cz>
In-Reply-To: <20210829134224.58987-1-david@ixit.cz>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 30 Aug 2021 07:27:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK5TY2-8ReFZ87Ecz48Bu9uCm3d9jmXsVmRFqY5tme3hw@mail.gmail.com>
Message-ID: <CAL_JsqK5TY2-8ReFZ87Ecz48Bu9uCm3d9jmXsVmRFqY5tme3hw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display/panel: ilitek,ili9341: fix indentation
To:     David Heidelberg <david@ixit.cz>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 29, 2021 at 8:43 AM David Heidelberg <david@ixit.cz> wrote:
>
> Fixes:
> ./Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml:25:9:
> [warning] wrong indentation: expected 10 but found 8 (indentation)
>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../devicetree/bindings/display/panel/ilitek,ili9341.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

There's already a fix for this queued in the drm-misc tree.

Rob
