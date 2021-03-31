Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98E85350019
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 14:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235140AbhCaMXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 08:23:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:36806 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235014AbhCaMWy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 31 Mar 2021 08:22:54 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D82F26198F;
        Wed, 31 Mar 2021 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1617193373;
        bh=1JiCJZdLpge4QRk61c2bdfMSYMM5/ZEtJKjCa5IcbFE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FIF1+1parke0flNNrBG/PNNUuZOT38aLJBXV6NBEQ5/Jp5+d8DSGkJKJ8DnhZUd/K
         nSQuX9064Y+DO4CkwvZMkvmLSnIYxgbIckJuWK1p8xLOSEgeiQAeDSFxISQ1cy2Eaz
         svNIy9S1fDRhQt1gc6GzPmhrFG3c5zhwex0WeJJai8jLtzC7S3wHYiQQ3Tr8w1yjYn
         qSNkNXY7+uaA9Kn0OttHQniboMyZVmt3DylcCseP2cl150FvVJ/qUB7+mKBdGjh7Ai
         c9pTGVDyRVODqs5tzSXLeWDBzbgV/pQjnOA9RnjMSrQNhWbZICgMCNiaPmI6GnPsW6
         k5HxxdPTsgUxw==
Date:   Wed, 31 Mar 2021 17:52:49 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
Message-ID: <YGRpmStAzQBVFeU9@vkoul-mobl.Dlink>
References: <20210329165056.31647-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210329165056.31647-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29-03-21, 18:50, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. Change syntax from txt to yaml
> 2. Drop "Driver for" from the title
> 3. Drop "reg = <0x0>;" from example (noticed by dt_binding_check)
> 4. Specify license

Applied, thanks

-- 
~Vinod
