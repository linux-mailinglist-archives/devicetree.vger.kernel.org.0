Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AEE44129217
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 08:02:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725811AbfLWHCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Dec 2019 02:02:06 -0500
Received: from mail.kernel.org ([198.145.29.99]:35008 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725810AbfLWHCG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Dec 2019 02:02:06 -0500
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 19C9E20663;
        Mon, 23 Dec 2019 07:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1577084526;
        bh=iRJyVPfeOjUUuDQxbKZ6Wwlu9UG4UtjyQCDCmBmLWiA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=wbthxuwltGaX0EObARt+mugsv3lJON9MDo/+6SrdjX0+Sol9PSyUQrNMilAgDmH71
         hi4fG/breZ+Sgfi6YZrq3S1X1pYIuHWBzwvkuYYr257GPm5uQ4j6SZ+e1QjgPu940w
         rKrrdphfqwL9Zj9Cp48TAR2nrNSO3eozwa3mdjYc=
Date:   Mon, 23 Dec 2019 15:01:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] ARM: dts: imx51-babbage: Fix the DVI output
 description
Message-ID: <20191223070144.GQ11523@dragon>
References: <20191213135838.28697-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191213135838.28697-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 13, 2019 at 10:58:37AM -0300, Fabio Estevam wrote:
> imx51-babbage has a TFP410 chip that receives 24-bit RGB parallel
> input and convert it to DVI.
> 
> Fix the device tree description to reflect the real hardware.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.
