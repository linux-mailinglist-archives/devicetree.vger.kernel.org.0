Return-Path: <devicetree+bounces-1196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 088967A54BF
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:04:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04D0A1C212C7
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B5C273E5;
	Mon, 18 Sep 2023 20:48:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA501D69E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:48:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67386C433C8;
	Mon, 18 Sep 2023 20:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695070114;
	bh=Bo+bZhZuj9bWW94JFZSXNjfJwa6uMxx0LXt2pIQ+Fzg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CodZ8P7WHzDqXcSxW2bOFAkrXOgbSARbKSWfTdbrirhlxJAYY+FY+0phDJZyxamo4
	 /eQOCL5OKCXxLDCszEbx9XZP+cNKgyHYgCik72ahpXNJcMZhdnBHtASrJMFNJHILbq
	 RzPR35YlvzgQxQsoseW3xLzYXWn3lcQGjI+ZusgyiRLfGC5rYtB5eZO9GKce5bVoUO
	 ahdpZ0B/N/ykm20GizHNPDiY9sFYm5l8Bs3WlK9vk4TFJVfT5fNqNMvtjNvAr+3Iue
	 9z9s59mZ1TKIGGUUYzDhYcyxaV1QFA5pWBe3z8FTdPzD35uh5ehgtZuinGDRDGhmAA
	 FQ558CDgHX/hQ==
Received: (nullmailer pid 1743079 invoked by uid 1000);
	Mon, 18 Sep 2023 20:48:31 -0000
Date: Mon, 18 Sep 2023 15:48:31 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, erkin.bozoglu@xeront.com, linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Sergio Paracuellos <sergio.paracuellos@gmail.com>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, mithat.guner@xeront.com, linux-mips@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: mtmips: add deprecated
 ralink,rt2880-pinmux
Message-ID: <169507011071.1743029.15067549858483442.robh@kernel.org>
References: <20230917162837.277405-1-arinc.unal@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230917162837.277405-1-arinc.unal@arinc9.com>


On Sun, 17 Sep 2023 19:28:36 +0300, Arınç ÜNAL wrote:
> The "ralink,rt2880-pinmux" compatible string applies to all MediaTek MTMIPS
> SoC pin controllers. Add it as a deprecated compatible string.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
>  .../devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml | 5 ++++-
>  .../devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml | 5 ++++-
>  .../devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml | 5 ++++-
>  .../devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml   | 5 ++++-
>  .../devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml   | 5 ++++-
>  .../devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml   | 5 ++++-
>  .../devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml   | 5 ++++-
>  .../devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml   | 5 ++++-
>  8 files changed, 32 insertions(+), 8 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


