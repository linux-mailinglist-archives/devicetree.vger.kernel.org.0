Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DB528E625
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730464AbfHOIXo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:23:44 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:46068 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729668AbfHOIXn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:23:43 -0400
Received: by mail-lj1-f196.google.com with SMTP id t3so1509744ljj.12
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t0NopUkqBTLA90SLW4pHyzSS/xf0ZSXYWDKGwtJAIsY=;
        b=XfZzDLa/pb4I6O618ihMETOAk22ZCfhPAN12JvjQDq86genpOOd9UIrjs1jDPfXHKv
         C4XbzbKfduo6gxH7+9d535juc4lDa3KVomsptlT5IuBLZAjjZa9RDW+DaFQ5jw+Hd6qz
         mvNDo2UoQAGTnFAb/z0MOQcgu+YNlE2gKQ/YaLvbGyKa55lgeWkOqmclOig+Qaw/vlFe
         cNlUE6ev+m2Z4fhHUkF3Fc5Qp0FShH4ZtRp0bE3Vz4mlR/Xl4QSWA+RxNjkVmDlNnU3c
         M9PVoAFWM/0SAqsGo/gmz/i8D6JE8b5LUjHeOHZCBhzPxG4uQmcxIyE7hoOUmdnT/gLF
         SnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t0NopUkqBTLA90SLW4pHyzSS/xf0ZSXYWDKGwtJAIsY=;
        b=WBi3MTjb9qJZYMZXi2SoyUesn2ay7S6CInMBzpu5kuFexIeHnaGviUNueYqJ1WcegV
         powt8c3YvS+hGTXKgzt7fDJAsEY6iP0N64uPNHXQ1nqcIUkoI3Z2YrCDBTJW96ToBoTj
         F88L6Yv4MQBFZxFKESh6H3xsGfCJMwubF8sf7YDk9REH6KeHCeieRUAbTHdWvkjC7/5T
         XlkyCER1Dvsz65LVwNpzlddN7NYaAco7HDwCAZEjE1A1SXvTnPnmUe4SqqlPhEcGkXu8
         OcGlvw0FZ/dEFKZKzUfILk4dm7DD9/q2loFg+qJnSL6TLkjAomkwOqgRoQDxCBnDOb1e
         PvHg==
X-Gm-Message-State: APjAAAXRR32aT4CzJumX0vXEEnWSpYZSot5wu/37PBLGI2Za001DSmbu
        iCOWX9mtIC3TZBr5x+JM/d0vVf2OYXi9Jos3VmsPwg==
X-Google-Smtp-Source: APXvYqzE4/aMh5whMI0MclqVZfrD6ndHr/RkELyc9WknR09MC3TLKaJoB0cexdnz/NmuFUXRKZuieK+MZxg1NivzFuo=
X-Received: by 2002:a2e:80da:: with SMTP id r26mr200669ljg.62.1565857421866;
 Thu, 15 Aug 2019 01:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-8-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-8-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:23:30 +0200
Message-ID: <CACRpkda3uCk05FNfeesa6ZgL4MPcQPwjv506jMNmvMkvwCnLdg@mail.gmail.com>
Subject: Re: [PATCH 07/11] ARM: qcom_defconfig: add CONFIG_DRM_ANALOGIX_ANX78XX
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

> Add CONFIG_DRM_ANALOGIX_ANX78XX as a module so that the external display
> can be used on the Nexus 5 phones.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
