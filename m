Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DFE931E77F
	for <lists+devicetree@lfdr.de>; Thu, 18 Feb 2021 09:35:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbhBRId2 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 18 Feb 2021 03:33:28 -0500
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:60735 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230158AbhBRIa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Feb 2021 03:30:28 -0500
X-Originating-IP: 86.210.203.113
Received: from xps13 (lfbn-tou-1-972-113.w86-210.abo.wanadoo.fr [86.210.203.113])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 3C26BC0007;
        Thu, 18 Feb 2021 08:29:36 +0000 (UTC)
Date:   Thu, 18 Feb 2021 09:29:36 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Cc:     <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <gregkh@linuxfoundation.org>, <shubhrajyoti.datta@gmail.com>
Subject: Re: [PATCH v9 3/7] clk: clock-wizard: Fix kernel-doc warning
Message-ID: <20210218092936.44108d1d@xps13>
In-Reply-To: <1613623791-4598-4-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1613623791-4598-1-git-send-email-shubhrajyoti.datta@xilinx.com>
        <1613623791-4598-4-git-send-email-shubhrajyoti.datta@xilinx.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shubhrajyoti,

Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com> wrote on Thu, 18 Feb
2021 10:19:47 +0530:

> Update description for the clocking wizard structure

"Fix the clocking wizard main structure kernel documentation." ?

> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  drivers/clk/clk-xlnx-clock-wizard.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index 1bab68e..fb2d555 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -40,7 +40,8 @@ enum clk_wzrd_int_clks {
>  };
>  
>  /**
> - * struct clk_wzrd:
> + * struct clk_wzrd - Clock wizard private data structure
> + *
>   * @clk_data:		Clock data
>   * @nb:			Notifier block
>   * @base:		Memory base


Thanks,
Miquèl
