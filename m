Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 583833ADA62
	for <lists+devicetree@lfdr.de>; Sat, 19 Jun 2021 16:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232480AbhFSO2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Jun 2021 10:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230441AbhFSO2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Jun 2021 10:28:10 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 199D7C061574
        for <devicetree@vger.kernel.org>; Sat, 19 Jun 2021 07:25:58 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id 3FDE11F4404F
Message-ID: <308309f81a684928bbed52b6d0ca0b367dcb8bbe.camel@collabora.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert
 rockchip,rk-timer.txt to YAML
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>, kernel@collabora.com
Date:   Sat, 19 Jun 2021 11:25:45 -0300
In-Reply-To: <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
References: <20210506111136.3941-1-ezequiel@collabora.com>
         <20210506111136.3941-4-ezequiel@collabora.com> <15819722.JCcGWNJJiE@diego>
         <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

On Fri, 2021-05-28 at 17:57 +0200, Daniel Lezcano wrote:
> On 28/05/2021 17:56, Heiko Stübner wrote:
> > Hi Daniel,
> > 
> > Am Donnerstag, 6. Mai 2021, 13:11:36 CEST schrieb Ezequiel Garcia:
> > > Convert Rockchip Timer dt-bindings to YAML.
> > > 
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > 
> > can you apply this patch to the timer-tree?
> 
> Yes
> 
> 

Can't find this one applied in -next, maybe it fell thru somewhere :) ?

Thanks!
Ezequiel

