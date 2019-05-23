Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD45C27803
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 10:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726070AbfEWIcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 04:32:47 -0400
Received: from mail.kernel.org ([198.145.29.99]:56828 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725814AbfEWIcr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 04:32:47 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C35BD20879;
        Thu, 23 May 2019 08:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558600366;
        bh=3/axH3G7pHsCnkzfqiVoyOAsmcfLuAmvjYG7M5n4EVE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h4rb0O0GzEdufAFPJo6x3Cql6QSr/ijUmuBngWWAHMGsRpeCglXH06VAbC2rWMKar
         Iy12NbWwfBlXgvKsZYsIbSRG4LwQqlRS/4hvlqtA6IJeyNOBwn5XUFg+ShOhIrXFwL
         amdtlFq/T5BXjVHMMmbK5RrIGyQ6QjqdIvXqo+lk=
Date:   Thu, 23 May 2019 16:31:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx: Avoid colliding 'display' node and
 property names
Message-ID: <20190523083148.GL9261@dragon>
References: <20190516225525.32605-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190516225525.32605-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 05:55:25PM -0500, Rob Herring wrote:
> While properties and child nodes with the same name are valid DT, the
> practice is not encouraged. Furthermore, the collision is problematic for
> YAML encoded DT. Let's just avoid the issue and rename the nodes.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied, thanks.
