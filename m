Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50FC71CC76C
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2020 09:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727095AbgEJHDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 May 2020 03:03:19 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:36196 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725810AbgEJHDT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 May 2020 03:03:19 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 89A162A013A;
        Sun, 10 May 2020 08:03:17 +0100 (BST)
Date:   Sun, 10 May 2020 09:03:14 +0200
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
Message-ID: <20200510090314.10426b6e@collabora.com>
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

> +static int anfc_exec_op(struct nand_chip *chip,
> +			const struct nand_operation *op,
> +			bool check_only)
> +{
> +	int ret;
> +
> +	if (check_only)
> +		return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> +					      check_only);

You should also check the DATA_IN/OUT size here ^.

> +
> +	ret = anfc_select_target(chip, op->cs);
> +	if (ret)
> +		return ret;
> +
> +	return nand_op_parser_exec_op(chip, &anfc_op_parser, op, check_only);
> +}
