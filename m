Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16C9B28CF2A
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 15:31:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727759AbgJMNbf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 09:31:35 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:46879 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727448AbgJMNbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 09:31:34 -0400
Received: by mail-oi1-f194.google.com with SMTP id s81so10086709oie.13
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 06:31:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=omxWJDLwDl9kDvJbxkrhDgT1o15P9mqxmUxctq+I87o=;
        b=TXGIqK3Osz0VT8jXL4U/9W2P29MRwuiz9T8JWifErbUaBVUSHk3weT04moAIrLTozw
         qNOUNw6Z3BvkpDzotNU2Gl6u36AxDYDtUz5HpL28atEm4dOxD1gLyWN1qEGHehXfJK1e
         EBPpfyRD7+9L6T0lkCTVGxGgzlMfzzdVx2p9qzBbZUp82Bq7niPbfeQCCgnrf3TwGJXK
         LCydaxgF4uK6TXUPaVBMOs2yt9LhBXdPppIAt0hR/KE1BUPcJ6HQ9eG/bz4mFosIWhqb
         3PfALMckczZYtjZ4C96Luweax/rBARpydn4wwr1GnYM93c8aRzg6VtkV5zbShIan/7h1
         K+pw==
X-Gm-Message-State: AOAM531beGE3FkgrRo+JZ9VBkwqUD4l0Tw1yZyNH9NPBjSEwQbTaN+cx
        /mjqGTEgPYkLN6rUK0Ku+ElhRg2sNXnM
X-Google-Smtp-Source: ABdhPJyviYBLZ5Uxz1mqtREZ61t7m3UYWJK6Qf1bR+yLrZRbsZfshT/ng+Gh5UV1dmGiw/WvPXC+jA==
X-Received: by 2002:aca:4d14:: with SMTP id a20mr12920586oib.46.1602595893958;
        Tue, 13 Oct 2020 06:31:33 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z25sm12172225ood.21.2020.10.13.06.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 06:31:33 -0700 (PDT)
Received: (nullmailer pid 3381770 invoked by uid 1000);
        Tue, 13 Oct 2020 13:31:32 -0000
Date:   Tue, 13 Oct 2020 08:31:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     leoyang.li@nxp.com, shawnguo@kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS
 definition
Message-ID: <20201013133132.GA3381736@bogus>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
 <20201007203936.23953-2-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007203936.23953-2-ioana.ciornei@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Oct 2020 23:39:26 +0300, Ioana Ciornei wrote:
> Add a documentation entry for the DTS bindings needed and supported by
> the dpaa2-mac driver.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v2:
>  - new patch
> Changes in v3:
>  - renamed dpmac@x into ethernet@x
>  - renamed the new documentation file to use the same name as the
>    compatible
>  - marked additionalProperties as false
>  - added a reference to ethernet-controller.yaml
> 
>  .../bindings/net/fsl,qoriq-mc-dpmac.yaml      | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
