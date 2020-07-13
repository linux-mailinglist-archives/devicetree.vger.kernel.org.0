Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAD0421D2AA
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2020 11:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726380AbgGMJTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 05:19:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:54438 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726360AbgGMJTH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Jul 2020 05:19:07 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 54D7D2067D;
        Mon, 13 Jul 2020 09:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594631946;
        bh=fV/LQpQTYnPXXx1Pe9XJ1E+0lFMNd1w74gbPDGeQzsA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GFVVxsgNQgeh0qieapY7r8XoI9GQ+go0pS59vx2YX65sphVljPbR4EJgTZNIKUbxg
         AUhEutQpp6JSuxJYsw6Uj2uvbqpIfAc+ac/gFNMOaquKRFjsKRUPblWhCy/KZKi78H
         85+9ZuBcjgFMKIGLyfWcyRFPpuvdB7N9FNgL/puU=
Date:   Mon, 13 Jul 2020 17:18:54 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Parthiban Nallathambi <parthiban@linumiz.com>
Cc:     s.hauer@pengutronix.de, robh@kernel.org,
        devicetree@vger.kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, festevam@gmail.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: fsl: Add MYiR Tech boards
Message-ID: <20200713091853.GL15718@dragon>
References: <20200713072320.5567-1-parthiban@linumiz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200713072320.5567-1-parthiban@linumiz.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 13, 2020 at 09:23:19AM +0200, Parthiban Nallathambi wrote:
> Add entries for MYiR Tech imx6ULL eval boards.
> 
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>

Applied both, thanks.
