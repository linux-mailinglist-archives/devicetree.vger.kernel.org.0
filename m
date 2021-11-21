Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 126FF458183
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 03:27:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236461AbhKUCaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 21:30:15 -0500
Received: from mail.kernel.org ([198.145.29.99]:39882 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232500AbhKUCaO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 20 Nov 2021 21:30:14 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id DA6DA608FE;
        Sun, 21 Nov 2021 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637461630;
        bh=5B1tygrNXNV2A61CLamHESeJzyho+jTUiZ+gyVHVWpI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VUzwKFp86nAlK71IbLniCYP89vvzsMV6E10zFllboFOa0bb9tNs2vCa2ap3LX2bTK
         e6REB7M6xS5aWrBAXPI5XNFr3B0LZ1A1fbT1CpxsPfZMgQ9PvmdGmzyelK/6yAm0iB
         PiQgYUJ7Lwjo7iYH3VfYtyepzJTLdCfiEMWgBfX8s61fXOrKDdo+Plm6i4yTuZ9DcA
         n2IzQCIuw+FsUeWEHldQMOrYZLKA9/G4zfCS1KmXbhnrIR6edTuqpTLOsx4LffpehB
         aar/+hpZsHZf81VBSJuvXcj2QVkldV5iYyA2NiXY5tY7G27H51pdAwKWoo0ybcp96J
         RkAxd0eZlbaZA==
Date:   Sun, 21 Nov 2021 10:27:04 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Ford <aford173@gmail.com>, patches@opensource.cirrus.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx: imx8mn-beacon: Drop undocumented
 clock-names reference
Message-ID: <20211121022704.GF31998@dragon>
References: <cover.1634565154.git.geert+renesas@glider.be>
 <16af1bd2847da8b2a265e2a4389942ae11dea7c5.1634565154.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16af1bd2847da8b2a265e2a4389942ae11dea7c5.1634565154.git.geert+renesas@glider.be>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 18, 2021 at 03:59:02PM +0200, Geert Uytterhoeven wrote:
> The wlf,wm8962 Device Tree bindings do not specify a clock-names
> property.  Drop it.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied, thanks.
