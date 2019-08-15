Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C7D128E609
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:17:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730450AbfHOIRw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:17:52 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:45581 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730073AbfHOIRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:17:52 -0400
Received: by mail-lf1-f66.google.com with SMTP id a30so1096726lfk.12
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hw7jSAIgwN+rABLfqVTMGBvkTFu0H8DfDB1Vzehui0E=;
        b=R/3iJHmXmu4t2d6jYnZwXJFu7xRlQdiL0AFbNMTP+brJ+S84E6ruCuGVEBHQti/gRa
         38IeRutQH5E/LECRnqD33FqoSANwovOb/qZv0fv+uD6lZPVvKAIJnzwnLhqnbWNalp04
         +b0bDrWP8WZJ3EuCIB2Oz/uoLFeRv+Ib/cLyqBIbO9EJiksmb7SWopg3EKVlK+X4FVYr
         V/Y4E3ctoixt9AZibQ30MYyLa1t8aSkQ+pJ9Gg69+XCyeccigxKZ8/JNYwY3HhgxcJHz
         ZMkoV9yd2MoGlIfF+OX7OcmShgcxNw2DqDwRPCskd1Mxe7jWF/6AKEJbgip4dylfABTj
         QngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hw7jSAIgwN+rABLfqVTMGBvkTFu0H8DfDB1Vzehui0E=;
        b=Xo8r+hyVskLheeiwVzJ/w3OSHR3Eb7o416/dUaxWhJWP7OtLH+epTJJZujXYrhzBCL
         pUwJ7622xU2F/+an4WnSf21WPtyTw9xGOxuCjpx7MB87TrM2mzB2hZhQHa1Ryg9OdL5Y
         yyMGt9KOul0g5aY4508ItYH5gGdBogQ5C6UMsL2YH+Yb4MAzY7Q8FsrhBHaosE3KnJGX
         pblQZexxp8++zCMp/hNusmR3mYK7W0gf/pYD7j0ZJMyiC8yk73rEJSPVYtUvYy9G4nIx
         0Op/ymR70i9zMB420y1GZ2DSBithr7LkZmNiZ48eAcCG19Ksf4GRWXFlzFQzfXOFxw0x
         0Obg==
X-Gm-Message-State: APjAAAXtjt1CteRdCy/fml/5vN9kBft1NPePM/ncY3ZD6uAphMdaNSeM
        6E4jLIrLQX/P8Kppnhbo/4pHISGk4XKGhNrmA+U+Dw==
X-Google-Smtp-Source: APXvYqxPxwQsBMfk/OX+yJdpAw36qGQSyoTJ+sTX7VpaAD6F51EWmcwNavIJr21um/O+pXUWt7FUxh9EGojVVK0Hj5o=
X-Received: by 2002:a19:ed11:: with SMTP id y17mr1749758lfy.141.1565857070180;
 Thu, 15 Aug 2019 01:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-2-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-2-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:17:38 +0200
Message-ID: <CACRpkdZxSPutW1QNkYQ-T8cVFQDbVBcVyQM00g_8_i8WiFEMDQ@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: drm/bridge: analogix-anx78xx: add new variants
To:     Brian Masney <masneyb@onstation.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Add support for the analogix,anx7808, analogix,anx7812, and
> analogix,anx7818 variants.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
