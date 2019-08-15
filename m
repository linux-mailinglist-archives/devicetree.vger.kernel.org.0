Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5E68E632
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:25:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730333AbfHOIZT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:25:19 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:37916 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730213AbfHOIZT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:25:19 -0400
Received: by mail-lf1-f67.google.com with SMTP id h28so1134362lfj.5
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P02BSDCRijPbd9yK/6Voa9R/D56p990RHfEVvViY/Bo=;
        b=VwGU6RQs7iolsd3xhQ/RkLbxvAo8VLkErvnXtuEhQmdWmK+++AzDqwQcuwgE0X927k
         Xk1vn5vYXh3iYZc1Ah5SkL8Dn0uUnfO+jYr1jwuAmBphIqlCxmDSCATpGnl27Ai5CXWm
         YD4wkOLZrBYoyhR4aN8RpI18MKGPkk/YYbjfPEW9G4/iO/Kbz/73F0C5g9LIiZM+7NW+
         SWMSaC74D0zgMt6U1z7UYiWvzxRj+tYEBacypVR9VrNjLFL2Uy/AVDacXEKsfVm9BBZ7
         DjX2KwkQOk7M498JD3EVo4RSmkCSboE7ziaIIdobStjnVp99VmOZudUnn/aaxrywezgs
         OKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P02BSDCRijPbd9yK/6Voa9R/D56p990RHfEVvViY/Bo=;
        b=rI87uusaoISmnE4+3PxgmfSST3V9p1wb9OUhu7RPJl8nwui87uuXt4t7x2OEbq7dcm
         kToOAzzDTpUwaIZco8eX3FaCDtwRFXecgTTq/lZvXHU/5Osll7bvoUl+UYXOg8sVmNjC
         0wSfRYH8e2cJNr8z7hOEJcumww3zCqfZYD+JSZbRWiNOOswoJui9gpIYyzXVNQKjNIoW
         Ba1ND1N25vg6s9q+3FqDl+jmkUAqGFok9WNoAFs67e8G/WtJxg+1rvYx+m/OjRoZuNyd
         SSO1EG45Lm2Va4MKFZSteeVPvNiyj6RUBArn2xATDpv9NAFsEMzQ1qp/FSzVeGU+jint
         D4tA==
X-Gm-Message-State: APjAAAXxfSlmXUX8tAtuX6bFRLIUF0q98SwuypFVXI4eQ12yI6Pxl+GU
        VVdP1ia9k109trvItiIPv95+IUlNo+kjNRs0nhlfzg==
X-Google-Smtp-Source: APXvYqwuz6gUlIPqwTv4NphE9CuB8QLz9uvS26JNUXQ4p8UjA/NuXYuyNh1rl3LRryriamcIaIyf7prYAZZock0AxlY=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1613650lfq.152.1565857518224;
 Thu, 15 Aug 2019 01:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-11-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-11-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:25:06 +0200
Message-ID: <CACRpkdYkmLXOJHGy5S55r60zZVY9dg5m9j87S3wx=banFxx6aQ@mail.gmail.com>
Subject: Re: [PATCH RFC 10/11] ARM: dts: qcom: msm8974: add HDMI nodes
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

> Add HDMI tx and phy nodes to support an external display that can be
> connected over the SlimPort. This is based on work from Jonathan Marek.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
