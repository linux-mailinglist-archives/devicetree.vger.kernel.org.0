Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D3E417B3D8
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2020 02:41:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726178AbgCFBlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Mar 2020 20:41:12 -0500
Received: from gloria.sntech.de ([185.11.138.130]:55788 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726162AbgCFBlM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Mar 2020 20:41:12 -0500
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1jA1z5-00072X-KJ; Fri, 06 Mar 2020 02:41:03 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, mark.rutland@arm.com,
        christoph.muellner@theobroma-systems.com, robin.murphy@arm.com,
        linux-rockchip@lists.infradead.org, francescolavra.fl@gmail.com
Subject: Re: [PATCH v3 2/3] dt-bindings: display: panel: Add binding document for Elida KD35T133
Date:   Fri, 06 Mar 2020 02:41:02 +0100
Message-ID: <3581159.G4WJpVV6bS@phil>
In-Reply-To: <20200229151506.750242-2-heiko@sntech.de>
References: <20200229151506.750242-1-heiko@sntech.de> <20200229151506.750242-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 29. Februar 2020, 16:15:05 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
> Odroid Go Advance handheld device.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

applied to drm-misc-next with Rob's review


