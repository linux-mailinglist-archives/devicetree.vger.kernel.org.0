Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B33823A1D8
	for <lists+devicetree@lfdr.de>; Mon,  3 Aug 2020 11:41:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726511AbgHCJlF convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 3 Aug 2020 05:41:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725948AbgHCJlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 05:41:04 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6DC4C06174A
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 02:41:04 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1k2Wxk-0003Nn-F2; Mon, 03 Aug 2020 11:40:56 +0200
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1k2Wxj-0006Sn-Px; Mon, 03 Aug 2020 11:40:55 +0200
Message-ID: <48b41a9374a2ee7d6f78e8fb70b90df6066a269b.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: imx7: add the cm4 reset for i.MX8MQ
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
        robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Date:   Mon, 03 Aug 2020 11:40:55 +0200
In-Reply-To: <1596091569-10013-2-git-send-email-peng.fan@nxp.com>
References: <1596091569-10013-1-git-send-email-peng.fan@nxp.com>
         <1596091569-10013-2-git-send-email-peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2020-07-30 at 14:46 +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add the cm4 reset used by the remoteproc driver
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Thank you, both applied to reset/next.

regards
Philipp
