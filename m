Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E08144EEF3
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 22:57:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbhKLWAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 17:00:49 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:39642 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232139AbhKLWAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 17:00:48 -0500
Received: by mail-oi1-f180.google.com with SMTP id bf8so20398114oib.6
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 13:57:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xccSVfJVrdrr8KimAN3EMNzjL3fPcR3SofzIz95+CP4=;
        b=BiIQRQ+T1/KMw0MO37tIs2UThnMF48wvGsE+Us34XtZtN6shkTOZY37iao2/7aIhRT
         haIox1d1/lFl5g851zKx1Hl/0Kwac9OPFAVSL/Zz5QoMYFymhyHsfYTlQM/tNppAFYRT
         BH/0nukmtMkkGvNQKBADfbYTwQUpwtO9K8nqrsRBvMjvcz/Sq5HGf/+ViwgRTRC6Iv84
         fsq3LTepTtzV3K9X1LQmlea5qOD6BnxIc0vFuIx0epRr+kS7Wa3Twk/CUwyyKR/X6L7a
         RFazzk1r+LbTN50fFXC/kPkTYYJQ1ve+gAci4JPzzGLOJux8hcti/uCvm8hBqKDTPP1R
         LIsQ==
X-Gm-Message-State: AOAM5324KphMr3PoyzN4vzQxBpdZO8u2o0cyMecDaY1CrdikPpsX2g6S
        gs+5BzDacpAoTdeZshBgaWO13Gk3yA==
X-Google-Smtp-Source: ABdhPJzXH2uXtlwTPVV2Dnd3/REyaabvQJmrcCmiIDT4uAxXHmANZrjgTnOCq8iJBXTHbKI27bKF8A==
X-Received: by 2002:a05:6808:179d:: with SMTP id bg29mr28294193oib.138.1636754277332;
        Fri, 12 Nov 2021 13:57:57 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id k14sm1442785otb.50.2021.11.12.13.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 13:57:56 -0800 (PST)
Received: (nullmailer pid 3444888 invoked by uid 1000);
        Fri, 12 Nov 2021 21:57:55 -0000
Date:   Fri, 12 Nov 2021 15:57:55 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: sound: tlv320adc3xxx: New codec
 driver
Message-ID: <YY7jY9+0n1RzdZ/1@robh.at.kernel.org>
References: <alpine.DEB.2.21.2111041421580.31205@lnxricardw1.se.axis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2111041421580.31205@lnxricardw1.se.axis.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 04 Nov 2021 14:25:31 +0100, Ricard Wanderlof wrote:
> 
> DT bindings for tlv320adc3xxx driver, currently supporting
> Texas Instruments TLV320ADC3001 and TLV320ADC3101 audio ADCs.
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
