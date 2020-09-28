Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4C4527B1AC
	for <lists+devicetree@lfdr.de>; Mon, 28 Sep 2020 18:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726409AbgI1QT2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 12:19:28 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:38668 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726344AbgI1QT2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 12:19:28 -0400
Received: by mail-oi1-f193.google.com with SMTP id 26so1931553ois.5
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 09:19:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5QvGyJdEh6SktPbgKuMfP2oSc7zdtqyuifU57bQ9FzE=;
        b=AGUrEhPvDXUN5P41bAvhcKGjg6ujWv2mhdh4ytsBtjfp+yyotqnnZXy8lLzhmgWsn5
         UMlIGNy+q5rHBv1dtDqB96DmwPbUwIy1TI4C622Qqpgmun0Wm/DoIIjwEjVaCh7ntfLT
         jXiu1JWDvlRqyInLhZGgYLPiQU0hSPC+Smaz4a/YKzROzFzVPDvQ3gBCB73H3e1DxoQS
         QrbfHgayNW1kw4dM14X2qacAA5hVKx4qPQ9SH2efUAt86DawFOXnqVhZfLGf5kYrJGWC
         IIQa3A6m9KMfEBMPG4YdXKNfJ78XwGdeS7tQngx1g5N5BcEOrQlMVkhZLYGl3QRW2SuB
         SOjA==
X-Gm-Message-State: AOAM532YYtqsq4tt1/iCt9134jcA9AQW1ZCcUBwSK4q0tUzgN7VQVNgZ
        VwXYOpxJfHRc8aby+Ypltg==
X-Google-Smtp-Source: ABdhPJyaPtqYZhBz4E3FhfSK8HLhQt5AT2VauV82TLwdmC8xkmZGAQijc1YwFoCRMImE40p8wQtVQw==
X-Received: by 2002:aca:58c3:: with SMTP id m186mr1306320oib.139.1601309966976;
        Mon, 28 Sep 2020 09:19:26 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m3sm338086otc.72.2020.09.28.09.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 09:19:26 -0700 (PDT)
Received: (nullmailer pid 2845384 invoked by uid 1000);
        Mon, 28 Sep 2020 16:19:25 -0000
Date:   Mon, 28 Sep 2020 11:19:25 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <wahrenst@gmx.net>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Scott Branden <sbranden@broadcom.com>,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm2835: Change firmware compatible from
 simple-bus to simple-mfd
Message-ID: <20200928161925.GA2845224@bogus>
References: <20200924082642.18144-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200924082642.18144-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Sep 2020 10:26:42 +0200, Maxime Ripard wrote:
> The current binding for the RPi firmware uses the simple-bus compatible as
> a fallback to benefit from its automatic probing of child nodes.
> 
> However, simple-bus also comes with some constraints, like having the ranges,
> our case.
> 
> Let's switch to simple-mfd that provides the same probing logic without
> those constraints.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml        | 4 ++--
>  arch/arm/boot/dts/bcm2835-rpi.dtsi                            | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks!
