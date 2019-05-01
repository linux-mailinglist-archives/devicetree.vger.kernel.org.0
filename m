Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD2A10F0B
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 00:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726166AbfEAWiN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 18:38:13 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:36625 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726144AbfEAWiN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 18:38:13 -0400
Received: by mail-oi1-f193.google.com with SMTP id l203so245441oia.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 15:38:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=992HzkidJ9UT5O+EyL89oV2jOGJAbAa3bn9k5IbT7BM=;
        b=H6gMgnU5sVVywoC9QFj/4TSTLBg5q/mR77pjbzAPHVRKxQI/4oiuiYF8t+o4/ZBeGd
         4RSFG3mkeNhcc/3KdwrsH+JOY+mBjrB6lHITo12LWosyGfKpS/kfCU/5p+kdyo89IN5p
         EGMWHDrCKFyvk2Y1IU7fMXpSJI03Q5H6khOWKkrSh/oFL9GZT6vzjKxF2FnVx9qeqfYT
         dfiF8D0EEwHXm5kNzsu3YoCs8VBjOaZtbYo29n1pIjq+U5Z43IGRaU8gBYzaVVWpImsX
         cbvwa69eTU+FDo2HnYaMkT1qbI5ZOm0N8aJobWTlpHwVUq7pyqqUI+VTahxI7cq6hXVJ
         TVWA==
X-Gm-Message-State: APjAAAWmGvO/HIFy/sxgE+YPshfHfxSbzpd9YNOjcS3nV3P3CNFwOg0T
        2aSizsPoFT4Qz7wzARbGFhHL91U=
X-Google-Smtp-Source: APXvYqzvStnPWlItGMyoBEFPrjacCp0Rn+gtv9gZjUkZ8LAwtao74bZCb7GwRtyDAr5RdwgghsyzOg==
X-Received: by 2002:aca:580a:: with SMTP id m10mr495607oib.16.1556750292775;
        Wed, 01 May 2019 15:38:12 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n70sm6251064ota.65.2019.05.01.15.38.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 15:38:11 -0700 (PDT)
Date:   Wed, 1 May 2019 17:38:11 -0500
From:   Rob Herring <robh@kernel.org>
To:     Wen He <wen.he_1@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Leo Li <leoyang.li@nxp.com>,
        "liviu.dudau@arm.com" <liviu.dudau@arm.com>,
        Wen He <wen.he_1@nxp.com>
Subject: Re: [v4] arm64: dts: ls1028a: Add properties for Mali DP500 node
Message-ID: <20190501223811.GA14221@bogus>
References: <20190422101941.11335-1-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190422101941.11335-1-wen.he_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Apr 2019 10:18:10 +0000, Wen He wrote:
> The LS1028A has a LCD controller and Displayport interface that
> connects to eDP and Displayport connectors on the LS1028A board.
> 
> This patch enables the LCD controller driver on the LS1028A.
> 
> Signed-off-by: Alison Wang <alison.wang@nxp.com>
> Signed-off-by: Wen He <wen.he_1@nxp.com>
> Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
> ---
> change in v4:
>         - using 'malidp0:display' instead of the node name
>         'display0:malidp'.
> change in v3:
>         - using 'display0' instead of node name 'display-0' to
>         fixed syntax error.
> 
> change in v2:
>         - renamed node name 'dp0' to be generic name 'display-0'.
>         - replace clk name 'xxclk' to 'clock-xx'.
>         - add newline between properties and child node.
> 
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
