Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C793540EBB3
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 22:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237562AbhIPUbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 16:31:01 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:34551 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbhIPUbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 16:31:01 -0400
Received: by mail-oi1-f172.google.com with SMTP id p2so10820842oif.1
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 13:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m71PF4TY4Qs5jvqdlBUKjt+as1k3HqgXBJvRfoZhrW4=;
        b=DgtfhOrRfKuZHW90XhkC7VEXuB0crNAarEjxfKONc7JJphXyZSM2FIXGiPugR4FKUo
         1K3gD5C9Kq3bpYRBCTpv4lm7M2K+2mcoHUsVRd000wasewlZXfgW/5xOiDV1b2u7zbDy
         wZkpPel+EsSxvcXxcm5FeRAnsCVlsn9mbvntnqERGyTDvq3H6deJQtJrHdeIw7Xhdxad
         QRDheKxBsxQ5db7Apj2bzj3QKL1K0MWPu4e+kCGw3NCsCWTKp8eDzWx+aEzjAy0aMOl3
         rvDyaoXFDpV9UIzXZjt945xXNzWeIobGprPwF/P6GUWdU3FCnax5HXg3DSF4guufnNtd
         wegw==
X-Gm-Message-State: AOAM532PW1j5nsi1fjppAW9XGW/lA0MruUzM5lRXzJi6snLH3ixDKZ/o
        wz5xWoVOFPJzXZE9tHrTdA==
X-Google-Smtp-Source: ABdhPJydwOD5f69YFpKkeMkt6mb/61JRDkZhnWLEb0fPGLFcaOT/B+Bel16RDh+y6neYsmqUSYfqCg==
X-Received: by 2002:aca:2b0e:: with SMTP id i14mr10787937oik.16.1631824180042;
        Thu, 16 Sep 2021 13:29:40 -0700 (PDT)
Received: from robh.at.kernel.org (107-211-252-53.lightspeed.cicril.sbcglobal.net. [107.211.252.53])
        by smtp.gmail.com with ESMTPSA id r13sm969347oti.80.2021.09.16.13.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 13:29:39 -0700 (PDT)
Received: (nullmailer pid 1448638 invoked by uid 1000);
        Thu, 16 Sep 2021 20:29:36 -0000
Date:   Thu, 16 Sep 2021 15:29:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>, patchwork-lst@pengutronix.de,
        Adam Ford <aford173@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH v4 12/18] dt-bindings: power: imx8mm: add defines for
 DISP blk-ctrl domains
Message-ID: <YUOpMHkdiQnd236K@robh.at.kernel.org>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-13-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210910202640.980366-13-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Sep 2021 22:26:34 +0200, Lucas Stach wrote:
> This adds the defines for the power domains provided by the DISP
> blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v4: Change naming to be consistent with the VPUBLK domains.
> ---
>  include/dt-bindings/power/imx8mm-power.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
