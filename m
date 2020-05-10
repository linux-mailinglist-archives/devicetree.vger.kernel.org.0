Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB02E1CC768
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2020 09:02:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725994AbgEJHCf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 May 2020 03:02:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725830AbgEJHCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 May 2020 03:02:35 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10874C061A0C
        for <devicetree@vger.kernel.org>; Sun, 10 May 2020 00:02:35 -0700 (PDT)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7F1902A013A;
        Sun, 10 May 2020 08:02:33 +0100 (BST)
Date:   Sun, 10 May 2020 09:02:30 +0200
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Michal Simek <monstr@monstr.eu>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200510090230.1ba6f6d7@collabora.com>
In-Reply-To: <20200508171339.8052-8-miquel.raynal@bootlin.com>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
        <20200508171339.8052-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  8 May 2020 19:13:38 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> +static int anfc_len_to_steps(struct nand_chip *chip, unsigned int len)
> +{
> +	unsigned int steps = 1, pktsize = len;
> +
> +	while (pktsize > ANFC_MAX_PKT_SIZE) {
> +		steps *= 2;
> +		pktsize = DIV_ROUND_UP(len, steps);
> +	}


Same here, you shouldn't have a round_up() but instead complain if
"len != pkt_size * steps"

	if (len % 4)
		return -ENOTSUPP;

	if (len < ANFC_MAX_PKT_SIZE)
		return len;

	for (steps = 2; steps < ANFC_MAX_STEPS; steps *= 2) {
		pkt_size = len / steps;
		if (pkt_size <= ANFC_MAX_PKT_SIZE)
			break;
	}

	if (pkt_size * steps != len)
		return -ENOTSUPP;

	return pkt_size;

> +
> +	if (steps > ANFC_MAX_STEPS)
> +		return -ENOTSUPP;
> +
> +	return steps;
> +}
