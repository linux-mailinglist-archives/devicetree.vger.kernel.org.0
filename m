Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 137EF365FDC
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 20:56:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233509AbhDTS5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 14:57:19 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:37728 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233092AbhDTS5T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 14:57:19 -0400
Received: by mail-oi1-f179.google.com with SMTP id k25so39988707oic.4
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 11:56:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kfEdsP7VJ9uETA9reqQ+u/WnsOOL4stsZUCK1ENhc+s=;
        b=OAlPsp9ipAaVdcsoC8b8BIuzdtWJRp8vCJkq0f+6iXQIfMIQK5LjPQtSDX95J7IFLN
         GqMZDjLn1AAp83pLIU+DhW2cyII5mfC66BNa8dxsEpo8p5m+1tFKiC0lY4SzJxmzdfue
         Zt58m86NggS1XKKE3RIh5cykFRxejtf5j8sN35cseBh1ss9PWVffH+Z1G7+19Hu2K3me
         nAS66MhbJk0dyBqjYVsf50846ts6fsLPWNdKmWtm1rmT0XjFB3XqpVZX3dfW4Q/O1F1i
         hbbqQ+JSjKbCDyC9ZRz6ZfGA8kv9jTR1b/0VcreIzK8evjqvHUv/FzOYHFY+okwk5JOf
         n+LA==
X-Gm-Message-State: AOAM532Au3tuF9dwJkQy3kwGI7M4x1qUpJ863udsHGSndPE3JvfGSbQg
        GKg/MM4GRbgHCtSKVa/sJw==
X-Google-Smtp-Source: ABdhPJyhge0joJ+/Co2f/SMQv2Pu0c6B1SYJblXNbNcObWdvq+mSApSjCf3j1/wJ0zfhLy5YAv4GqQ==
X-Received: by 2002:a05:6808:9a7:: with SMTP id e7mr3926558oig.105.1618945007542;
        Tue, 20 Apr 2021 11:56:47 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 2sm396426ooy.22.2021.04.20.11.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 11:56:46 -0700 (PDT)
Received: (nullmailer pid 3632453 invoked by uid 1000);
        Tue, 20 Apr 2021 18:56:45 -0000
Date:   Tue, 20 Apr 2021 13:56:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     Hauke Mehrtens <hauke@hauke-m.de>
Cc:     miquel.raynal@bootlin.com, rafal@milecki.pl, vigneshr@ti.com,
        devicetree@vger.kernel.org, musashino.open@gmail.com,
        richard@nod.at, linux-mtd@lists.infradead.org, robh+dt@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: brcm,trx: Add brcm,trx-magic
Message-ID: <20210420185645.GA3632403@robh.at.kernel.org>
References: <20210418214616.239574-1-hauke@hauke-m.de>
 <20210418214616.239574-2-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210418214616.239574-2-hauke@hauke-m.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 18 Apr 2021 23:46:14 +0200, Hauke Mehrtens wrote:
> This adds the description of an additional property which allows to
> specify a custom partition parser magic to detect a trx partition.
> Buffalo has multiple device which are using the trx format, but with
> different magic values.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  .../devicetree/bindings/mtd/partitions/brcm,trx.txt          | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
