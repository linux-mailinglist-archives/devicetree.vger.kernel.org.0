Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F13C39C358
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 00:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbhFDWNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 18:13:41 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:36755 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbhFDWNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 18:13:40 -0400
Received: by mail-oi1-f174.google.com with SMTP id a21so11238863oiw.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 15:11:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hvNxlCSeS0XE9BK29o80IQO+DcuEB6b7mn9ETiuJ7sU=;
        b=QuGq9HHpye3hBdcKB5EHjis7RYbTTt6ECxI6IHeUAEi8Hy8UzwVScvXr8saa719wah
         jAhCeGg4mUjEe1z1jHRXYlJ87X2+TNNElpca2PMSYYtYiC9z2bj1gnJchIxqEMFBy8Is
         izMcwTeoHVB+vKeEDPtx2/kLY2iIiMFJO5fNayw5W6FrFbY/Tq/QRk+leyrjNkSA54vn
         5AdhaGxUio8UG1ouplHzqUZkNVVI4mTXHdMgRPkJdABrLp90ypiUFarvbaVx56fdjgGn
         7a3E2GYBgK4e0akS7vIxq8uD8bpeDxbTuH5Bjgtqi2F8EVVT68bd+zuqG+ocZSqoJhCs
         VyIQ==
X-Gm-Message-State: AOAM5300D2Yg6eKqvX18fnI83cDG1npjKcT5hVTmnRBKWvI409mjEzGr
        +EY/YrKRt6WP+oZPp0rZJw==
X-Google-Smtp-Source: ABdhPJwm8y+HEMNIXQonzZ5LbWgZ0wWx6AghVxtUTh4wfJB3z9hWeE/XtJcHUx8PQc/gqMHGKUVmbQ==
X-Received: by 2002:a05:6808:13d5:: with SMTP id d21mr4444589oiw.31.1622844702691;
        Fri, 04 Jun 2021 15:11:42 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q22sm731733otl.11.2021.06.04.15.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 15:11:42 -0700 (PDT)
Received: (nullmailer pid 4021715 invoked by uid 1000);
        Fri, 04 Jun 2021 22:11:41 -0000
Date:   Fri, 4 Jun 2021 17:11:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/6] dt-bindings: firmware: amlogic,scpi: Convert to
 json schema
Message-ID: <20210604221141.GA4021566@robh.at.kernel.org>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
 <20210604205710.1944363-4-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604205710.1944363-4-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 21:57:07 +0100, Sudeep Holla wrote:
> Convert/merge the existing text format SCPI binding additions for
> amlogic,scpi into the common arm,scpi json scheme.
> 
> Couple of things to note:
> "amlogic,meson-gxbb-scpi" is always used with "arm,scpi-pre-1.0" and
> "amlogic,meson-gxbb-scpi-sensors" is used always with "arm,scpi-sensors"
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/amlogic,scpi.txt  | 15 ------------
>  .../bindings/firmware/arm,scpi.yaml           | 24 ++++++++++++++++++-
>  2 files changed, 23 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> 

Applied, thanks!
