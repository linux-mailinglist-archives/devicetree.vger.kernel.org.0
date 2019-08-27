Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 128329F171
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 19:23:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbfH0RXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 13:23:23 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:44258 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727057AbfH0RXX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 13:23:23 -0400
Received: by mail-ot1-f65.google.com with SMTP id w4so19395647ote.11
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 10:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=k0t3NiRYm9OpCPktFCGeL+MYN/Ce727JCb94DDXrktQ=;
        b=Y1c8KaUkxxaBPNDKLFsVjYxXqQOedrHQEgDFCWI1W5DuhtMvsPk5QXm7zUA5ks714k
         a0SGkWAg7cgjcmFYbp41m4varI3yH/PpKi5b8ZTCVxukScsLRfRsV8ILmOfIjFBwFZOS
         PFo+p4Nm25AGT9tbv1bKvzoK5A8a1AK4qt6eFmCcX/oZIfEc6UerIJY45n5QuFD6NO68
         MZeKqXBgFIWJMmmAzFY3sNGjeLrxGVRjy2esJHYxHTsTN9e/wlf9horG/2soLnAjjKai
         YR4ynFPCEbMptRDwn2etxD5kkcWCtnSPE2PBNv0gSsMvLJnVS0gTyTMxpZ17nTrleEj7
         qJjA==
X-Gm-Message-State: APjAAAXNCoV6P4PVF9q4klq3Nvx8rLp7bZLBGKKh4lmZaiZrMqBTqE/8
        YxKO57hMEJenviITXp/FbQ==
X-Google-Smtp-Source: APXvYqx3UzCCfd0mAMrprSeLiog2mYwOCvZnecPxIgq3vWxWzICLXleVMIMivZUKp56Vu+x6cRPZ2g==
X-Received: by 2002:a9d:5601:: with SMTP id e1mr10639521oti.370.1566926602008;
        Tue, 27 Aug 2019 10:23:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n32sm4782749otn.61.2019.08.27.10.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 10:23:21 -0700 (PDT)
Date:   Tue, 27 Aug 2019 12:23:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
        jason@lakedaemon.net, maz@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: irq: Convert Allwinner IRQ
 Controller to a schema
Message-ID: <20190827172320.GA12595@bogus>
References: <20190821082138.11049-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190821082138.11049-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Aug 2019 10:21:37 +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner SoCs have an interrupt controller supported in Linux, with a
> matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> ---
> 
> Changes from v1:
>   - Remove Fixme and add additionalProperties to false
>   - Add unit address for the example
> ---
>  .../allwinner,sun4i-a10-ic.yaml               | 47 +++++++++++++++++++
>  .../allwinner,sun4i-ic.txt                    | 20 --------
>  2 files changed, 47 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
> 

Applied, thanks.

Rob
