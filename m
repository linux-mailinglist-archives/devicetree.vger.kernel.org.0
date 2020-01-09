Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C72F1353C4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 08:35:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728220AbgAIHf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 02:35:27 -0500
Received: from mail.kernel.org ([198.145.29.99]:50768 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728164AbgAIHf1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 9 Jan 2020 02:35:27 -0500
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E4B3720673;
        Thu,  9 Jan 2020 07:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1578555326;
        bh=LBZcB4ZPhcMLMC2MDHNLxhWRe934Xzv6zheivRkJnJU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mZUAvSDU+nHa6MUnJp67FGYfnJQUFOdk0uhBDDXR1f6FYSU/TOXIc7k4Ztz3Nzu4g
         NQa+ZVCMyBXmO8qcwfqYmgpMVg6NzxznQa+cqji7lGOXHKiBHovnvzPqi/wqC77nXd
         QPRSvrcyQXPMdkS39vuVrjUa8GUr2ivrjtF/jiek=
Date:   Thu, 9 Jan 2020 15:35:21 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: imx7: Unify temp-grade and speed-grade nodes
Message-ID: <20200109073520.GD4456@T480>
References: <20191223120719.7448-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191223120719.7448-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 23, 2019 at 09:07:19AM -0300, Fabio Estevam wrote:
> The following warning is seen when building with W=1:
> 
> arch/arm/boot/dts/imx7s.dtsi:551.39-553.7: Warning (unique_unit_address): /soc/aips-bus@30000000/ocotp-ctrl@30350000/temp-grade@10: duplicate unit-address (also used in node /soc/aips-bus@30000000/ocotp-ctrl@30350000/speed-grade@10)
> 
> Since temp-grade and speed-grade point to the same node, replace them by
> a single one to avoid the duplicate unit-address warning.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.
