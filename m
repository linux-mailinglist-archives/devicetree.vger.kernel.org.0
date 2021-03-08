Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4425E3305A7
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 02:41:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233552AbhCHBkk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 20:40:40 -0500
Received: from mail.kernel.org ([198.145.29.99]:36804 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233548AbhCHBk2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 20:40:28 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB77F64F6E;
        Mon,  8 Mar 2021 01:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615167628;
        bh=RN5UtcAK/bWKsPI42VHQF8utAyLTO1SlEQ+r0Wl3Uy0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tkJd/nMPBaLSNzvVnxjydgIh+QvaY8Z8fGqzBu5xmFHnIOgpgk0uUkGoiJvA6gOqr
         Y3G+3x+bJxPzOwcd0oPxzPQRTbVuUm5aOENRZVU3lpe84KTeKwA2tsj+SS8DVZzv1o
         vavUs7Mvsj+OxRCEBD0J7vPiu12h+53jwF7ZyFerLyyVZt9eTRrmOCUWeRvOpbjUEY
         0d3mMtEhYgZsZ8QHnVQg0gXZsN1j8DGg/Lf7emPYzWXRx0onN5pemqzRVnlO5jRvqx
         +jeJ/jNOxdlF8vsw0jAOm5scesI9YeaaHbQKEeFa4+Xh/UZP7LSIobCIcGLAxD8605
         1TijMfW21xvXg==
Date:   Mon, 8 Mar 2021 09:40:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, kernel@pengutronix.de, robh+dt@kernel.org,
        linux-imx@nxp.com, jan.kiszka@siemens.com
Subject: Re: [PATCH v5 01/18] dt-bindings: arm: fsl: add imx8qm boards
 compatible string
Message-ID: <20210308014022.GU543@dragon>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
 <1614950268-22073-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614950268-22073-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 09:17:30PM +0800, Dong Aisheng wrote:
> Add imx8qm boards compatible string
> 
> Cc: devicetree@vger.kernel.org
> Cc: Shawn Guo <shawnguo@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

Applied, thanks.
