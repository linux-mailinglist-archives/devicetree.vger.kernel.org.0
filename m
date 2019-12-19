Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4DFCA1271C6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2019 00:47:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727006AbfLSXrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 18:47:51 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:46021 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726992AbfLSXrv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 18:47:51 -0500
Received: by mail-ot1-f65.google.com with SMTP id 59so9343912otp.12
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 15:47:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=18UcAb5rbPMss22Ho10Y3g3P3ch3yNs8mlHDvPuR4oU=;
        b=hRfyZp/QcXws+gKOam5Z1ir3GznmbaC6cyhHsjkHoyMREiajaKjyICXwwVBT+picJD
         o1keSFvaqPTWrEuyDmtwEGxF4Xx4cZJUG7b20OtVcN4NXeht03CreSfCKDb6PQ0xPHNR
         ioPFiYlWqLxYIuYE1dk/SaNNmnn4F8EjII0vqrNgYfe//YsExJn8E3tpvxe2S7fEoSpL
         I+4C7PRJSJw97OXibmbC70O89ekfZeZL0xToNvSUAP2ZD9M6hcazvHlWuPHRS0HUpMV4
         IYnOkg6ugCe5pJcRPRKHdhHPvsE6TT+B12AsuY2V4O79o3Svdyvsz3zGcyNRDLkGobSC
         Z+ew==
X-Gm-Message-State: APjAAAV3a8rl3fSEZV5c8quJ9LrCUwEq1P3zbLtNyXfMV4GBEDj5jTwX
        EQOhJNGVjh7PMAO6N93nRQ==
X-Google-Smtp-Source: APXvYqwn2zt/hEoslzgFitK7qNptvvyashP6FwXW1JD5npPwJGdehqnhGdzJkgQ1XfMc2/ZX5+wl9Q==
X-Received: by 2002:a9d:6b17:: with SMTP id g23mr11137126otp.265.1576799270756;
        Thu, 19 Dec 2019 15:47:50 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net. [184.205.174.147])
        by smtp.gmail.com with ESMTPSA id n22sm2712400otj.36.2019.12.19.15.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 15:47:50 -0800 (PST)
Date:   Thu, 19 Dec 2019 17:47:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 01/12] dt-bindings: display: rockchip-lvds: Declare PX30
 compatible
Message-ID: <20191219234747.GA30229@bogus>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191213181051.25983-2-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Dec 2019 19:10:40 +0100, Miquel Raynal wrote:
> Document the PX30 LVDS compatible.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-lvds.txt       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
