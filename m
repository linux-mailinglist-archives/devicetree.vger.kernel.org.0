Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 356F1477D89
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 21:26:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235748AbhLPU0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 15:26:37 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:40579 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235744AbhLPU0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 15:26:36 -0500
Received: by mail-oi1-f169.google.com with SMTP id bk14so556829oib.7
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 12:26:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VAHsOmoKZyoBT7TuowZZp3s93ad+PpY4Cw++GIrZPSI=;
        b=3VL6cRQ95N7Ld1cIsqqwBi7xyq3kJKNFJSorC8+SfBwXvjkUpekY+SP9uC0Qv0f9mb
         h+/Wd0KLgvi1GF2dT70Mye5cBjne1aVHj0mkWyt5t5HDzXdBnYxtfqwwp8dfUeM6iQWK
         x1S7Bd8uiQBLvZxauQnr+ZyCYOWiITuERtXPbNkHd18mmWZfoqLS8zNq/rniGizMOx/E
         oa8mRbVqWDIrD6Dg9kr/4LAmqcsOwuLfGlsVp73q6xnzxcjczx8oajoR1vrzVFBfxpWb
         s2q9GKG9LtiXlbCzA4Ow9t06NvwpI/sxvoKuQFYzjNN3QTgG8yQwdrHYqE/ctm6iYep6
         rPjg==
X-Gm-Message-State: AOAM530R9znIkVe/AVWMcttPxzg+By7rKKAhjXRzS/R8IRXGraGSjUrb
        8L9UvcL8IlYz/l9J4DLg2w==
X-Google-Smtp-Source: ABdhPJwhKc3yi9lCRkn2unz0i6KwmvfrqsBUjOdnbC8mOswIYWCG0PjgSnsyarL7pxdWm3rertkJoQ==
X-Received: by 2002:a05:6808:aa7:: with SMTP id r7mr5655925oij.120.1639686396316;
        Thu, 16 Dec 2021 12:26:36 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w71sm1135988oiw.6.2021.12.16.12.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 12:26:35 -0800 (PST)
Received: (nullmailer pid 698243 invoked by uid 1000);
        Thu, 16 Dec 2021 20:26:34 -0000
Date:   Thu, 16 Dec 2021 14:26:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>
Cc:     Mark Brown <broonie@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel <alsa-devel@alsa-project.org>
Subject: Re: [RESEND, PATCH v7 1/2] dt-bindings: sound: tlv320adc3xxx: New
 codec driver
Message-ID: <Ybug+nar13glk69Y@robh.at.kernel.org>
References: <alpine.DEB.2.21.2112151806100.27889@lap5cg0092dnk.se.axis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2112151806100.27889@lap5cg0092dnk.se.axis.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Dec 2021 18:07:37 +0100, Ricard Wanderlof wrote:
> 
> DT bindings for Texas Instruments TLV320ADC3001 and TLV320ADC3101
> audio ADCs.
> 
> Signed-off-by: Ricard Wanderlof <ricardw@axis.com>
> ---
>  .../bindings/sound/ti,tlv320adc3xxx.yaml      | 137 ++++++++++++++++++
>  include/dt-bindings/sound/tlv320adc3xxx.h     |  28 ++++
>  2 files changed, 165 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
>  create mode 100644 include/dt-bindings/sound/tlv320adc3xxx.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>
