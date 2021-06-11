Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1EC03A4815
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 19:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhFKRul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 13:50:41 -0400
Received: from mail-il1-f177.google.com ([209.85.166.177]:43863 "EHLO
        mail-il1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhFKRul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 13:50:41 -0400
Received: by mail-il1-f177.google.com with SMTP id x18so5922039ila.10
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 10:48:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7VRKkg+IWhNKzYiVbA9oJxNRuL33AhF4HzAy8pw4zyk=;
        b=ONU22/TCVq0Dief9HhS71itpmlU0KL85n08HmHqV3HBHqF3FjUY9lBMHW4OHAZJ2bO
         3KQ7vi2I7TJzQTRjhyfORbLPQW7db/ui1WR+Hco85OnqJaZkHEYwPV9vd8AocdIAQue/
         Wakbw37HLiRgFRLgRvHveBTr7XaGjHMA/bLy3TKNs6bh1o0LrHtFm4wNYGskKucG9BAi
         Na2v0TJz/Ph+1zLGrcMg/M2tY1GVTp/CmLh5F6OfS0rIGZ+whM8vH/ZLSOfPEsiNw/p4
         duHiGOKZaoEQqtGP1ReaITRnd+q1P4aEX4zSGHyHUAWv6P328zN0W7wiqgC0hhM68pEn
         N8mw==
X-Gm-Message-State: AOAM5337xlV06uyAKLliUaHvV3JcIWBPUcmBSRV4cZW3PemxZzf+KDZ2
        x7sO68mb1gvgjnsb7edLEQ==
X-Google-Smtp-Source: ABdhPJxul/2vJdNS8fmSXRxb2X29msVliVTOrYEdyYoBvZ3AhICGmrBmzsscBCu8Z1TS9VPRV66jgw==
X-Received: by 2002:a92:a302:: with SMTP id a2mr4052251ili.184.1623433723085;
        Fri, 11 Jun 2021 10:48:43 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id p10sm3997411ile.35.2021.06.11.10.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 10:48:42 -0700 (PDT)
Received: (nullmailer pid 1197960 invoked by uid 1000);
        Fri, 11 Jun 2021 17:48:41 -0000
Date:   Fri, 11 Jun 2021 11:48:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] dt-bindings: mtd: Convert ti,am654-hbmc.txt to YAML
 schema
Message-ID: <20210611174841.GA1194909@robh.at.kernel.org>
References: <20210611053533.16701-1-vigneshr@ti.com>
 <20210611053533.16701-3-vigneshr@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210611053533.16701-3-vigneshr@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 11, 2021 at 11:05:33AM +0530, Vignesh Raghavendra wrote:
> Convert ti,am654-hbmc.txt to YAML schema for better checks and
> validations of DT.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 --------------
>  .../bindings/mtd/ti,am654-hbmc.yaml           | 69 +++++++++++++++++++
>  2 files changed, 69 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
