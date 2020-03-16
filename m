Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8EAB818615C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2020 02:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729359AbgCPBfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Mar 2020 21:35:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:59664 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729334AbgCPBfv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 15 Mar 2020 21:35:51 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4A44020663;
        Mon, 16 Mar 2020 01:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1584322551;
        bh=Pe21SKQQImoQ+N5g/3EBwXNef2SZeK2GRe1NDH9iSVg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=zFX654fz0Nz/DcMuQiotV+MnxCLgGdT34wd4BBgzcKWjWa/NyTJmTWZ2kzBOfzgnd
         /bI0AlFlw3yIhDyoeQNuz4eHlCokrZNoYOQHFRZUtb1K9Fh7ObQSkbPahFJW7AST7W
         jKDz8ZR4Qw0heqBYdhIpEXFYPqvQmDXJ7f8jdwsQ=
Date:   Mon, 16 Mar 2020 09:35:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, abel.vesa@nxp.com,
        leonard.crestez@nxp.com, daniel.baluta@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Linux-imx@nxp.com
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels
 alphabetically
Message-ID: <20200316013541.GR17221@dragon>
References: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 16, 2020 at 09:26:32AM +0800, Anson Huang wrote:
> Sort the labels alphabetically for consistency.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.
