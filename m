Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB52E399321
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 21:03:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbhFBTFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 15:05:25 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:43613 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229817AbhFBTFM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 15:05:12 -0400
Received: by mail-oi1-f171.google.com with SMTP id x196so3288457oif.10
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 12:03:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=q17eL5YmT79ekFfojz5w3WA9UbA0MNKtQxnngQaTc6Y=;
        b=bvDBSs1Yeyv6MV15NMIY2c/zqFyvKMwhbv8xdk5FbOs/+ZFNaKk/lALWdnDlGwD9Z+
         KYcb4+cK0W56k6ai6RLUbmOJvrAUL1tWagM6qkqeyJvmTMZSQACercj7Msl1f5IbI580
         tw2v5e0VY0GGUYjYZUpomGeexZlM9zJV1/tPDL8/8Ned2EuplrO5cLL3GmZaAf1iE2RQ
         AVmk6NUeU3K0ODmgZSAeGKdcgZ9xRb3xnZS18d9JbMLwbcYXXe0i0H12HTgyPe4rEtWC
         k8hwGLq1ktcWvNo1l3Cb14ctH4buMdvU48y44VBF+dtMaXnqdgm+nfK/OqYF3Z6kJ1Fr
         Xrrg==
X-Gm-Message-State: AOAM530AeAnZOtTyARbnzUQm91nCLmOCuPpIBD9LxU3lOiPF1cOf9w+V
        HxpIzKnvw/GiyiiJvXdo3AXhuH0VRg==
X-Google-Smtp-Source: ABdhPJyDoY+2F4WJWls7y8gOmFen23vGi4U82zvY/PHUEkQtKqon1KLd9UFxig5VHQ7pbN2GlLlp3w==
X-Received: by 2002:a05:6808:f94:: with SMTP id o20mr22701255oiw.121.1622660604216;
        Wed, 02 Jun 2021 12:03:24 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l20sm149691oop.3.2021.06.02.12.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 12:03:23 -0700 (PDT)
Received: (nullmailer pid 3787533 invoked by uid 1000);
        Wed, 02 Jun 2021 19:03:21 -0000
Date:   Wed, 2 Jun 2021 14:03:21 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: fsl: add MNT Reform2 board
Message-ID: <20210602190321.GA3787504@robh.at.kernel.org>
References: <20210524124536.27854-1-dev@lynxeye.de>
 <20210524124536.27854-3-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210524124536.27854-3-dev@lynxeye.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 May 2021 14:45:35 +0200, Lucas Stach wrote:
> Add compatible for the MNT Reform2 laptop board.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
