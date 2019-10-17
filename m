Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70765DB26D
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 18:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392993AbfJQQef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 12:34:35 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:40326 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730640AbfJQQef (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 12:34:35 -0400
Received: by mail-ot1-f68.google.com with SMTP id y39so2435112ota.7
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 09:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=C3mMcajmmWiTF2tnnxoirKHCmnTAKZDTtWXx5ZDHeWs=;
        b=uGD0tTlFsg4Y/czrpov/h76veh7yF6RUJ1suwAxf+IOoHGpXg7O4S6+ogPQgWO4RpF
         spkuy3QkYK22JFjy0bIliHoNlwfTguUCEr3bN5aP2PGYgEk1TjCSYhuPgWULdoODFsWz
         f9fgAYUUhn3Di+fWidQaDvsjT1Mm/WNAlZWw7Gc7Tfw5kFyvBJl2JWwqpMnnQZsv+Vg+
         z8P7DzLaFiPCKRx8rnBsZo7lcEXPDibkKWaZzmhlGIcRu+lOsA5O3dhDFqyBFws4dGIR
         nne8w9EEsy8tebJXjF1BNepFXTM5bL8Ogs+RfAjIVYZ3MJNoWlm+N0RR57QeYKTlu9Lj
         PvCA==
X-Gm-Message-State: APjAAAXaChUcPz+CLFEyuSov/LOYoYHPk8dLXDXWPR62UbEsoEYHCT31
        EnA0G0ehzbLjvRDlgyqjwQ==
X-Google-Smtp-Source: APXvYqxmXr4i5Zk+4RgsYpkljl8yHKw0u/wDt5mYRIh6dw01K8bE2nEDXt13Ws7kQI7FRmola1U7ow==
X-Received: by 2002:a9d:6a93:: with SMTP id l19mr3934654otq.196.1571330072588;
        Thu, 17 Oct 2019 09:34:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l30sm711247otl.74.2019.10.17.09.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 09:34:31 -0700 (PDT)
Date:   Thu, 17 Oct 2019 11:34:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     lgirdwood@gmail.com, broonie@kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3] ASoC: dt-bindings: Convert Allwinner A10 codec to a
 schema
Message-ID: <20191017163430.GA18716@bogus>
References: <20191016104355.65169-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191016104355.65169-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Oct 2019 12:43:55 +0200, Maxime Ripard wrote:
> The Allwinner SoCs have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> 
> ---
> 
> Changes from v2:
>   - Change the audio-routing values to an enum, and enforce boundaries on
>     the size
>   - Add restrictions to the possible values of audio-routing
> 
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun4i-a10-codec.yaml      | 267 ++++++++++++++++++
>  .../devicetree/bindings/sound/sun4i-codec.txt |  94 ------
>  2 files changed, 267 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
