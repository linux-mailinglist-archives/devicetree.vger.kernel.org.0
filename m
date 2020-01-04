Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 87F691304A4
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:25:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726234AbgADVZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:25:18 -0500
Received: from mail-il1-f193.google.com ([209.85.166.193]:42370 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726240AbgADVZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:25:18 -0500
Received: by mail-il1-f193.google.com with SMTP id t2so24023016ilq.9
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:25:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B+QRNOYzxwByERqG97+Z/p4ZedPlWZDV5EHbZiPaR+4=;
        b=hPd1SUicxWgwg7Ad7LZT6sFC+3APFAv/yac7quBL0q6J95spQkgCOAO1AoNiaeG5eC
         DyiotErtf4WMaTNuOmu21uA6fWiQsMHMR8YbmzHNMkJYadcI8YHlCB+dq3I9oe8N9coM
         gGMsYNvzeU4m85c8BsZF71PB37Ld+DnMvJVLaaCuYdIFEY8g2A0eNH1wBKcyaeOgafKF
         wG5BFYPMeTmWlaJRwjUdPa1yPbMSm5ENXoYdieBz06KwSZQEiFCvSgNDDWdCOm6lc1XH
         LOHO/ag4xCr/5l9XBkP+ogrK5B8ay0m9By7XQsDYxnxsn44jQ+68xE8qxxUydmviA/4e
         aCIA==
X-Gm-Message-State: APjAAAVspQCrC8KIrKEZoLFgHnov9MZPdMEpwvM8iuCA3NcujL2SFVtw
        95ZINsWcJa0IW5yXvni9R9HjGcE=
X-Google-Smtp-Source: APXvYqyie4PzPoUUWze5OlsS6QaP74rGWPxOl+sMQoNXsb65RhzvNsK0x43zpwGtaMPoHtNYdj/i/Q==
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr85266830ilq.192.1578173117232;
        Sat, 04 Jan 2020 13:25:17 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id k78sm22255823ila.80.2020.01.04.13.25.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:25:16 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219a3
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:25:15 -0700
Date:   Sat, 4 Jan 2020 14:25:15 -0700
From:   Rob Herring <robh@kernel.org>
To:     Yuti Amonkar <yamonkar@cadence.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kishon@ti.com, robh+dt@kernel.org, mark.rutland@arm.com,
        maxime@cerno.tech, jsarha@ti.com, tomi.valkeinen@ti.com,
        praneeth@ti.com, mparab@cadence.com, sjakhade@cadence.com,
        yamonkar@cadence.com
Subject: Re: [PATCH v2 07/14] dt-bindings: phy: phy-cadence-torrent: Add
 clock bindings
Message-ID: <20200104212515.GA11395@bogus>
References: <1577114139-14984-1-git-send-email-yamonkar@cadence.com>
 <1577114139-14984-8-git-send-email-yamonkar@cadence.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1577114139-14984-8-git-send-email-yamonkar@cadence.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Dec 2019 16:15:32 +0100, Yuti Amonkar wrote:
> Add Torrent PHY reference clock bindings.This will not affect ABI as
> the driver has never been functional, and therefore do not exist in
> any active use case
> 
> Signed-off-by: Yuti Amonkar <yamonkar@cadence.com>
> ---
>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml         | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
