Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06F221304A5
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:25:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726240AbgADVZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:25:36 -0500
Received: from mail-io1-f65.google.com ([209.85.166.65]:33040 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726170AbgADVZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:25:35 -0500
Received: by mail-io1-f65.google.com with SMTP id z8so44748472ioh.0
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:25:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lBc75v5k8yr7YkZSPENL1U+v5GuB9Phe9x6JuGau+/Y=;
        b=X6rJntEOJH3pX5q8fWSJ0u0IbW98FoXjGjG0JzGkaVU30iMae6JySCvqosy8dMc2dP
         G62RHbwI/Xy0AnJJxkqUqFPsZlmuk2LObevTknothKGArgdRvOBQsvks9jjB8BGIkKK1
         P+akJaNIZ6xC/uHMjDkhsajvZEmrTvVmurYzEe/s8OCgCTuFS2CDWnvx0NmmXjHk4+yS
         wEW1qRQ6R7/elPvYGUrx582/dPS/JBnXMT4B/YAqNX2510nXnSENminGeRttMghQZlsh
         9gwPt5Wd8bCtYN+1TAyaeskmVAA+ulWwun1ACtCNuVnSOSyI0eKbWglHsnQAnNz7ioMj
         WnLg==
X-Gm-Message-State: APjAAAWV4Ivs5zWbtm6BRZoKfTNP5YpB8llah67w6vYBlA7Wkh6Kof1V
        JYdVDiayW5vLgIQGyOyOODYim9g=
X-Google-Smtp-Source: APXvYqwllIUzt82LdR7qRT4aNR0Irh+g8q18NAEjApV1s76PslTwVtfFXWE+mXMr4vY2v5jRd/+mFg==
X-Received: by 2002:a6b:710f:: with SMTP id q15mr65050853iog.103.1578173134825;
        Sat, 04 Jan 2020 13:25:34 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id w79sm22194507ill.70.2020.01.04.13.25.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:25:34 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219a3
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:25:33 -0700
Date:   Sat, 4 Jan 2020 14:25:33 -0700
From:   Rob Herring <robh@kernel.org>
To:     Yuti Amonkar <yamonkar@cadence.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kishon@ti.com, robh+dt@kernel.org, mark.rutland@arm.com,
        maxime@cerno.tech, jsarha@ti.com, tomi.valkeinen@ti.com,
        praneeth@ti.com, mparab@cadence.com, sjakhade@cadence.com,
        yamonkar@cadence.com
Subject: Re: [PATCH v2 13/14] dt-bindings: phy: phy-cadence-torrent: Add
 platform dependent compatible string
Message-ID: <20200104212532.GA11969@bogus>
References: <1577114139-14984-1-git-send-email-yamonkar@cadence.com>
 <1577114139-14984-14-git-send-email-yamonkar@cadence.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1577114139-14984-14-git-send-email-yamonkar@cadence.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Dec 2019 16:15:38 +0100, Yuti Amonkar wrote:
> Add a new compatible string used for TI SoCs using Torrent PHY.
> 
> Signed-off-by: Yuti Amonkar <yamonkar@cadence.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
