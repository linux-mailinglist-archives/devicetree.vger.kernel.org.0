Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8DF464D24
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 12:41:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242638AbhLALoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 06:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237407AbhLALoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 06:44:23 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C234C061574
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 03:41:03 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 5A52DCE1DDE
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 11:41:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DA24C53FAD;
        Wed,  1 Dec 2021 11:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638358859;
        bh=hJ22FdvppBbTbnDqIXdnWhP/g0OCskJn13TRZkKH1E8=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=AaAUABGdQMuemkMlL8yGld2XOk8BbQu7yqDKAEBvs3wrjzQqv5Nhd5qO45jWBGqrw
         CCi+aBpzGA8VPRpG4ZvTOEhP7lk7QvIFVl2VeOOiI3/F+alBe3fR4ZkTaOjBXq0rsg
         ezId032Vy6bxHEGY/Rm4ZRSy3Q3nSpoTFpJUbpu1h1ZtX/ZamnffwFeSfrRvWqXChU
         vJWi9pmEEBoEJDXFUH+rO7bC+L8roYqW1SibRk7dVoTPPzno/BrD8mrrsNQ9ugjskE
         pRCW/hdvr+a+E3UUr0NDg0DfmJCQ0CVW8rKBbya4SWHxMyN9P5ixLIgPrj3OZ3ty+L
         Q8Vl7L8tkbBkQ==
Message-ID: <3dd6940acac27e5577b54ded8f2d472bbb6f7733.camel@kernel.org>
Subject: Re: [PATCH] arm: bcm2711-rpi-4-b: Add gpio offsets to line name
 array
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de
Date:   Wed, 01 Dec 2021 12:40:54 +0100
In-Reply-To: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
References: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2021-11-30 at 17:11 +0100, Uwe Kleine-König wrote:
> this helps human readers considerably to determine the line name for a
> given offset or vice versa.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---

Applied for next.

Thanks!
Nicolas
