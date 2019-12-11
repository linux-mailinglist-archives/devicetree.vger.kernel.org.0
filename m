Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4F68D11A155
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2019 03:28:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727317AbfLKC20 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Dec 2019 21:28:26 -0500
Received: from mail.kernel.org ([198.145.29.99]:57120 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727286AbfLKC20 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Dec 2019 21:28:26 -0500
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B336F2073B;
        Wed, 11 Dec 2019 02:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1576031306;
        bh=za59pLFinS7rtLJntJHisKNyAYiERsXuncY6HbDLGHw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=k0cumAfEeUIhC+G+9XSYx79EB7KwJjCmIbDAWB4Jis20SzQw0QrFXFrLYX2xZh7OW
         uLX0s4Oo84fdLh1j/6dOtRIwq5sZsfJ3iPnnabo3dzuT1tdtCDydv4ne4beX0sGCc2
         0RDkpl3VzEnHq6hP+kW+0aVoc+AduOr0fwJ3vSH0=
Date:   Wed, 11 Dec 2019 10:28:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Subject: Re: [PATCH v2 RESEND 1/2] dt-bindings: arm: fsl: Document i.MX7ULP
 Embedded Artists COM board
Message-ID: <20191211022817.GB15858@dragon>
References: <20191202131318.11404-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202131318.11404-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 02, 2019 at 10:13:17AM -0300, Fabio Estevam wrote:
> Add an entry for the Embedded Artists i.MX7ULP COM board.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.
