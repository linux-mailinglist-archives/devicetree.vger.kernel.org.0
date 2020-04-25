Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD7E41B8321
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2020 03:53:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726044AbgDYBxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Apr 2020 21:53:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:49914 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726032AbgDYBxc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Apr 2020 21:53:32 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BDAAE2076C;
        Sat, 25 Apr 2020 01:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1587779612;
        bh=yiSOeJ8Lx1TDaaZ07PZ6pApvBWfqUo+mApyrV/CkPO4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=zY4o8Vfff2O4z5RuZiHso0kV+soZFhImKmjgY2t4ukw1Qc+cTQzLSRNz2lXmWHZDL
         AEafx9zPhm3wJ5W+1iGRYBMIh+Vc7B/I9l2tRL6NltcsbGxxvoWDApT6ktIMy0VU6a
         QsygAH2GRbzxt6oubmDJp0kdKgbOpDDPBlg1cRlk=
Date:   Sat, 25 Apr 2020 09:53:27 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, leoyang.li@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: imx: add kontron smarc to schema
Message-ID: <20200425015326.GA30501@dragon>
References: <20200402083436.24710-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402083436.24710-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 02, 2020 at 10:34:36AM +0200, Marco Felsch wrote:
> Add Kontron SMARC module compatibles to the schema so we can make use of
> them for the validation.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
