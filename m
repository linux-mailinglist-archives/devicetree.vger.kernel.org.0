Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D311584ED1
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 16:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729808AbfHGOef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 10:34:35 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:33559 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726773AbfHGOee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 10:34:34 -0400
X-Originating-IP: 88.168.111.231
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net [88.168.111.231])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4B53F240002;
        Wed,  7 Aug 2019 14:34:32 +0000 (UTC)
Date:   Wed, 7 Aug 2019 16:34:31 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        jassisinghbrar@gmail.com
Subject: Re: [RFCv2 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Message-ID: <20190807143431.6w6dg44mjiwtffi2@flea>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
 <20190805120320.32282-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190805120320.32282-2-narmstrong@baylibre.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 05, 2019 at 02:03:12PM +0200, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic MHU controller over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 53 +++++++++++++++++++
>  .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
>  2 files changed, 53 insertions(+), 34 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt
>
> diff --git a/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
> new file mode 100644
> index 000000000000..2536a0082cff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/mailbox/amlogic,meson-gxbb-mhu.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson Message-Handling-Unit Controller
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +description: |
> +  The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
> +  that has 3 independent channels/links to communicate with remote processor(s).
> +  MHU links are hardwired on a platform. A link raises interrupt for any
> +  received data. However, there is no specified way of knowing if the sent
> +  data has been read by the remote. This driver assumes the sender polls
> +  STAT register and the remote clears it after having read the data.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-gxbb-mhu
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 3
> +    maxItems: 3

You don't need to specify both here. If one is missing, the tools will
fill it automatically with the other's value.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
