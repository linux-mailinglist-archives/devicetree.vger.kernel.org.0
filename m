Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1458E672
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725977AbfHOIea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:34:30 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:39232 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730510AbfHOIea (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:34:30 -0400
Received: by mail-lf1-f65.google.com with SMTP id x3so1147887lfn.6
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7i16DpGe/WrEnWRFWrw6WDyR2YmJ49EsxY0UWyxcbfk=;
        b=TVUoUOIaS51Agv5l0PMa3o6r7lDWfkGGfAKJhDlNLIl7488xPFjP4Zc62E1GcUW1VV
         o0tMKL+wXnt1XdSF1KbK0Lt2NPVz37E6SBBibznbqskqTNxpsTEGO/IN8IWSuP8NEn+L
         YweJ7nuU+lmreFBFY/Jygo7zNIKriXEtK9XOLtxp1wnYaEzcfK6K91ZsV5tKqCLz0pji
         +j+VLUGXtDrQ6JvziL1YCvfd7+ThtaWoW8fly7i71IZV69lt92FEoue8vUkPf1PR+fIT
         BuuAkU61fn6Twlw0EMMwqgfTgHrOwgjtkdqRSq+SUTWsfkxUHCcsuL1aUGE1euu6qHxW
         QxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7i16DpGe/WrEnWRFWrw6WDyR2YmJ49EsxY0UWyxcbfk=;
        b=IvaGEfsVzShbRayCtdSj980Ul0A4Hwuh4t4yAQh4iLtoSLtfZOp6vCYEEWuiNzjKwH
         5kuJFlmT1P7IJ0sQcCwPkdzjYtO1zAT31SPnJ0mFf9MNlZ2T/zACXuQx51+TqlVn7mZf
         pya52D5xKgJaBMOQLbLVtMzk8pOSk/lK8MhGXTz4dJttJNZZ+12iAZqef+n7eRcfHQz1
         k+8V0YONbYs6xeetSbIlv8ilwXJz44LnepUNLw1hUijuSxjVUFVYKPZOxjN+jNBML+KY
         kR/DiZbRsZL7z62+bVEtUZpw3n9iWSUYfte/v+DLblcQ4bAntiX5EAiG07hMblukXfyD
         o+XQ==
X-Gm-Message-State: APjAAAV3Yeqr005kwiy4MWEpCLIWSVKheSvg1t2rx/TGDeNCkoFLOB3t
        amMjiuoF/XJu+zrd71oc4ayyPSRPilFeQtd3qKIbCw==
X-Google-Smtp-Source: APXvYqxb0UB6/giI18HHjmcKPLqMYP0VUKp7BEJ9Az/O76XbGpUEV3T+utaGsTe3hzjxU1rcsCu+m7ocZF57FmoUKmk=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1629302lfq.152.1565858068523;
 Thu, 15 Aug 2019 01:34:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-10-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-10-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:34:17 +0200
Message-ID: <CACRpkdYU-6LvFKRkj0yMMCmAnX0XtGe7rMwbXbhf2GCp77Ciyw@mail.gmail.com>
Subject: Re: [PATCH 09/11] ARM: dts: qcom: pm8941: add 5vs2 regulator node
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

> pm8941 is missing the 5vs2 regulator node so let's add it since its
> needed to get the external display working. This regulator was already
> configured in the interrupts property on the parent node.
>
> Note that this regulator is referred to as mvs2 in the downstream MSM
> kernel sources.

When I looked at it it seemed like this convention is used for power
supplies that appear on both the main PMIC and the "extra (boot? basic?
low power?) PMIC that the main 80xx PMIC has mvs1 and the
other 89xx PMIC has mvs2.

I suppose it is named "mvs" on both PMICs and this is just a rail
name so as not to confuse the schematic?

> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
