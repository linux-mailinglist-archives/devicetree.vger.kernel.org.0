Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B43314FEBE
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2020 19:23:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726909AbgBBSXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Feb 2020 13:23:51 -0500
Received: from asavdk3.altibox.net ([109.247.116.14]:33892 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726906AbgBBSXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Feb 2020 13:23:50 -0500
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id 9248620026;
        Sun,  2 Feb 2020 19:23:47 +0100 (CET)
Date:   Sun, 2 Feb 2020 19:23:46 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sean Cross <xobs@kosagi.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: it6251: add bindings for IT6251
 LVDS-to-eDP bridge
Message-ID: <20200202182346.GA18495@ravnborg.org>
References: <20200127022023.379080-1-marex@denx.de>
 <20200127022023.379080-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200127022023.379080-2-marex@denx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8
        a=YpGV6msqAAAA:8 a=e5mUnYsNAAAA:8 a=BtaqeeuKE2emfkvH66kA:9
        a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22 a=7Sa5D-Tva0wx0rmpRu8Y:22
        a=Vxmtnl_E_bksehYqCbjh:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek.

On Mon, Jan 27, 2020 at 03:20:22AM +0100, Marek Vasut wrote:
> Add DT bindings for ITE IT6251 LVDS-to-eDP bridge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sean Cross <xobs@kosagi.com>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/bridge/ite,it6251.txt    | 35 +++++++++++++++++++

Any chance you could make this follow the DT Schema (.yaml) syntax
so we get better verification of the DT files?

	Sam
