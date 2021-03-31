Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC7BB350018
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 14:23:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235406AbhCaMWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 08:22:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:36760 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235399AbhCaMWm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 31 Mar 2021 08:22:42 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33E7961957;
        Wed, 31 Mar 2021 12:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1617193362;
        bh=gJTho7AuGFFFAJl8wlStQngdixhxfmauQbNHuuaUbko=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kr9wIPBeiO0uy8xcnynppg+1oc6KWEc1/d3Ie9CTFJH2iH9sdnb8eI7lZ2LuR4b+d
         WbH4Wo09d5xSnFNghdVzZBfkEsB0eHR3oA34vygvsDgCA1YpQp6YYoGC5wJ2rhE7uE
         SKBXOTSD69gowflZ7vtEK3KarMytuAg0ML95oK2BTThSKieJIPNnuBPdhvG7twU3BA
         8epbwpVni32vcdMrjRyMJOTqZMPbQC/ac7Pyrqvb4j+e7gEvwZOmU0gGQNy6782+T6
         7SBNCEPhkc8hGx6FITv34jGX6GdgAKLXlZ/FciEA62gFh63M3kYyRavqkuQvOAxONr
         LNkhiBvlH80xg==
Date:   Wed, 31 Mar 2021 17:52:37 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb2-phy: convert to yaml
Message-ID: <YGRpjVaL4/vRjoKy@vkoul-mobl.Dlink>
References: <20210329165041.31574-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210329165041.31574-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29-03-21, 18:50, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. Convert from txt to yaml
> 2. Drop "Driver for" from the title
> 3. Document "#phy-cells"
> 4. Fix example node name (noticed by dt_binding_check)
> 5. Add #include to example (noticed by dt_binding_check)
> 6. Specify license

Applied, thanks

-- 
~Vinod
