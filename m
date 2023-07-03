Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EE36745B88
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbjGCLtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:49:12 -0400
Received: from shards.monkeyblade.net ([23.128.96.9]:36092 "EHLO
        mail.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231184AbjGCLtM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:49:12 -0400
Received: from localhost (cpc147930-brnt3-2-0-cust60.4-2.cable.virginm.net [86.15.196.61])
        by mail.monkeyblade.net (Postfix) with ESMTPSA id 2589983844AA;
        Mon,  3 Jul 2023 04:49:07 -0700 (PDT)
Date:   Mon, 03 Jul 2023 12:48:57 +0100 (BST)
Message-Id: <20230703.124857.1785883665481694727.davem@davemloft.net>
To:     matt@codeconstruct.com.au
Cc:     linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, jk@codeconstruct.com.au,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH 3/3] mctp i3c: MCTP I3C driver
From:   David Miller <davem@davemloft.net>
In-Reply-To: <20230703053048.275709-4-matt@codeconstruct.com.au>
References: <20230703053048.275709-1-matt@codeconstruct.com.au>
        <20230703053048.275709-4-matt@codeconstruct.com.au>
X-Mailer: Mew version 6.9 on Emacs 28.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mail.monkeyblade.net [0.0.0.0]); Mon, 03 Jul 2023 04:49:11 -0700 (PDT)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Matt Johnston <matt@codeconstruct.com.au>
Date: Mon,  3 Jul 2023 13:30:48 +0800

> +static void mctp_i3c_xmit(struct mctp_i3c_bus *mbus, struct sk_buff *skb)
> +{
> +	struct net_device_stats *stats = &mbus->ndev->stats;
> +	struct i3c_priv_xfer xfer = { .rnw = false };
> +	struct mctp_i3c_internal_hdr *ihdr = NULL;
> +	struct mctp_i3c_device *mi = NULL;
> +	u8 *data = NULL;
> +	unsigned int data_len;
> +	u8 addr, pec;
> +	int rc = 0;
> +	u64 pid;
 ...
> +/* Returns an ERR_PTR on failure */
> +static struct mctp_i3c_bus *mctp_i3c_bus_add(struct i3c_bus *bus)
> +__must_hold(&busdevs_lock)
> +{
> +	struct mctp_i3c_bus *mbus = NULL;
> +	struct net_device *ndev = NULL;
> +	u8 addr[PID_SIZE];
> +	char namebuf[IFNAMSIZ];
> +	int rc;


Please order local variables from longest to shortest line.

Please do this for your entire submission.

Thank you.
