Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CCD41BAD40
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2020 20:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726223AbgD0Swk convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 27 Apr 2020 14:52:40 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:51839 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbgD0Swk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Apr 2020 14:52:40 -0400
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 435D9240007;
        Mon, 27 Apr 2020 18:52:37 +0000 (UTC)
Date:   Mon, 27 Apr 2020 20:52:35 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Christophe Kerello <christophe.kerello@st.com>
Cc:     <richard@nod.at>, <vigneshr@ti.com>, <lee.jones@linaro.org>,
        <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tony@atomide.com>,
        <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <devicetree@vger.kernel.org>, <marex@denx.de>
Subject: Re: [PATCH v2 10/12] mtd: rawnand: stm32_fmc2: use regmap APIs
Message-ID: <20200427205235.1e147534@xps13>
In-Reply-To: <1586966256-29548-11-git-send-email-christophe.kerello@st.com>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
        <1586966256-29548-11-git-send-email-christophe.kerello@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christophe,

Christophe Kerello <christophe.kerello@st.com> wrote on Wed, 15 Apr
2020 17:57:34 +0200:

> This patch uses regmap APIs to access all FMC2 registers.
> 
> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
> ---

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>


Thanks,
Miquèl
