Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5AC63D1D7A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 07:35:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhGVEzR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 00:55:17 -0400
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:53697 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230262AbhGVEzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 00:55:02 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailnew.nyi.internal (Postfix) with ESMTP id C7A3F5817C4;
        Thu, 22 Jul 2021 01:35:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 22 Jul 2021 01:35:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
        subject:to:cc:references:from:message-id:date:mime-version
        :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=V
        CC4K9x1L+piLdGylx5VSb6j9aBuZqYFN90RmCaQeGo=; b=sEKmNLWAyx48HvAqT
        Ss0Mb3HT5+R0vNtH4+N9joLnr+3tw7GFRFJHX3290nLC14FPTZ9lL7M8greiY2j+
        zWh0e6M1kwVPHKLQOZajYKJnHIHxjey7g38+l9DlTJC3t5P4k7Xm+6eh/v4jaaz2
        9CL+3EFl5l1YJBfFDktIdo4VamYxqKqdMW/q+6ZQy6lq4BAhooF5d0wkyoyahnM0
        rS5k1Lng7PGN6BYCkMzcszj8sgEP3dU/pEoc6/fw0yrspHsloj+ITc9XrPCOp0V6
        gHkhfai0evRoVNxFkAZxOtSBcvWByweP3uV8fWsdLzVTL/6yx5qjOFoL82f+OAov
        K9SBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=VCC4K9x1L+piLdGylx5VSb6j9aBuZqYFN90RmCaQe
        Go=; b=A+xZzKOWyCd51gjW6RrbQeLx28tMX3azdF+DZ3+yibbvXmfAwX3mo7Gfl
        dsam3XDkyEyBFJ5nEOMeJLgmy0lgjWKue4XX6LNwf1lpmZ5rH+67tKCBeTUsq3F0
        iHhjzAc/yu/NeqSnM/G6AT88pbAY8f5DjQ14uWgsQCdJSOwsYu3oxryOqm/36Y6+
        jWyohMXSf8khi/iM15lUaZrln070tQfhsGqefYK6XRFrtyTJQHRrHUkOGCkFGHnq
        5sV2d1tjJcTTojKSH449sFK9HKV0Uqr/Jz/5Rg6IrS7Z+eBdsROToG8CPY6dIiju
        N2TxMMM7gS6TVl5CFH35jeeQSieZg==
X-ME-Sender: <xms:pgP5YA_dUkO4RWZOVmqHrnCH-514lOd7oM1w03uZ18OGEFjRGp68Eg>
    <xme:pgP5YIu1rTCIwgLQOUGhRKwWPhW113XHcGz1ZnJRgTSP32CWCZxDwYVucarsz_cNQ
    uEDMurb6yHYQSryUw>
X-ME-Received: <xmr:pgP5YGCGlajFviHI3hsL_lEkP3pn4YFHTFNx5NyJHVDwH9PqklAyCmTnZN44uXjXmCnzM0op0WxohDlkhzpOSSbw10dMjjeXxDX_mvZbeJeYxDI1qNfBB3G6EA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdeliecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpeffiefgledvgfdtteeludevvefguddtiedutdevtedvhfffjeelhfeh
    teejtedvleenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhho
    lhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:pgP5YAfjx4O6wOw1mqlFjlXfEqDOlg4X9uGc1wTpXzxrq2odRHA_BQ>
    <xmx:pgP5YFO4y0oxmNIt8Uu7WsxLzmoMMq1ar4QOvFjHgkv-dE5Z5iyefg>
    <xmx:pgP5YKmpwkfgqV83TnoZo8md2caj_T0yi0H_KWAS3NKi5Rni0V9hSg>
    <xmx:pwP5YIrTx6FJ9su8nN_v0fDTGgc8LadDFL_0Gji8QW3Jdf3TavkoGQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 01:35:34 -0400 (EDT)
Subject: Re: [PATCH 02/54] ASoC: dt-bindings: Convert Bluetooth SCO Link
 binding to a schema
To:     Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-3-maxime@cerno.tech>
From:   Samuel Holland <samuel@sholland.org>
Message-ID: <e0ba4dab-abe9-9f4b-2795-e85041efa451@sholland.org>
Date:   Thu, 22 Jul 2021 00:35:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux ppc64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210721140424.725744-3-maxime@cerno.tech>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/21/21 9:03 AM, Maxime Ripard wrote:
> Bluetooth SCO Link are supported by Linux with a matching device tree
> binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> The value expected for #sound-dai-cells wasn't documented though, and
> the users were inconsistent. The example didn't list it, and across the
> 4 users we have in tree:
>   - 1 had a cells value of 1, but using only 0 as argument
>   - 1 had a cells value of 0,
>   - 2 didn't have this property at all, behaving as if it was 0,
> 
> It seems like the consensus seems to be that it should be 0, so let's
> enforce it.

The driver has two DAIs: "bt-sco-pcm" and "bt-sco-pcm-wb". If
#sound-dai-cells is 0, only the first DAI can be referenced from a
device tree. So to declare support for wideband PCM, or explicitly
declare a lack of support for it, #sound-dai-cells must be 1.

Regards,
Samuel

> Cc: alsa-devel@alsa-project.org
> Cc: devicetree@vger.kernel.org
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Samuel Holland <samuel@sholland.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/sound/bt-sco.txt      | 13 -------
>  .../bindings/sound/linux,bt-sco.yaml          | 34 +++++++++++++++++++
>  2 files changed, 34 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/bt-sco.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/bt-sco.txt b/Documentation/devicetree/bindings/sound/bt-sco.txt
> deleted file mode 100644
> index 641edf75e184..000000000000
> --- a/Documentation/devicetree/bindings/sound/bt-sco.txt
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -Bluetooth-SCO audio CODEC
> -
> -This device support generic Bluetooth SCO link.
> -
> -Required properties:
> -
> -  - compatible : "delta,dfbmcs320" or "linux,bt-sco"
> -
> -Example:
> -
> -codec: bt_sco {
> -	compatible = "delta,dfbmcs320";
> -};
> diff --git a/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml b/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
> new file mode 100644
> index 000000000000..334b508205cd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/linux,bt-sco.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Bluetooth SCO Audio Codec Device Tree Bindings
> +
> +maintainers:
> +  - Mark Brown <broonie@kernel.org>
> +
> +properties:
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - delta,dfbmcs320
> +      - linux,bt-sco
> +
> +required:
> +  - '#sound-dai-cells'
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    codec {
> +        #sound-dai-cells = <0>;
> +        compatible = "linux,bt-sco";
> +    };
> +
> +...
> 

