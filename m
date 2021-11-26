Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6915E45E907
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 09:10:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352934AbhKZIN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 03:13:58 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:7422 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245061AbhKZIL6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 03:11:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637914126; x=1669450126;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=97gLkgXeYlaK2OpAV4Xz1qY15WHBrv3NecRUnypRXiU=;
  b=qbly4NKxgim64ft0Qsb5ObO9IfG6GjgyiY1LXKHnFPj2gjj7XJjFjRxl
   w57JXC1lEs0q+CrvDoPL2ikWjyipsW3Fb+6UMMkxVWMVZfgOMakZzv3dc
   mWSYUOdKG2g02UNEY4ADRyeyFLdqV4NwXHx1b0ELi89YjbxbAt8UGjAOm
   1HCihDIbXho1wF8QpSFhka0dt+KycoRn23d7KiRO4lQDzwGqjqz7uZGZU
   8t6tUs+1kiUlrJc0BwULLpru8qHG/FhJcIIyrttnS3iYSM1EswewQueAR
   EtYXKFubwvXqDhd/HB5w7VYDu/q/XqI1rq0oaPCRL2nusndb2RwSBeT7O
   w==;
X-IronPort-AV: E=Sophos;i="5.87,265,1631570400"; 
   d="scan'208";a="20691896"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Nov 2021 09:08:44 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Nov 2021 09:08:44 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 Nov 2021 09:08:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637914124; x=1669450124;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=97gLkgXeYlaK2OpAV4Xz1qY15WHBrv3NecRUnypRXiU=;
  b=hOCIVkOYfcSpKiJ2pSjKBYCUSLAJlJaoVZ68fdywdeEvwAVx814u0P+4
   aw6IDHEyopPHBh3P11TEN6lPaZzc0pC+ycauImVJDQOMXHt6ah+g+kXMD
   BXBmfft+P1eqiV1zuD448FyWoHJCBWFGYjCamH1h3p6pjwB4fOKES3gef
   YXwWryfuiTcKDEbW91MjoSdFqMqkST+WBnz3O0vGsZBSRW11t7yrlfPc5
   Bvo9VAK0AjKnfG/sDO2KJ9TU34dHzeXOYLqQo3yo9lN5YVqS+irKChT+b
   NjT5ZXbZo2ppzjEwXqablexlhf/Q2A/lw/9FRRz9UQEDvZfrkCVuXwOWW
   w==;
X-IronPort-AV: E=Sophos;i="5.87,265,1631570400"; 
   d="scan'208";a="20691895"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Nov 2021 09:08:44 +0100
Received: from steina-w (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B572D280065;
        Fri, 26 Nov 2021 09:08:44 +0100 (CET)
Message-ID: <2a81452f15ab9a4bf3a56b6d4f24efa8a8e0891c.camel@ew.tq-group.com>
Subject: Re: [RFC PATCH 1/2] phy: fsl-imx8mq-usb: Add support for setting
 fsl specific flags
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Date:   Fri, 26 Nov 2021 09:08:42 +0100
In-Reply-To: <20211125104104.1416523-2-alexander.stein@ew.tq-group.com>
References: <20211125104104.1416523-1-alexander.stein@ew.tq-group.com>
         <20211125104104.1416523-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, dem 25.11.2021 um 11:41 +0100 schrieb Alexander Stein:
> The i.MX8MP glue layer has support for the following flags:
> * over-current polarity
> * PWR pad polarity
> * controlling PPC flag in HCCPARAMS register
> * parmanent port attach for usb2 & usb3 port
> 
> Allow setting these flags by supporting specific flags in the glue
> node.
> In order to get this to work an additional IORESOURCE_MEM is
> necessary
> actually pointing to the glue layer. For backward compatibility this
> is
> purely optional.
> 
> Signed-off-by: Alexander Stein <
> alexander.stein@ew.tq-group.com
> >
> ---
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 60
> ++++++++++++++++++++++
>  1 file changed, 60 insertions(+)

Please ignore the build error in this patch for now. Will be fixed in
next iteration. The discussion about the approach is still possible.

Best regards,
Alexander


