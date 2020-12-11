Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4D4E2D7D88
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 19:03:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731878AbgLKSCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 13:02:18 -0500
Received: from mleia.com ([178.79.152.223]:33078 "EHLO mail.mleia.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728184AbgLKSBu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Dec 2020 13:01:50 -0500
Received: from mail.mleia.com (localhost [127.0.0.1])
        by mail.mleia.com (Postfix) with ESMTP id 7E51642383F;
        Fri, 11 Dec 2020 18:01:09 +0000 (UTC)
Subject: Re: [PATCH] ARM: dts: lpc32xx: Remove unused and undocumented
 'pnx,timeout'
To:     Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Sylvain Lemieux <slemieux.tyco@gmail.com>
References: <20201210175238.2721550-1-robh@kernel.org>
From:   Vladimir Zapolskiy <vz@mleia.com>
Message-ID: <7017ac5f-e8da-6761-d0d4-09e1bbebf427@mleia.com>
Date:   Fri, 11 Dec 2020 20:01:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201210175238.2721550-1-robh@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20201211_180109_537481_0E087268 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message. 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 12/10/20 7:52 PM, Rob Herring wrote:
> 'pnx,timeout' is unused, undocumented and 'pnx' is not a vendor prefix,
> so let's remove it.
> 
> Cc: Vladimir Zapolskiy <vz@mleia.com>
> Cc: Sylvain Lemieux <slemieux.tyco@gmail.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

the change is correct, thank you.

Please feel free to pull it through the devicetree branch.

Acked-by: Vladimir Zapolskiy <vz@mleia.com>

--
Best wishes,
Vladimir
